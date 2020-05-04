//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/backup/BackupManager.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/lang/Exception.h"
#include "org/minima/database/userdb/java/JavaUserDB.h"
#include "org/minima/objects/TxPOW.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/SystemHandler.h"
#include "org/minima/system/backup/BackupManager.h"
#include "org/minima/system/backup/SyncPackage.h"
#include "org/minima/utils/MinimaLogger.h"
#include "org/minima/utils/Streamable.h"
#include "org/minima/utils/messages/Message.h"
#include "org/minima/utils/messages/MessageProcessor.h"

@interface OrgMinimaSystemBackupBackupManager ()

- (JavaIoFile *)ensureFolderWithJavaIoFile:(JavaIoFile *)zFolder;

- (void)initFolders OBJC_METHOD_FAMILY_NONE;

@end

__attribute__((unused)) static JavaIoFile *OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(OrgMinimaSystemBackupBackupManager *self, JavaIoFile *zFolder);

__attribute__((unused)) static void OrgMinimaSystemBackupBackupManager_initFolders(OrgMinimaSystemBackupBackupManager *self);

NSString *OrgMinimaSystemBackupBackupManager_BACKUP_INIT = @"BACKUP_INIT";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_CLEAR = @"BACKUP_CLEAR";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_WRITE = @"BACKUP_WRITE";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_READ = @"BACKUP_READ";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_READSYNC = @"BACKUP_READSYNC";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_READUSER = @"BACKUP_READUSER";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_READTXPOW = @"BACKUP_READTXPOW";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG = @"BACKUP_POSTACTIONMSG";
NSString *OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTION_HANDLER = @"BACKUP_POSTACTION_HANDLER";

@implementation OrgMinimaSystemBackupBackupManager

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain
                               withNSString:(NSString *)zConfFolder {
  OrgMinimaSystemBackupBackupManager_initWithOrgMinimaSystemMain_withNSString_(self, zMain, zConfFolder);
  return self;
}

- (NSString *)getRootFolder {
  return [((JavaIoFile *) nil_chk(mRoot_)) getAbsolutePath];
}

- (JavaIoFile *)getTxPOWFolder {
  return mTxPOWDB_;
}

- (void)backupTxpowWithOrgMinimaObjectsTxPOW:(OrgMinimaObjectsTxPOW *)zTxPOW {
}

- (void)deleteTxpowWithOrgMinimaObjectsTxPOW:(OrgMinimaObjectsTxPOW *)zTxPOW {
}

- (JavaIoFile *)getBackUpFileWithNSString:(NSString *)name {
  return new_JavaIoFile_initWithJavaIoFile_withNSString_(mBackup_, name);
}

