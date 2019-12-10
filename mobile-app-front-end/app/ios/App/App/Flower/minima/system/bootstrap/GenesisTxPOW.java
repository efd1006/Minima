package Flower.minima.system.bootstrap;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;

import Flower.minima.objects.Transaction;
import Flower.minima.objects.TxPOW;
import Flower.minima.objects.Witness;
import Flower.minima.objects.base.MiniData;
import Flower.minima.objects.base.MiniData32;
import Flower.minima.objects.base.MiniNumber;

public class GenesisTxPOW extends TxPOW{
	
	public static MiniData32 GENESIS_INPUT = new MiniData32("0xFFEEDDCCBBAA998877665544332211");
	
	public GenesisTxPOW() {
		super();
		
		//no GENESIS for now
		setTxDifficulty(0);
		
		//Pre-calculated
		setNonce(new MiniNumber("256"));
		 
		//Block details
		setTimeMilli(new MiniNumber(""+System.currentTimeMillis()));
		setBlockNumber(new MiniNumber("0"));
		setBlockDifficulty(0);
		setParent(new MiniData32());
		
		//Set Transaction and Witness..
		Transaction trans = new Transaction();
		Witness wit       = new Witness();

//		Coin in = new Coin(GENESIS_INPUT,new Address("RETURN TRUE"),new MiniNumber(50));
//		trans.addInput(in);
//		wit.addParam("");
//		
//		//And send to the new address
//		Address outaddr = new Address(new MiniData32(MiniData.getRandomData(32).getData()));
//		Coin out = new Coin(Coin.COINID_OUTPUT,outaddr,new MiniNumber(50));
//		trans .addOutput(out);
		
		//Set transaction
		setTransaction(trans);
		setWitness(wit);
		
//		//Calculate the Ouput COINID.. for the MMR..
//		MiniData32 transhash = Crypto.getInstance().hashObject(trans);
//				
//		//Now calculate the CoinID / TokenID
//		MiniData32 coinid    = Crypto.getInstance().hashObjects(transhash, new MiniByte(0));
//		
//		//Calcualte the MMR..
//		MMR mmr = new MMR();
//		
//		//Add that CoinID.. There are no other txns in the genesis TXPOW
//		mmr.insertData(coinid, MiniNumber.ZERO);
//		
//		//Now get the Peaks..
//		MMRState mmrstate = mmr.getMMRState();
//		
//		//Now add to the TXPOW..
//		setMMRState(mmrstate);
		
		mSuperParents[0] = new MiniData32(MiniData.getRandomData(32).getData());
		
		//Set the TXPOW
		calculateTXPOWID();
		
		//Hard code it as a block..
		_mIsBlockPOW = true;
		_mIsTxnPOW   = false;
	}
	
	
	public static void main(String[] zArgs) {
		GenesisTxPOW gen = new GenesisTxPOW();
		
		try {
			System.out.println("GEN 1 : "+gen);
			
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			DataOutputStream dos = new DataOutputStream(baos);
			
			gen.writeDataStream(dos);
			
			dos.flush();
			
			byte[] data = baos.toByteArray();
			
			ByteArrayInputStream bais = new ByteArrayInputStream(data);
			DataInputStream dis = new DataInputStream(bais);
			
			TxPOW tp = new TxPOW();
			tp.readDataStream(dis);
			
			System.out.println("GEN 2 : "+tp);
			
		}catch(Exception exc) {
			exc.printStackTrace();
		}
	}

}
