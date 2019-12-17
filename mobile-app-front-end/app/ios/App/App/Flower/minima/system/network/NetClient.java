package Flower.minima.system.network;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Random;

import Flower.json.simple.JSONObject;
import Flower.minima.objects.TxPOW;
import Flower.minima.objects.base.MiniByte;
import Flower.minima.system.Main;
import Flower.minima.system.brains.ConsensusHandler;
import Flower.minima.system.brains.ConsensusNet;
import Flower.minima.utils.SimpleLogger;
import Flower.minima.utils.Streamable;
import Flower.minima.utils.messages.Message;
import Flower.minima.utils.messages.MessageProcessor;

public class NetClient extends MessageProcessor {
		
	/**
	 * NetClient Messages
	 */
	public static final String NETCLIENT_STARTUP 		= "NETCLIENT_STARTUP";
	public static final String NETCLIENT_SHUTDOWN 		= "NETCLIENT_SHUTDOWN";
	
	public static final String NETCLIENT_SENDOBJECT 	= "NETCLIENT_SENDOBJECT";
	public static final String NETCLIENT_SENDTXPOW 	    = "NETCLIENT_SENDTXPOW";
		
	//Main Network Handler
	NetworkHandler mNetworkMain;
	
	//The socket
	Socket mSocket;
	
	//Output streams
	DataOutputStream mOutput;
	
	Thread 				mInputThread;
	NetClientReader		mInputReader;
	
	//The UID
	String mUID;
	
	//The Host and Port
	String mHost;
	int    mPort;
	
	/**
	 * If the connection breaks do we attempt to reconnect
	 */
	boolean mReconnect     = false;
	int mReconnectAttempts = 0;
	
	//Did we start up..
	boolean mStartOK;
	
	/**
	 * Constructor
	 * 
	 * @param zSock
	 * @param zNetwork
	 * @throws IOException 
	 * @throws UnknownHostException 
	 */
	//public NetClient(Socket zSock, NetworkHandler zNetwork) {
	public NetClient(String zHost, int zPort, NetworkHandler zNetwork) {
		super("NETCLIENT");
		
		//Store
		mHost = zHost;
		mPort = zPort;
		
		//We will attempt to reconnect if this connection breaks..
		mReconnect  = true;
		mReconnectAttempts = 0;
		
		mNetworkMain 	= zNetwork;
		
		//Create a UID
		mUID = ""+Math.abs(new Random().nextInt());
				
		//Store
		try {
			mSocket = new Socket(zHost, zPort);
		}catch (Exception e) {
			SimpleLogger.log("Error @ connection start : "+zHost+":"+zPort);
			
			// Error - let the handler know
//			mNetworkMain.PostMessage(new Message(NetworkHandler.NETWORK_CLIENTERROR).addObject("client", this));
			
			return;
		}	
		
		//Start the system..
		PostMessage(NETCLIENT_STARTUP);
	}
	
	public NetClient(Socket zSock, NetworkHandler zNetwork) {
			super("NETCLIENT");
			
			//This is an incoming connection.. no reconnect attempt
			mReconnect = false;
			
			//Store
			mSocket 		= zSock;
			
			//Store
			mHost = mSocket.getInetAddress().getHostAddress();
			mPort = mSocket.getPort();
			
			//Main network Handler
			mNetworkMain 	= zNetwork;
					
			//Create a UID
			mUID = ""+Math.abs(new Random().nextInt());
			
			//Start the system..
			PostMessage(NETCLIENT_STARTUP);
		}
	
	public Socket getSocket() {
		return mSocket;
	}
	
	public boolean isReconnect() {
		return mReconnect;
	}
	
	public void noReconnect() {
		mReconnect=false;
	}
	
	public String getHost() {
		return mHost;
	}
	
	public int getPort() {
		return mPort;
	}
	
	public String getUID() {
		return mUID;
	}
	
	public NetworkHandler getNetworkHandler() {
		return mNetworkMain;
	}
	
	private Main getMain() {
		return mNetworkMain.getMainHandler();
	}
	
	public JSONObject toJSON() {
		JSONObject ret = new JSONObject();
		
		ret.put("uid", mUID);
		ret.put("host", getHost());
		ret.put("port", getPort());
		
		return ret;
	}
	
	@Override
	public String toString() {
		return toJSON().toString();
	}
	
	@Override
	protected void processMessage(Message zMessage) throws Exception {
		
		if(zMessage.isMessageType(NETCLIENT_STARTUP)) {
			
			//Create the streams on this thread
			mOutput 	= new DataOutputStream(mSocket.getOutputStream());
			
			//Start reading
			mInputReader = new NetClientReader(this);
			mInputThread = new Thread(mInputReader);
			mInputThread.start();
			
			//First thing to do..
			Message init = new Message(ConsensusNet.CONSENSUS_NET_INITIALISE);
			init.addObject("netclient", this);
			getMain().getConsensusHandler().PostMessage(init);
		
		}else if(zMessage.isMessageType(NETCLIENT_SENDTXPOW)) {
			//get the TxPOW
			TxPOW txpow = (TxPOW)zMessage.getObject("txpow");
			
			//What Type..
			NetClientReader.NETMESSAGE_TXPOW.writeDataStream(mOutput);
	
			//First the TXPOW
			txpow.writeDataStream(mOutput);
			
			//Then all the signatures..
//			txpow.getWitness().writeSigs(mOutput);
			
		}else if(zMessage.isMessageType(NETCLIENT_SENDOBJECT)) {
			//What type of object is this..
			MiniByte type = (MiniByte) zMessage.getObject("type");
			
			//get the Streamable Object
			Streamable obj = null;
			if(zMessage.exists("object")) {
				obj = (Streamable) zMessage.getObject("object");
			}
			
			//And send it..
			sendMessage(type, obj);
	
		}else if(zMessage.isMessageType(NETCLIENT_SHUTDOWN)) {
			
			try {mOutput.close();}catch(Exception exc) {}
			try {mInputThread.interrupt();}catch(Exception exc) {}
			
			stopMessageProcessor();
		}
	}
	
	/**
	 * Send a message down the network
	 */
	protected void sendMessage(Streamable zMessageType, Streamable zMessage) {
		//Send it..
		try {
			//First write the Message type..
			zMessageType.writeDataStream(mOutput);
			
			if(zMessage != null) {
				//And now write the message
				zMessage.writeDataStream(mOutput);
			}
			
			//Send..
			mOutput.flush();
			
		}catch(Exception ec) {
			//Show..
			SimpleLogger.log("Error sending message : "+zMessage+" "+ec);
//			ec.printStackTrace();
			
			//Tell the network Handler
			mNetworkMain.PostMessage(new Message(NetworkHandler.NETWORK_CLIENTERROR).addObject("client", this));
		}
	}	
}
