package Flower.minima.database.coindb;

import java.util.ArrayList;

import Flower.minima.objects.Coin;
import Flower.minima.objects.base.MiniData32;
import Flower.minima.objects.base.MiniNumber;

public interface CoinDB {

	/**
	 * Clear the database
	 */
	public void clearDB();
//	public void clearOldCoins(long zCurrentBlock);
	
	/**
	 * SELECT *
	 * @return
	 */
	ArrayList<CoinDBRow> getComplete();
	
	/**
	 * Return all coins that have this address
	 * 
	 * @param zAddress
	 * @return all coins that have this address
	 */
	public ArrayList<CoinDBRow> checkForRelevantCoins(MiniData32 zAddress);
	
	/**
	 * Get the coin row with this CoinID or NULL if none present
	 * 
	 * @param zCoin
	 * @return
	 */
	public CoinDBRow getCoinRow(MiniData32 zCoinID);
	
	/**
	 * Add a coinRow
	 * 
	 * @param zCoin
	 * @return
	 */
	public CoinDBRow addCoinRow(Coin zCoin);
	
	public void removeOldSpentCoins(MiniNumber zMinBlock);
}