- (JavaIoFile *)ensureFolderWithJavaIoFile:(JavaIoFile *)zFolder {
  return OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(self, zFolder);
}

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage {
  if ([((OrgMinimaUtilsMessagesMessage *) nil_chk(zMessage)) isMessageTypeWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_INIT]) {
    OrgMinimaSystemBackupBackupManager_initFolders(self);
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_CLEAR]) {
    JavaIoFile *root = new_JavaIoFile_initWithNSString_(mConfigurationFolder_);
    if ([root exists]) {
      OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("$$", @"Wiping Minima Folder : ", [root getAbsolutePath]));
      OrgMinimaSystemBackupBackupManager_deleteFolderWithJavaIoFile_(root);
    }
    OrgMinimaSystemBackupBackupManager_initFolders(self);
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_WRITE]) {
    id<OrgMinimaUtilsStreamable> stream = (id<OrgMinimaUtilsStreamable>) cast_check([zMessage getObjectWithNSString:@"object"], OrgMinimaUtilsStreamable_class_());
    JavaIoFile *ff = (JavaIoFile *) cast_chk([zMessage getObjectWithNSString:@"file"], [JavaIoFile class]);
    JavaIoFile *parent = [((JavaIoFile *) nil_chk(ff)) getParentFile];
    if (![((JavaIoFile *) nil_chk(parent)) exists]) {
      OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("$$", @"Parent file missing.. creating.. ", [parent getAbsolutePath]));
      [parent mkdirs];
    }
    if ([ff exists]) {
      if ([zMessage existsWithNSString:@"overwrite"] && ![zMessage getBooleanWithNSString:@"overwrite"]) {
        if ([zMessage existsWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG]) {
          OrgMinimaUtilsMessagesMessage *msg = (OrgMinimaUtilsMessagesMessage *) cast_chk([zMessage getObjectWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG], [OrgMinimaUtilsMessagesMessage class]);
          OrgMinimaUtilsMessagesMessageProcessor *sys = (OrgMinimaUtilsMessagesMessageProcessor *) cast_chk([zMessage getObjectWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTION_HANDLER], [OrgMinimaUtilsMessagesMessageProcessor class]);
          [((OrgMinimaUtilsMessagesMessageProcessor *) nil_chk(sys)) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
        }
        return;
      }
      [ff delete__];
    }
    [ff createNewFile];
    JavaIoFileOutputStream *fos = new_JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(ff, false);
    JavaIoDataOutputStream *dos = new_JavaIoDataOutputStream_initWithJavaIoOutputStream_(fos);
    [((id<OrgMinimaUtilsStreamable>) nil_chk(stream)) writeDataStreamWithJavaIoDataOutputStream:dos];
    [dos flush];
    [fos flush];
    @try {
      [dos close];
      [fos close];
    }
    @catch (JavaLangException *exc) {
    }
    if ([zMessage existsWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG]) {
      OrgMinimaUtilsMessagesMessage *msg = (OrgMinimaUtilsMessagesMessage *) cast_chk([zMessage getObjectWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG], [OrgMinimaUtilsMessagesMessage class]);
      OrgMinimaUtilsMessagesMessageProcessor *sys = (OrgMinimaUtilsMessagesMessageProcessor *) cast_chk([zMessage getObjectWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTION_HANDLER], [OrgMinimaUtilsMessagesMessageProcessor class]);
      [((OrgMinimaUtilsMessagesMessageProcessor *) nil_chk(sys)) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
    }
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_READ]) {
    JavaIoFile *ff = (JavaIoFile *) cast_chk([zMessage getObjectWithNSString:@"file"], [JavaIoFile class]);
    OrgMinimaUtilsMessagesMessage *msg = (OrgMinimaUtilsMessagesMessage *) cast_chk([zMessage getObjectWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG], [OrgMinimaUtilsMessagesMessage class]);
    OrgMinimaUtilsMessagesMessageProcessor *sys = (OrgMinimaUtilsMessagesMessageProcessor *) cast_chk([zMessage getObjectWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTION_HANDLER], [OrgMinimaUtilsMessagesMessageProcessor class]);
    if (![((JavaIoFile *) nil_chk(ff)) exists]) {
      [((OrgMinimaUtilsMessagesMessageProcessor *) nil_chk(sys)) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
      return;
    }
    JavaIoFileInputStream *fis = new_JavaIoFileInputStream_initWithJavaIoFile_(ff);
    JavaIoDataInputStream *dis = new_JavaIoDataInputStream_initWithJavaIoInputStream_(fis);
    NSString *type = [zMessage getStringWithNSString:@"type"];
    if ([((NSString *) nil_chk(type)) isEqual:OrgMinimaSystemBackupBackupManager_BACKUP_READSYNC]) {
      OrgMinimaSystemBackupSyncPackage *sp = new_OrgMinimaSystemBackupSyncPackage_init();
      [sp readDataStreamWithJavaIoDataInputStream:dis];
      (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(msg)) addObjectWithNSString:@"readobject" withId:sp];
    }
    else if ([type isEqual:OrgMinimaSystemBackupBackupManager_BACKUP_READUSER]) {
      OrgMinimaDatabaseUserdbJavaJavaUserDB *jdb = new_OrgMinimaDatabaseUserdbJavaJavaUserDB_init();
      [jdb readDataStreamWithJavaIoDataInputStream:dis];
      (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(msg)) addObjectWithNSString:@"readobject" withId:jdb];
    }
    else if ([type isEqual:OrgMinimaSystemBackupBackupManager_BACKUP_READTXPOW]) {
      OrgMinimaObjectsTxPOW *txpow = new_OrgMinimaObjectsTxPOW_init();
      [txpow readDataStreamWithJavaIoDataInputStream:dis];
      
      ;
      (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(msg)) addObjectWithNSString:@"readobject" withId:txpow];
    }
    [dis close];
    [fis close];
    [((OrgMinimaUtilsMessagesMessageProcessor *) nil_chk(sys)) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
  }
}

