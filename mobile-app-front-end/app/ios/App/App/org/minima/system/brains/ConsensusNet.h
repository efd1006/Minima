//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/brains/ConsensusNet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusNet")
#ifdef RESTRICT_OrgMinimaSystemBrainsConsensusNet
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusNet 0
#else
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusNet 1
#endif
#undef RESTRICT_OrgMinimaSystemBrainsConsensusNet

#if !defined (OrgMinimaSystemBrainsConsensusNet_) && (INCLUDE_ALL_OrgMinimaSystemBrainsConsensusNet || defined(INCLUDE_OrgMinimaSystemBrainsConsensusNet))
#define OrgMinimaSystemBrainsConsensusNet_

@class OrgMinimaDatabaseMinimaDB;
@class OrgMinimaObjectsBaseMiniNumber;
@class OrgMinimaSystemBackupSyncPackage;
@class OrgMinimaSystemBrainsConsensusHandler;
@class OrgMinimaUtilsMessagesMessage;

@interface OrgMinimaSystemBrainsConsensusNet : NSObject {
 @public
  OrgMinimaDatabaseMinimaDB *mDB_;
  OrgMinimaSystemBrainsConsensusHandler *mHandler_;
  jboolean mHardResetAllowed_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaDatabaseMinimaDB:(OrgMinimaDatabaseMinimaDB *)zDB
        withOrgMinimaSystemBrainsConsensusHandler:(OrgMinimaSystemBrainsConsensusHandler *)zHandler;

- (OrgMinimaObjectsBaseMiniNumber *)checkCrossoverWithOrgMinimaSystemBackupSyncPackage:(OrgMinimaSystemBackupSyncPackage *)zIntro;

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

- (void)setHardResestWithBoolean:(jboolean)zHardResetAllowed;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgMinimaSystemBrainsConsensusNet)

J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusNet, mDB_, OrgMinimaDatabaseMinimaDB *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusNet, mHandler_, OrgMinimaSystemBrainsConsensusHandler *)

inline NSString *OrgMinimaSystemBrainsConsensusNet_get_CONSENSUS_PREFIX(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusNet_CONSENSUS_PREFIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusNet, CONSENSUS_PREFIX, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusNet_get_CONSENSUS_NET_INITIALISE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusNet_CONSENSUS_NET_INITIALISE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusNet, CONSENSUS_NET_INITIALISE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusNet_get_CONSENSUS_NET_INTRO(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusNet_CONSENSUS_NET_INTRO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusNet, CONSENSUS_NET_INTRO, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusNet_get_CONSENSUS_NET_TXPOWID(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusNet_CONSENSUS_NET_TXPOWID;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusNet, CONSENSUS_NET_TXPOWID, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusNet_get_CONSENSUS_NET_TXPOWREQUEST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusNet_CONSENSUS_NET_TXPOWREQUEST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusNet, CONSENSUS_NET_TXPOWREQUEST, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusNet_get_CONSENSUS_NET_TXPOW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusNet_CONSENSUS_NET_TXPOW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusNet, CONSENSUS_NET_TXPOW, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemBrainsConsensusNet_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaSystemBrainsConsensusNet *self, OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler);

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusNet *new_OrgMinimaSystemBrainsConsensusNet_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusNet *create_OrgMinimaSystemBrainsConsensusNet_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemBrainsConsensusNet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusNet")
