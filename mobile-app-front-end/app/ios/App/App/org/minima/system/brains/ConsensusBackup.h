//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/brains/ConsensusBackup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusBackup")
#ifdef RESTRICT_OrgMinimaSystemBrainsConsensusBackup
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusBackup 0
#else
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusBackup 1
#endif
#undef RESTRICT_OrgMinimaSystemBrainsConsensusBackup

#if !defined (OrgMinimaSystemBrainsConsensusBackup_) && (INCLUDE_ALL_OrgMinimaSystemBrainsConsensusBackup || defined(INCLUDE_OrgMinimaSystemBrainsConsensusBackup))
#define OrgMinimaSystemBrainsConsensusBackup_

@class JavaIoFile;
@class OrgMinimaDatabaseMinimaDB;
@class OrgMinimaObjectsTxPOW;
@class OrgMinimaSystemBrainsConsensusHandler;
@class OrgMinimaUtilsMessagesMessage;

@interface OrgMinimaSystemBrainsConsensusBackup : NSObject {
 @public
  OrgMinimaDatabaseMinimaDB *mDB_;
  OrgMinimaSystemBrainsConsensusHandler *mHandler_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaDatabaseMinimaDB:(OrgMinimaDatabaseMinimaDB *)zDB
        withOrgMinimaSystemBrainsConsensusHandler:(OrgMinimaSystemBrainsConsensusHandler *)zHandler;

+ (OrgMinimaObjectsTxPOW *)loadTxPOWWithJavaIoFile:(JavaIoFile *)zTxpowFile;

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemBrainsConsensusBackup)

J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusBackup, mDB_, OrgMinimaDatabaseMinimaDB *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusBackup, mHandler_, OrgMinimaSystemBrainsConsensusHandler *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUS_PREFIX(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUS_PREFIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusBackup, CONSENSUS_PREFIX, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUSBACKUP_BACKUPUSER(void);
inline NSString *OrgMinimaSystemBrainsConsensusBackup_set_CONSENSUSBACKUP_BACKUPUSER(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUSBACKUP_BACKUPUSER;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_BACKUPUSER, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUSBACKUP_BACKUP(void);
inline NSString *OrgMinimaSystemBrainsConsensusBackup_set_CONSENSUSBACKUP_BACKUP(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUSBACKUP_BACKUP;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_BACKUP, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUSBACKUP_RESTORE(void);
inline NSString *OrgMinimaSystemBrainsConsensusBackup_set_CONSENSUSBACKUP_RESTORE(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUSBACKUP_RESTORE;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_RESTORE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUSBACKUP_RESTOREUSERDB(void);
inline NSString *OrgMinimaSystemBrainsConsensusBackup_set_CONSENSUSBACKUP_RESTOREUSERDB(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUSBACKUP_RESTOREUSERDB;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_RESTOREUSERDB, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUSBACKUP_RESTORETXPOW(void);
inline NSString *OrgMinimaSystemBrainsConsensusBackup_set_CONSENSUSBACKUP_RESTORETXPOW(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUSBACKUP_RESTORETXPOW;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_RESTORETXPOW, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_CONSENSUSBACKUP_RESTORETREEDB(void);
inline NSString *OrgMinimaSystemBrainsConsensusBackup_set_CONSENSUSBACKUP_RESTORETREEDB(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_CONSENSUSBACKUP_RESTORETREEDB;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_RESTORETREEDB, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_USERDB_BACKUP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_USERDB_BACKUP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusBackup, USERDB_BACKUP, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusBackup_get_SYNC_BACKUP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusBackup_SYNC_BACKUP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusBackup, SYNC_BACKUP, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemBrainsConsensusBackup_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaSystemBrainsConsensusBackup *self, OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler);

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusBackup *new_OrgMinimaSystemBrainsConsensusBackup_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusBackup *create_OrgMinimaSystemBrainsConsensusBackup_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler);

FOUNDATION_EXPORT OrgMinimaObjectsTxPOW *OrgMinimaSystemBrainsConsensusBackup_loadTxPOWWithJavaIoFile_(JavaIoFile *zTxpowFile);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemBrainsConsensusBackup)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusBackup")
