package Flower.minima.miniscript.functions.txn.input;

import java.util.ArrayList;

import Flower.minima.miniscript.Contract;
import Flower.minima.miniscript.exceptions.ExecutionException;
import Flower.minima.miniscript.functions.MinimaFunction;
import Flower.minima.miniscript.functions.cast.HEX;
import Flower.minima.miniscript.values.HEXValue;
import Flower.minima.miniscript.values.Value;
import Flower.minima.objects.Coin;
import Flower.minima.objects.Transaction;

public class GETINADDR extends MinimaFunction {

	public GETINADDR() {
		super("GETINADDR");
	}
	
	@Override
	public Value runFunction(Contract zContract) throws ExecutionException {
		
		//Which Output - must be from 0-255
		int input = getParameter(0).getValue(zContract).getNumber().getAsInt();
		
		//Get the Transaction
		Transaction trans = zContract.getTransaction();
		
		//Check output exists..
		ArrayList<Coin> ins = trans.getAllInputs();
		if(ins.size()<=input) {
			throw new ExecutionException("Input number too high "+input+"/"+ins.size());
		}
		
		//Get it..
		Coin cc = ins.get(input);
		
		//Return the address	
		return new HEXValue(cc.getAddress());
	}

	@Override
	public MinimaFunction getNewFunction() {
		return new GETINADDR();
	}
}
