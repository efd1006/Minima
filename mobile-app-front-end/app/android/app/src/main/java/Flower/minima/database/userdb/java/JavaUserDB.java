package Flower.minima.database.userdb.java;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import Flower.minima.database.userdb.UserDB;
import Flower.minima.database.userdb.UserDBRow;
import Flower.minima.miniscript.Contract;
import Flower.minima.objects.Address;
import Flower.minima.objects.Coin;
import Flower.minima.objects.PubPrivKey;
import Flower.minima.objects.Transaction;
import Flower.minima.objects.base.MiniData;
import Flower.minima.objects.base.MiniData32;
import Flower.minima.utils.SimpleLogger;
import Flower.minima.utils.Streamable;

public class JavaUserDB implements UserDB, Streamable{
	
	ArrayList<PubPrivKey> mPubPrivKeys;
	ArrayList<Address>    mAddresses;
	ArrayList<Address>    mScriptAddresses;
	
	int mCounter;
	ArrayList<UserDBRow> mRows;
	
	ArrayList<Address> mTotalAddresses;
	
	public JavaUserDB() {
		mPubPrivKeys 	 = new ArrayList<>();
		mAddresses 		 = new ArrayList<>();
		mScriptAddresses = new ArrayList<>();
		mTotalAddresses  = new ArrayList<>();
	
		mCounter = 0;
		mRows  = new ArrayList<>();
	}
	
	@Override
	public ArrayList<Address> getAllAddresses(){
		return mTotalAddresses;
	}

	@Override
	public ArrayList<PubPrivKey> getKeys() {
		return mPubPrivKeys;
	}

	@Override
	public PubPrivKey newPublicKey() {
		PubPrivKey pubkey = new PubPrivKey();
		mPubPrivKeys.add(pubkey);
		return pubkey;
	}
	
	@Override
	public ArrayList<UserDBRow> getAllRows() {
		return mRows;
	}

	@Override
	public UserDBRow getUserRow(int zID) {
		for(UserDBRow row : mRows) {
			if(row.getID() == zID) {
				return row;
			}
		}
		return null;
	}

	@Override
	public UserDBRow addUserRow() {
		UserDBRow row = new JavaUserDBRow(mCounter++);
		mRows.add(row);
		return row;
	}

	@Override
	public void deleteUserRow(int zID) {
		UserDBRow row = getUserRow(zID);
		mRows.remove(row);
	}
	
	@Override
	public ArrayList<Address> getSimpleAddresses() {
		return mAddresses;
	}
	
	@Override
	public Address newSimpleAddress() {
		return newSimpleAddress(new PubPrivKey());
	}
	
	@Override
	public Address newSimpleAddress(PubPrivKey zPubPriv) {
		//Store it..
		mPubPrivKeys.add(zPubPriv);
		
		//A simple script.. 
		String script = "RETURN SIGNEDBY ( "+zPubPriv.getPublicKey()+" )";
		Address addr  = new Address(script);
		
		//Add to the simple wallet
		mAddresses.add(addr);
		
		//Add to the Total
		mTotalAddresses.add(addr);
		
		return addr;
	}
	

	@Override
	public boolean isSimpleAddress(MiniData32 zAddress) {
		for(Address addr : mAddresses) {
			if(addr.isEqual(zAddress)) {
				return true;
			}
		}
		
		return false;
	}
	
	@Override
	public PubPrivKey getPubPrivKey(MiniData zPubKey) {
		for(PubPrivKey key : mPubPrivKeys) {
			if(key.getPublicKey().isExactlyEqual(zPubKey)) {
				return key;
			}
		}
		
		return null;
	}

	@Override
	public ArrayList<Address> getScriptAddresses() {
		return mScriptAddresses;
	}

	@Override
	public Address newScriptAddress(String zScript) {
		//A simple script.. 
		Address addr = new Address(zScript);
		
		//Add to the simple wallet
		mScriptAddresses.add(addr);
		mTotalAddresses.add(addr);
		
		return addr;
	}
	
