package org.minima.database.mmr;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.minima.objects.Coin;
import org.minima.objects.StateVariable;
import org.minima.objects.base.MiniByte;
import org.minima.objects.base.MiniData;
import org.minima.objects.base.MiniData32;
import org.minima.objects.base.MiniNumber;
import org.minima.utils.Crypto;
import org.minima.utils.Streamable;

public class MMRData implements Streamable{
	
	/**
	 * Spent or Unspent
	 */
	MiniByte mSpent;

	/**
	 * The Coin
	 */
	Coin mCoin;
	
	/**
	 * The Blocknumber that this output was created in - OP_CSV 
	 */
	MiniNumber mBlockNumber;
	
	/**
	 * The State variables in the transaction this coin was created
	 */
	ArrayList<StateVariable> mPrevState = new ArrayList<>();
	
	/**
	 * The final Hash this represents in the MMR tree
	 */
	MiniData32 mFinalHash;
	
	/**
	 * Is this a HASH only affair
	 */
	boolean mHashOnly;
	
	/**
	 * Internal
	 */
	private MMRData() {}
	
	/**
	 * For Internal Nodes.. just the hash
	 * 
	 * @param zData
	 */
	public MMRData(MiniData32 zData) {
		//Only the final hash
		mFinalHash = zData;
		
		//It is ONLY the HASH
		mHashOnly  = true;
	}
	
	/**
	 * Create an Unspent MMRDATA coin from a coin
	 * @param zOutput
	 */
	public MMRData(MiniByte zSpent, Coin zCoin, MiniNumber zInBlock, ArrayList<StateVariable> zState) {
		mSpent 		 = zSpent;
		mCoin 		 = zCoin;
		mBlockNumber = zInBlock;
		
		//Copy the state
		for(StateVariable sv : zState) {
			mPrevState.add(sv);
		}
		
		//Full  Data
		mHashOnly = false;
		
		//Calculate the hash
		calculateDataHash();
	}
	
	private void calculateDataHash() {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(baos);
		
		try {
			//Write out the data..
			writeDataStream(dos);
			
			//Flush
			dos.flush();
			baos.flush();
			
			//Get the data
			MiniData data = new MiniData( baos.toByteArray() );
			
			//And Hash IT..
			mFinalHash = Crypto.getInstance().hashObject(data);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public MiniData32 getFinalHash() {
		return mFinalHash;
	}
	
	//Must be NOT hashonly
	public boolean isSpent() {
		return mSpent.isEqual(MiniByte.TRUE);
	}
	
	public Coin getCoin() {
		return mCoin;
	}
	
	public ArrayList<StateVariable> getPrevState() {
		return mPrevState;
	}
	
	public MiniNumber getInBlock() {
		return mBlockNumber;
	}
	
	public boolean isHashOnly() {
		return mHashOnly;
	}
	
	public JSONObject toJSON() {
		JSONObject obj = new JSONObject();
		
		obj.put("hashonly", mHashOnly);
		
		if(mHashOnly) {
			obj.put("finalhash", mFinalHash.toString());	
		}else {
			obj.put("finalhash", mFinalHash.toString());
			obj.put("spent", isSpent());
			obj.put("coin", mCoin);
			obj.put("inblock", mBlockNumber.toString());
			
			//State
			JSONArray outs = new JSONArray();
			for(StateVariable sv : mPrevState) {
				outs.add(sv.toJSON());
			}
			obj.put("prevstate", outs);
		}
		
		return obj;
	}
	
	@Override
	public String toString() {
		return toJSON().toString();
	}

	@Override
	public void writeDataStream(DataOutputStream zOut) throws IOException {
		//Is it full or partial..
		if(mHashOnly) {
			MiniByte.TRUE.writeDataStream(zOut);
			
			//Only write the hash
			mFinalHash.writeDataStream(zOut);
		
		}else {
			MiniByte.FALSE.writeDataStream(zOut);
		
			//Write out the data..
			mSpent.writeDataStream(zOut);
			mCoin.writeDataStream(zOut);
			mBlockNumber.writeDataStream(zOut);
			
			//How many state variables..
			int len = mPrevState.size();
			zOut.writeInt(len);
			
			//Now the state
			for(StateVariable sv : mPrevState) {
				sv.writeDataStream(zOut);
			}
		}
	}

	@Override
	public void readDataStream(DataInputStream zIn) throws IOException {
		//Full or Partial
		MiniByte hashonly = MiniByte.ReadFromStream(zIn);
		mHashOnly         = hashonly.isTrue();
		
		if(mHashOnly) {
			mFinalHash 	 = MiniData32.ReadFromStream(zIn);
		}else {
			mSpent   	 = MiniByte.ReadFromStream(zIn);
			mCoin    	 = Coin.ReadFromStream(zIn);
			mBlockNumber = MiniNumber.ReadFromStream(zIn);
			
			//State Variables
			mPrevState = new ArrayList<StateVariable>();
			
			int sl = zIn.readInt();
			for(int i=0;i<sl;i++){
				StateVariable sv = StateVariable.ReadFromStream(zIn);
				
				//Add it..
				mPrevState.add(sv);
			}
			
			//Calculate the Hash..
			calculateDataHash();
		}
	}
	
	public static MMRData ReadFromStream(DataInputStream zIn){
		MMRData data = new MMRData();
		
		try {
			data.readDataStream(zIn);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
		return data;
		
	}
}
