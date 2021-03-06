//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/brains/ConsensusHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusHandler")
#ifdef RESTRICT_OrgMinimaSystemBrainsConsensusHandler
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusHandler 0
#else
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusHandler 1
#endif
#undef RESTRICT_OrgMinimaSystemBrainsConsensusHandler

#if !defined (OrgMinimaSystemBrainsConsensusHandler_) && (INCLUDE_ALL_OrgMinimaSystemBrainsConsensusHandler || defined(INCLUDE_OrgMinimaSystemBrainsConsensusHandler))
#define OrgMinimaSystemBrainsConsensusHandler_

#define RESTRICT_OrgMinimaSystemSystemHandler 1
#define INCLUDE_OrgMinimaSystemSystemHandler 1
#include "org/minima/system/SystemHandler.h"

@class JavaUtilArrayList;
@class OrgMinimaDatabaseMinimaDB;
@class OrgMinimaSystemBrainsConsensusBackup;
@class OrgMinimaSystemBrainsConsensusNet;
@class OrgMinimaSystemBrainsConsensusPrint;
@class OrgMinimaSystemBrainsConsensusTxn;
@class OrgMinimaSystemBrainsConsensusUser;
@class OrgMinimaSystemMain;
@class OrgMinimaUtilsMessagesMessage;
@protocol OrgMinimaNativeListener;

@interface OrgMinimaSystemBrainsConsensusHandler : OrgMinimaSystemSystemHandler {
 @public
  jboolean mPrintChain_;
  OrgMinimaDatabaseMinimaDB *mMainDB_;
  OrgMinimaSystemBrainsConsensusTxn *mConsensusTxn_;
  OrgMinimaSystemBrainsConsensusNet *mConsensusNet_;
  OrgMinimaSystemBrainsConsensusUser *mConsensusUser_;
  OrgMinimaSystemBrainsConsensusPrint *mConsensusPrint_;
  OrgMinimaSystemBrainsConsensusBackup *mConsensusBackup_;
  JavaUtilArrayList *mListeners_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain;

- (void)addListenerWithOrgMinimaNativeListener:(id<OrgMinimaNativeListener>)zListen;

- (void)clearListeners;

- (void)genesis;

- (void)removeListenerWithOrgMinimaNativeListener:(id<OrgMinimaNativeListener>)zListen;

- (void)setBackUpManager;

- (void)setHardResetAllowedWithBoolean:(jboolean)zHardResetAllowed;

- (void)updateListenersWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

#pragma mark Protected

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)arg0
                               withNSString:(NSString *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemBrainsConsensusHandler)

J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mMainDB_, OrgMinimaDatabaseMinimaDB *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mConsensusTxn_, OrgMinimaSystemBrainsConsensusTxn *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mConsensusNet_, OrgMinimaSystemBrainsConsensusNet *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mConsensusUser_, OrgMinimaSystemBrainsConsensusUser *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mConsensusPrint_, OrgMinimaSystemBrainsConsensusPrint *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mConsensusBackup_, OrgMinimaSystemBrainsConsensusBackup *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusHandler, mListeners_, JavaUtilArrayList *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_PROCESSTXPOW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_PROCESSTXPOW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_PROCESSTXPOW, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_PRE_PROCESSTXPOW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_PRE_PROCESSTXPOW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_PRE_PROCESSTXPOW, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_ACTIVATEMINE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_ACTIVATEMINE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_ACTIVATEMINE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_MINEBLOCK(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_MINEBLOCK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_MINEBLOCK, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_GIMME50(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_GIMME50;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_GIMME50, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_CREATETRANS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_CREATETRANS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_CREATETRANS, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_SENDTRANS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_SENDTRANS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_SENDTRANS, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_FINISHED_MINE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_FINISHED_MINE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_FINISHED_MINE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_CREATETOKEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_CREATETOKEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_CREATETOKEN, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_NOTIFY_QUIT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_NOTIFY_QUIT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_NOTIFY_QUIT, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_NOTIFY_BALANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_NOTIFY_BALANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_NOTIFY_BALANCE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusHandler_get_CONSENSUS_NOTIFY_NEWBLOCK(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusHandler_CONSENSUS_NOTIFY_NEWBLOCK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusHandler, CONSENSUS_NOTIFY_NEWBLOCK, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemBrainsConsensusHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemBrainsConsensusHandler *self, OrgMinimaSystemMain *zMain);

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusHandler *new_OrgMinimaSystemBrainsConsensusHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemMain *zMain) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusHandler *create_OrgMinimaSystemBrainsConsensusHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemMain *zMain);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemBrainsConsensusHandler)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusHandler")