	@Override
	public String getScript(MiniData32 zAddress) {
		//Check the Addresses
		for(Address addr : mTotalAddresses) {
			if(addr.getAddressData().isExactlyEqual(zAddress)) {
				return addr.getScript();
			}
		}
		
		return "NULL";
	}

	
	@Override
	public boolean isAddressRelevant(MiniData32 zAddress) {
		for(Address addr : mTotalAddresses) {
			if(addr.getAddressData().isExactlyEqual(zAddress)) {
				return true;
			}
		}
		
		return false;
	}

	@Override
	public boolean isTransactionRelevant(Transaction zTrans) {
		ArrayList<Coin> ins  = zTrans.getAllInputs();
		ArrayList<Coin> outs = zTrans.getAllOutputs();
		
		//Check them - adding the script to outputs we own
		boolean rel = false;
		for(Coin in : ins) {
			if(isAddressRelevant(in.getAddress())) {
				rel = true;
			}
		}
			
		for(Coin out : outs) {
			if(isAddressRelevant(out.getAddress())) {
				rel = true;
			}
		}
		
		return rel;
	}

	@Override
	public MiniData getPublicKey(MiniData32 zAddress) {
		for(Address addr : mAddresses) {
			if(addr.isEqual(zAddress)) {
				//What is the Public key!
				String script = addr.getScript();
				int index = script.indexOf("0x");
				int end   = script.indexOf(" ", index);
				
				String pubk = script.substring(index, end);
				
				return new MiniData(pubk);
			}
		}
		return null;
	}

	@Override
	public void writeDataStream(DataOutputStream zOut) throws IOException {
		int len =0;
		
		//Pub priv keys
		len = mPubPrivKeys.size();
		zOut.writeInt(len);
		for(PubPrivKey key : mPubPrivKeys) {
			key.writeDataStream(zOut);
		}
		
		//Addresses..
		len = mAddresses.size();
		zOut.writeInt(len);
		for(Address addr : mAddresses) {
			addr.writeDataStream(zOut);
		}
		
		//Script Addresses..
		len = mScriptAddresses.size();
		zOut.writeInt(len);
		for(Address addr : mScriptAddresses) {
			addr.writeDataStream(zOut);
		}
		
		//transactions..
		zOut.writeInt(mCounter);
		
		len = mRows.size();
		zOut.writeInt(len);
		for(UserDBRow row : mRows) {
			JavaUserDBRow jrow = (JavaUserDBRow) row;		
			jrow.writeDataStream(zOut);
		}	
	}

	@Override
	public void readDataStream(DataInputStream zIn) throws IOException {
		//reset
		mPubPrivKeys     = new ArrayList<>();
		mAddresses       = new ArrayList<>();
		mScriptAddresses = new ArrayList<>();
		mTotalAddresses  = new ArrayList<>();
		mRows            = new ArrayList<>();	

		//Pub Priv Keys
		int len = zIn.readInt();
		for(int i=0;i<len;i++) {
			PubPrivKey pp = new PubPrivKey(true);
			pp.readDataStream(zIn);
			mPubPrivKeys.add(pp);
		}
		
		//Address
		len = zIn.readInt();
		for(int i=0;i<len;i++) {
			Address addr = new Address();
			addr.readDataStream(zIn);
			mAddresses.add(addr);
			mTotalAddresses.add(addr);
		}
		
		//Script Address
		len = zIn.readInt();
		for(int i=0;i<len;i++) {
			Address addr = new Address();
			addr.readDataStream(zIn);
			mScriptAddresses.add(addr);
			mTotalAddresses.add(addr);
		}
		
		//transaction..
		mCounter = zIn.readInt();
		
		len = zIn.readInt();
		for(int i=0;i<len;i++) {
			JavaUserDBRow row = new JavaUserDBRow();
			row.readDataStream(zIn);
			mRows.add(row);
		}
	}

}
