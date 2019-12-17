package Flower.minima.utils.tests.cascader;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Random;

import Flower.minima.utils.SimpleLogger;

public class POWCascader {
		
	public static int NUMBER_BLOCKS 		= 100;
	public static int NUMBER_SIMULATIONS 	= 1;
	public static int MAX_BLOCK_LEVEL		= 2;
	
	/**
	 * Simple simulation of a cascading TX-POW chain.
	 * 
	 * A chain requires all blocks to be linked to their previous block. 
	 * 
	 * Is it possible to sum the POW in bits of the chain and create one larger POW value ? 
	 * POST the fact it is not possible. But if you take it into 
	 * account from the start there is a way of combining smaller units of POW.
	 * 
	 * The aim here is to have the total POW in the original chain, without pruning, 
	 * to be equal to the total POW stored in the shorter chain of blocks 
	 * 
	 * @param zArgs
	 */
	public static void main(String[] zArgs) {
		
		//Run the simulation 100 times
		double totalPow=0;
		double totalNum=0;
		for(int i=0;i<NUMBER_SIMULATIONS;i++) {
			SimpleLogger.log("\nRunning Simulation "+i);
			
			runSimulation();
			
			totalPow += POWRatio;
			totalNum += BLKNUMRatio;
		}
		
		SimpleLogger.log("\nFinal Scores");
		SimpleLogger.log("Number of Simulations : "+NUMBER_SIMULATIONS);
		SimpleLogger.log("Number of Blocks : "+NUMBER_BLOCKS);
		SimpleLogger.log("POW Stored : "+(totalPow/(double)NUMBER_SIMULATIONS)*100+"%");
		SimpleLogger.log("SIZE of Cascading Chain : "+(totalNum/(double)NUMBER_SIMULATIONS)*100+"%");
	}
	
	
	public static double POWRatio 		= 0;
	public static double BLKNUMRatio 	= 0;
	
	public static void runSimulation() {
		
		//The simulated HASH function
		Random rand = new Random();
		
		//Hashtable of all the blocks.
		Hashtable<Double, Block> mAllBLocks = new Hashtable<>();
		
		//The chains - we keep both to compare at the end
		ArrayList<Block> Blocks 			= new ArrayList<>();
		ArrayList<Block> BlocksCascading 	= new ArrayList<>();
		
		//Create the Genesis block - only Level 1 allowed
		BlockLevel bdata 		= new BlockLevel();
		bdata.mBlockLevel		= 0;
		bdata.mBlockNumber		= 0;
		bdata.mBlockDifficulty 	= 1;
		bdata.mPreviousBlock	= 0;

		Block mGenesisBlock 		 	= new Block();
		mGenesisBlock.mMaxBlockLevel 	= 0;
		mGenesisBlock.mBlockLevels[0] 	= bdata;
		mGenesisBlock.mBlockHash		= rand.nextDouble();
		
		//Add to the List
		Blocks.add(mGenesisBlock);
		
		//Store the last block
		Block currentblock = mGenesisBlock;
		Block lastBlock;
		
		//Create 100 blocks..
		for(int i=0;i<NUMBER_BLOCKS;i++) {
			//Store
			lastBlock = currentblock;
			
			//What Level waas the last block
			int currentmax 	= lastBlock.mMaxBlockLevel;
			int level 		= lastBlock.getBlockLevel();
			
			//Have we hit the top level
			if(level>=currentmax) {
				level = currentmax+1;
			}else {
				level = currentmax;
			}
			

			if(level>MAX_BLOCK_LEVEL) {
				level= MAX_BLOCK_LEVEL;
			}
			
			//New Block
			currentblock 				= new Block();
			currentblock.mMaxBlockLevel = level;
			currentblock.mBlockHash		= rand.nextDouble();

			//Set up the block data
			for(int lev=0;lev<=level;lev++) {
				
				//Create a new BlockLevel
				BlockLevel bl  		= new BlockLevel();
				bl.mBlockLevel 		= lev;
				bl.mPreviousBlock 	= 0;
				if(lev == 0) {
					bl.mBlockDifficulty = 1.0;
				}else {
					bl.mBlockDifficulty = Math.pow(10, lev);
				}
				
				//The Blocknumber per level
				if(lev<=currentmax) {
					bl.mBlockNumber     = lastBlock.mBlockLevels[lev].mBlockNumber+1;
				}else{
					bl.mBlockNumber     = 0;
				}
						
				//Add to the current block
				currentblock.mBlockLevels[lev] = bl;
			}
			
			
			//Add to the List
			Blocks.add(currentblock);
		}
		
		//Now Create the cascading chain
		int counter = 0;
		
		int level 			= 0;
		int levelcounter 	= 0;
		
		SimpleLogger.log("Original Blocks");
		double totalpow 	 = 0;
		boolean limitreached = false;
		for(Block blk : Blocks) {
			SimpleLogger.log(counter+") "+blk);
			totalpow+=blk.mBlockLevels[0].mBlockDifficulty;
			counter++;
			
			int blevel = blk.getBlockLevel();
			if(blevel >= level) {
				//Add to the cascading chain
				BlocksCascading.add(blk);
				
				if(limitreached) {
					//Is it high enough to jump up a level..
					if(blevel>level) {
						level++;
						levelcounter=0;
						limitreached = false;
					}
				}else {
					levelcounter++;
				}
					
				blk.mFinalWeight = blk.mBlockLevels[level].mBlockDifficulty;
				
				if(levelcounter > 10) {
					//Switch to a higher level atg the first opportunity
					limitreached = true;
				}
			}
		}
		SimpleLogger.log("Total POW "+totalpow);
		double tot = totalpow;
		
		SimpleLogger.log("Cascading Chain Blocks");
		counter=0;
		totalpow =0;
		for(Block cblk : BlocksCascading) {
			SimpleLogger.log(counter+") "+cblk);
			totalpow+=cblk.mFinalWeight;
			counter++;
			
		}
		SimpleLogger.log("Total POW "+totalpow);
		
		POWRatio 	= totalpow / tot;
		BLKNUMRatio = (double)BlocksCascading.size() / (double)Blocks.size();
		
		SimpleLogger.log("Ratio Cascading Chain VS Full block chain");
		SimpleLogger.log("Number of blocks : "+(float)(BLKNUMRatio* 100)+"%" );
		SimpleLogger.log("Stored POW       : "+ (float)(POWRatio * 100)+"%" );
		
	}
	
}
