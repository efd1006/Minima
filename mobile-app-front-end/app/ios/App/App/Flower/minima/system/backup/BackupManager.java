package Flower.minima.system.backup;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import Flower.minima.database.txpowtree.BlockTree;
import Flower.minima.database.txpowtree.BlockTreeNode;
import Flower.minima.database.txpowtree.BlockTreeStore;
import Flower.minima.database.userdb.java.JavaUserDB;
import Flower.minima.objects.TxPOW;
import Flower.minima.objects.base.MiniData32;
import Flower.minima.system.Main;
import Flower.minima.system.SystemHandler;
import Flower.minima.system.brains.ConsensusBackup;
import Flower.minima.utils.SimpleLogger;
import Flower.minima.utils.Streamable;
import Flower.minima.utils.messages.Message;
import Flower.minima.utils.messages.MessageProcessor;

public class BackupManager extends SystemHandler {

	public static final String BACKUP_INIT         = "BACKUP_INIT";
	public static final String BACKUP_CLEAR        = "BACKUP_CLEAR";
	
	public static final String BACKUP_WRITE        = "BACKUP_WRITE";
	
	public static final String BACKUP_READ         = "BACKUP_READ";
	public static final String BACKUP_READSYNC     = "BACKUP_READSYNC";
	public static final String BACKUP_READUSER     = "BACKUP_READUSER";
	public static final String BACKUP_READTXPOW    = "BACKUP_READTXPOW";
	
	public static final String BACKUP_POSTACTIONMSG      = "BACKUP_POSTACTIONMSG"; 
	public static final String BACKUP_POSTACTION_HANDLER = "BACKUP_POSTACTION_HANDLER"; 
	
	/**
	 * User home folder
	 */
	String mHomeFolder = "";
	
	/**
	 * The Root directory..
	 */
	File mRoot;
	
	File mBackup;
	
	File mTxPOWDB;
	
	public BackupManager(Main zMain, String zHomeFolder) {
		super(zMain, "Backup Manager");
		
		mHomeFolder = zHomeFolder;
	
		//Start init
		PostMessage(BACKUP_INIT);
	}
	
	public String getRootFolder() {
		return mRoot.getAbsolutePath();
	}
	
	public File getTxPOWFolder() {
		return mTxPOWDB;
	}
	
	public void backupTxpow(TxPOW zTxPOW) {
		//Create the File
//		File back = new File(mTxPOWDB,zTxPOW.getTxPowID().toString()+".txpow");
//		
//		//No Overwrite
//		Message backup = new Message(BackupManager.BACKUP_WRITE);
//		backup.addObject("object", zTxPOW);
//		backup.addObject("file", back);
		
//		PostMessage(backup);
	}

	public void deleteTxpow(TxPOW zTxPOW) {
//		//Create the File
//		File back = new File(mTxPOWDB,zTxPOW.getTxPowID().toString()+".txpow");
//				
//		//Delete?
//		if(back.exists()) {
//			back.delete();
//		}
	}
	
	public File getBackUpFile(String name) {
		return new File(mBackup, name);
	}
	
	private File ensureFolder(File zFolder) {
		if(!zFolder.exists()) {
			zFolder.mkdirs();
		}
		
		return zFolder;
	}
	
