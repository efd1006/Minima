package Flower.minima.system.input.functions;

import Flower.minima.system.input.CommandFunction;
import Flower.minima.system.network.NetworkHandler;
import Flower.minima.utils.SimpleLogger;
import Flower.minima.utils.messages.Message;

public class reconnect extends CommandFunction{

	public reconnect() {
		super("reconnect");
		setHelp("[ on | off ]", "Set global reconnect ability on or off", "");
	}
	
	@Override
	public void doFunction(String[] zInput) throws Exception {
		//The port..
		String onoff = zInput[1];
		
		if(onoff.equalsIgnoreCase("on")) {
			getMainHandler().getNetworkHandler().setGlobalReconnect(true);	
			
			SimpleLogger.log("Reconnect ENABLED");
		}else if(onoff.equalsIgnoreCase("off")) {
			getMainHandler().getNetworkHandler().setGlobalReconnect(false);
			
			SimpleLogger.log("Reconnect DISABLED");
		}
	}

	@Override
	public CommandFunction getNewFunction() {
		// TODO Auto-generated method stub
		return new reconnect();
	}
}