- (void)initFolders {
  OrgMinimaSystemBackupBackupManager_initFolders(self);
}

+ (void)deleteAllButMiniDAPPSWithJavaIoFile:(JavaIoFile *)zFolder {
  OrgMinimaSystemBackupBackupManager_deleteAllButMiniDAPPSWithJavaIoFile_(zFolder);
}

+ (void)deleteFolderWithJavaIoFile:(JavaIoFile *)zFolder {
  OrgMinimaSystemBackupBackupManager_deleteFolderWithJavaIoFile_(zFolder);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 8, 9, 10, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 11, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 12, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaSystemMain:withNSString:);
  methods[1].selector = @selector(getRootFolder);
  methods[2].selector = @selector(getTxPOWFolder);
  methods[3].selector = @selector(backupTxpowWithOrgMinimaObjectsTxPOW:);
  methods[4].selector = @selector(deleteTxpowWithOrgMinimaObjectsTxPOW:);
  methods[5].selector = @selector(getBackUpFileWithNSString:);
  methods[6].selector = @selector(ensureFolderWithJavaIoFile:);
  methods[7].selector = @selector(processMessageWithOrgMinimaUtilsMessagesMessage:);
  methods[8].selector = @selector(initFolders);
  methods[9].selector = @selector(deleteAllButMiniDAPPSWithJavaIoFile:);
  methods[10].selector = @selector(deleteFolderWithJavaIoFile:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BACKUP_INIT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "BACKUP_CLEAR", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "BACKUP_WRITE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "BACKUP_READ", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "BACKUP_READSYNC", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "BACKUP_READUSER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "BACKUP_READTXPOW", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "BACKUP_POSTACTIONMSG", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "BACKUP_POSTACTION_HANDLER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "mConfigurationFolder_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRoot_", "LJavaIoFile;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mBackup_", "LJavaIoFile;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mTxPOWDB_", "LJavaIoFile;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mMiniDAPPS_", "LJavaIoFile;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaSystemMain;LNSString;", "backupTxpow", "LOrgMinimaObjectsTxPOW;", "deleteTxpow", "getBackUpFile", "LNSString;", "ensureFolder", "LJavaIoFile;", "processMessage", "LOrgMinimaUtilsMessagesMessage;", "LJavaLangException;", "deleteAllButMiniDAPPS", "deleteFolder", &OrgMinimaSystemBackupBackupManager_BACKUP_INIT, &OrgMinimaSystemBackupBackupManager_BACKUP_CLEAR, &OrgMinimaSystemBackupBackupManager_BACKUP_WRITE, &OrgMinimaSystemBackupBackupManager_BACKUP_READ, &OrgMinimaSystemBackupBackupManager_BACKUP_READSYNC, &OrgMinimaSystemBackupBackupManager_BACKUP_READUSER, &OrgMinimaSystemBackupBackupManager_BACKUP_READTXPOW, &OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTIONMSG, &OrgMinimaSystemBackupBackupManager_BACKUP_POSTACTION_HANDLER };
  static const J2ObjcClassInfo _OrgMinimaSystemBackupBackupManager = { "BackupManager", "org.minima.system.backup", ptrTable, methods, fields, 7, 0x1, 11, 14, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemBackupBackupManager;
}

@end

void OrgMinimaSystemBackupBackupManager_initWithOrgMinimaSystemMain_withNSString_(OrgMinimaSystemBackupBackupManager *self, OrgMinimaSystemMain *zMain, NSString *zConfFolder) {
  OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_withNSString_(self, zMain, @"Backup Manager");
  self->mConfigurationFolder_ = @"";
  self->mConfigurationFolder_ = zConfFolder;
  [self PostMessageWithNSString:OrgMinimaSystemBackupBackupManager_BACKUP_INIT];
}

OrgMinimaSystemBackupBackupManager *new_OrgMinimaSystemBackupBackupManager_initWithOrgMinimaSystemMain_withNSString_(OrgMinimaSystemMain *zMain, NSString *zConfFolder) {
  J2OBJC_NEW_IMPL(OrgMinimaSystemBackupBackupManager, initWithOrgMinimaSystemMain_withNSString_, zMain, zConfFolder)
}

OrgMinimaSystemBackupBackupManager *create_OrgMinimaSystemBackupBackupManager_initWithOrgMinimaSystemMain_withNSString_(OrgMinimaSystemMain *zMain, NSString *zConfFolder) {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemBackupBackupManager, initWithOrgMinimaSystemMain_withNSString_, zMain, zConfFolder)
}