	@Override
	protected void processMessage(Message zMessage) throws Exception {
		
		if(zMessage.isMessageType(BACKUP_INIT)) {
			initFolders();
			
		}else if(zMessage.isMessageType(BACKUP_CLEAR)) {
			File root = new File(new File(mHomeFolder), "minima");
			
			if(root.exists()) {
				SimpleLogger.log("Wiping Minima Folder : "+root.getAbsolutePath());
				deleteFolder(root);
			}
			
			initFolders();
		
		}else if(zMessage.isMessageType(BACKUP_WRITE)) {
			//Get the file..
			Streamable stream = (Streamable) zMessage.getObject("object");
			
			//Get the file
			File ff = (File) zMessage.getObject("file");
			
			//Check Parent
			File parent = ff.getParentFile();
			if(!parent.exists()) {
				SimpleLogger.log("Parent file missing.. creating.. "+parent.getAbsolutePath());
				parent.mkdirs();
			}
			
			//Do we overwrite
			if(ff.exists()) {
				if(zMessage.exists("overwrite") && !zMessage.getBoolean("overwrite")) {
					//Is there a Post Action
					if(zMessage.exists(BACKUP_POSTACTIONMSG)) {
						Message msg          = (Message) zMessage.getObject(BACKUP_POSTACTIONMSG);		
						MessageProcessor sys = (MessageProcessor) zMessage.getObject(BACKUP_POSTACTION_HANDLER);
						sys.PostMessage(msg);
					}
					return;
				}
				
				//delete it
				ff.delete();
			}
			
			//Create the file
			ff.createNewFile();
			
			//Write it out..
			FileOutputStream fos = new FileOutputStream(ff, false);
			DataOutputStream dos = new DataOutputStream(fos);
			
			//And write it..
			stream.writeDataStream(dos);
			
			//flush
			dos.flush();
			fos.flush();
			
			try {
				dos.close();
				fos.close();
			}catch(Exception exc) {}
			
			//Is there a Post Action
			if(zMessage.exists(BACKUP_POSTACTIONMSG)) {
				Message msg          = (Message) zMessage.getObject(BACKUP_POSTACTIONMSG);		
				MessageProcessor sys = (MessageProcessor) zMessage.getObject(BACKUP_POSTACTION_HANDLER);
				sys.PostMessage(msg);
			}		
		
		}else if(zMessage.isMessageType(BACKUP_READ)) {
			//Get the file
			File ff = (File) zMessage.getObject("file");
			
			//Get the post action - there is ALWAYS one for a read..
			Message msg          = (Message) zMessage.getObject(BACKUP_POSTACTIONMSG);		
			MessageProcessor sys = (MessageProcessor) zMessage.getObject(BACKUP_POSTACTION_HANDLER);
			
			if(!ff.exists()) {
				//Forward the message
				sys.PostMessage(msg);
				return;
			}
			
			//Get that 
			FileInputStream fis = new FileInputStream(ff);
			DataInputStream dis = new DataInputStream(fis);
			
			//what type
			String type = zMessage.getString("type");
			if(type.equals(BACKUP_READSYNC)) {
				SyncPackage sp = new SyncPackage();
				sp.readDataStream(dis);
				
				//Add it to the message
				msg.addObject("readobject", sp);
				
			}else if (type.equals(BACKUP_READUSER)){
				JavaUserDB jdb = new JavaUserDB();
				jdb.readDataStream(dis);
				
				//Add it to the message
				msg.addObject("readobject", jdb);
			
			}else if (type.equals(BACKUP_READTXPOW)){
				TxPOW txpow = new TxPOW();
				txpow.readDataStream(dis);;
				
				//Add it to the message
				msg.addObject("readobject", txpow);
			}
			
			//Clean up
			dis.close();
			fis.close();
			
			//Forward the message
			sys.PostMessage(msg);
		}
	}
	
	private void initFolders() {
		//The Root
		mRoot = ensureFolder(new File(new File(mHomeFolder), "minima"));
		
		//Current used TxPOW
		mTxPOWDB = ensureFolder(new File(mRoot,"txpow"));
		
		//The Backup folder
		mBackup  = ensureFolder(new File(mRoot,"backup"));
	}
	
	/**
	 * Delete a folder and it's children
	 * @param zFolder
	 */
	public static void deleteFolder(File zFolder) {
		//List the files..
		File[] files = zFolder.listFiles();
		
		if(files != null) {
			for(File ff : files) {
				if(ff.isDirectory()) {
					deleteFolder(ff);
				}else {
					ff.delete();
				}
			}
		}
		
		//Finally delete the folder
		if(zFolder != null && zFolder.exists()) {
			zFolder.delete();
		}
	}
}
