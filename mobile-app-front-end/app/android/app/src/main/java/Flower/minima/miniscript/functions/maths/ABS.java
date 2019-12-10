package Flower.minima.miniscript.functions.maths;

import Flower.minima.miniscript.Contract;
import Flower.minima.miniscript.exceptions.ExecutionException;
import Flower.minima.miniscript.functions.MinimaFunction;
import Flower.minima.miniscript.functions.base.RPLVAR;
import Flower.minima.miniscript.values.NumberValue;
import Flower.minima.miniscript.values.Value;

public class ABS extends MinimaFunction {

	public ABS() {
		super("ABS");
	}
	
	@Override
	public Value runFunction(Contract zContract) throws ExecutionException {
		
		NumberValue number = (NumberValue) getParameter(0).getValue(zContract);
		
		return new NumberValue(number.getNumber().abs());
	}
	
	@Override
	public MinimaFunction getNewFunction() {
		return new ABS();
	}
}
