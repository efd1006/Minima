/**
 * 
 */
package Flower.minima.miniscript.statements.commands;

import java.util.ArrayList;

import Flower.minima.miniscript.Contract;
import Flower.minima.miniscript.exceptions.ExecutionException;
import Flower.minima.miniscript.expressions.ConstantExpression;
import Flower.minima.miniscript.expressions.Expression;
import Flower.minima.miniscript.statements.Statement;
import Flower.minima.miniscript.statements.StatementBlock;
import Flower.minima.miniscript.values.BooleanValue;

/**
 * @author Spartacus Rex
 *
 */
public class IFstatement implements Statement {

	/**
	 * A list of all the conditional statements
	 */
	ArrayList<Expression>     mConditions;
	
	/**
	 * A list of the code blocks to be run for each conditional statement
	 */
	ArrayList<StatementBlock> mActions;
	
	
	/**
	 * Main Constructor
	 * 
	 * @param zSingleCondition
	 * @param zSingleCodeBlock
	 * @param zELSECodeBlock
	 */
	public IFstatement() {
		mConditions = new ArrayList<>();
		mActions    = new ArrayList<>();
	}
	
	public IFstatement(Expression zSingleCondition, StatementBlock zSingleCodeBlock , StatementBlock zELSECodeBlock) {
		this();
		
		//Add the defaults..
		mConditions.add(zSingleCondition);
		mActions.add(zSingleCodeBlock);
		
		//Is there an ELSE
		if(zELSECodeBlock != null) {
			//Else is TRUE
			mConditions.add( new ConstantExpression(BooleanValue.TRUE) );
			
			//Add theactions
			mActions.add(zELSECodeBlock);
		}
	}

	public void addCondition(Expression mCondition, StatementBlock mCodeBlock) {
		mConditions.add(mCondition);
		mActions.add(mCodeBlock);
	}
	
	/**
	 * Execute this as entire IF statement, including sub routines.
	 */
	@Override
	public void execute(Contract zContract) throws ExecutionException {
		//Trace log
		zContract.traceLog(toString());
				
		//How many..
		int size = mConditions.size();
		
		//Loop..
		for(int loop=0;loop<size;loop++) {
			//What Condition
			Expression conditional 		 = mConditions.get(loop);
			
			//Check it..
			if(conditional.getValue(zContract).isTrue()) {
				//What Action
				StatementBlock codeblock = mActions.get(loop);
				
				//Do it!
				codeblock.run(zContract);
				
				//That's it!
				break;
			}
		}
	}
	
	
	@Override
	public String toString() {
		String ret = "";
		
		//How many..
		int size = mConditions.size();
		
		//Loop..
		for(int loop=0;loop<size;loop++) {
			Expression conditional 		= mConditions.get(loop);
		
			if(loop == 0) {
				ret = "IF "+conditional;
			}else {
				ret += ", ELSEIF "+conditional;
			}
		}
		
		return ret;
	}

}