JavaIoFile *OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(OrgMinimaSystemBackupBackupManager *self, JavaIoFile *zFolder) {
  if (![((JavaIoFile *) nil_chk(zFolder)) exists]) {
    [zFolder mkdirs];
  }
  return zFolder;
}

void OrgMinimaSystemBackupBackupManager_initFolders(OrgMinimaSystemBackupBackupManager *self) {
  self->mRoot_ = OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(self, new_JavaIoFile_initWithNSString_(self->mConfigurationFolder_));
  self->mTxPOWDB_ = OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(self, new_JavaIoFile_initWithJavaIoFile_withNSString_(self->mRoot_, @"txpow"));
  self->mBackup_ = OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(self, new_JavaIoFile_initWithJavaIoFile_withNSString_(self->mRoot_, @"backup"));
  self->mMiniDAPPS_ = OrgMinimaSystemBackupBackupManager_ensureFolderWithJavaIoFile_(self, new_JavaIoFile_initWithJavaIoFile_withNSString_(self->mRoot_, @"minidapps"));
}

void OrgMinimaSystemBackupBackupManager_deleteAllButMiniDAPPSWithJavaIoFile_(JavaIoFile *zFolder) {
  OrgMinimaSystemBackupBackupManager_initialize();
  OrgMinimaSystemBackupBackupManager_deleteFolderWithJavaIoFile_(new_JavaIoFile_initWithJavaIoFile_withNSString_(zFolder, @"txpow"));
  OrgMinimaSystemBackupBackupManager_deleteFolderWithJavaIoFile_(new_JavaIoFile_initWithJavaIoFile_withNSString_(zFolder, @"backup"));
}

void OrgMinimaSystemBackupBackupManager_deleteFolderWithJavaIoFile_(JavaIoFile *zFolder) {
  OrgMinimaSystemBackupBackupManager_initialize();
  IOSObjectArray *files = [((JavaIoFile *) nil_chk(zFolder)) listFiles];
  if (files != nil) {
    {
      IOSObjectArray *a__ = files;
      JavaIoFile * const *b__ = a__->buffer_;
      JavaIoFile * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        JavaIoFile *ff = *b__++;
        if ([((JavaIoFile *) nil_chk(ff)) isDirectory]) {
          OrgMinimaSystemBackupBackupManager_deleteFolderWithJavaIoFile_(ff);
        }
        else {
          if ([((NSString *) nil_chk([((NSString *) nil_chk([ff getAbsolutePath])) lowercaseString])) java_contains:@"minima"]) {
            [ff delete__];
          }
        }
      }
    }
  }
  if (zFolder != nil && [zFolder exists]) {
    if ([((NSString *) nil_chk([((NSString *) nil_chk([zFolder getAbsolutePath])) lowercaseString])) java_contains:@"minima"]) {
      [zFolder delete__];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemBackupBackupManager)
