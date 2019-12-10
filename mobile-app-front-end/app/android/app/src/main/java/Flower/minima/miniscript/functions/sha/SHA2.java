package Flower.minima.miniscript.functions.sha;

import Flower.minima.miniscript.Contract;
import Flower.minima.miniscript.exceptions.ExecutionException;
import Flower.minima.miniscript.functions.MinimaFunction;
import Flower.minima.miniscript.functions.base.RPLVAR;
import Flower.minima.miniscript.values.HEXValue;
import Flower.minima.miniscript.values.Value;
import Flower.minima.objects.base.MiniData32;
import Flower.minima.utils.Crypto;

public class SHA2 extends MinimaFunction {

	/**
	 * @param zName
	 */
	public SHA2() {
		super("SHA2");
	}
	
	/* (non-Javadoc)
	 * @see org.ramcash.ramscript.functions.Function#runFunction()
	 */
	@Override
	public Value runFunction(Contract zContract) throws ExecutionException {
		//get the Input Data
		byte[] data = getParameter(0).getValue(zContract).getRawData();
		
		//Perform the SHA2 Operation
		byte[] ans = Crypto.getInstance().hashSHA2(data);
		
		//Ensure a 32 byte hash
		MiniData32 hash = new MiniData32(ans);
		
		//return the New HEXValue
		return new HEXValue(hash.getData());
	}
	
	@Override
	public MinimaFunction getNewFunction() {
		return new SHA2();
	}
}
