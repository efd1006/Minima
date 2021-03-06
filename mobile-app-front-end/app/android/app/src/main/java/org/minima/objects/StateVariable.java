package org.minima.objects;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

import org.minima.objects.base.MiniByte;
import org.minima.objects.base.MiniData;
import org.minima.objects.base.MiniScript;
import org.minima.utils.Streamable;
import org.minima.utils.json.JSONObject;

public class StateVariable implements Streamable {

	/**
	 * Byte for the port.. 0-255
	 * @param zData
	 */
	MiniByte mPort;
	
	/**
	 * The data can represent any of the value types used in script..
	 * HEX, Number or Script
	 */
	MiniScript mData; 
	
	/**
	 * Port and Data..
	 * 
	 * @param zPort
	 * @param zData
	 */
	public StateVariable(int zPort, String zData) {
		mPort	  = new MiniByte(zPort);
		
		//Cannot add Mx addresses.. only HEX addresses in SCRIPT
		if(zData.startsWith("Mx")) {
			//Convert to HEX
			mData = new MiniScript(Address.convertMinimaAddress(zData).to0xString());
		}else {
			mData = new MiniScript(zData);	
		}
	}
	
	private StateVariable() {}
	
	public void resetData(MiniScript zData) {
		mData = zData;
	}
	
	public MiniScript getData() {
		return mData;
	}
	
	public int getPort() {
		return mPort.getValue();
	}
	
	public JSONObject toJSON() {
		JSONObject ret = new JSONObject();
		ret.put("port", mPort.toString());
		ret.put("data", mData.toString());
		return ret;
	}
	
	@Override
	public String toString(){
		return toJSON().toString();
	}

	@Override
	public void writeDataStream(DataOutputStream zOut) throws IOException {
		mPort.writeDataStream(zOut);
		
		//Optimisation.. if is DATA
		if(mData.toString().startsWith("0x")) {
			//It's DATA.. might as well send it as that - half the size.
			MiniData data = new MiniData(mData.toString());
			
			MiniByte.TRUE.writeDataStream(zOut);
			data.writeDataStream(zOut);
		}else {
			//Just send it as normal.. number or script
			MiniByte.FALSE.writeDataStream(zOut);
			mData.writeDataStream(zOut);	
		}
	}

	@Override
	public void readDataStream(DataInputStream zIn) throws IOException {
		mPort = MiniByte.ReadFromStream(zIn);
		
		//Was it sent as DATA or SCRIPT
		MiniByte isdata = MiniByte.ReadFromStream(zIn);
		if(isdata.isTrue()) {
			MiniData data = MiniData.ReadFromStream(zIn);
			mData = new MiniScript(data.to0xString());
		}else {
			mData = MiniScript.ReadFromStream(zIn);	
		}
	}
	
	public static StateVariable ReadFromStream(DataInputStream zIn){
		StateVariable statevar = new StateVariable();
		
		try {
			statevar.readDataStream(zIn);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
		return statevar;
	}
}
