//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/Main.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemMain")
#ifdef RESTRICT_OrgMinimaSystemMain
#define INCLUDE_ALL_OrgMinimaSystemMain 0
#else
#define INCLUDE_ALL_OrgMinimaSystemMain 1
#endif
#undef RESTRICT_OrgMinimaSystemMain

#if !defined (OrgMinimaSystemMain_) && (INCLUDE_ALL_OrgMinimaSystemMain || defined(INCLUDE_OrgMinimaSystemMain))
#define OrgMinimaSystemMain_

#define RESTRICT_OrgMinimaUtilsMessagesMessageProcessor 1
#define INCLUDE_OrgMinimaUtilsMessagesMessageProcessor 1
#include "org/minima/utils/messages/MessageProcessor.h"

@class OrgMinimaObjectsBaseMiniNumber;
@class OrgMinimaSystemBackupBackupManager;
@class OrgMinimaSystemBootstrapUserSimulator;
@class OrgMinimaSystemBrainsConsensusHandler;
@class OrgMinimaSystemExternalProcessManager;
@class OrgMinimaSystemInputInputHandler;
@class OrgMinimaSystemNetworkNetworkHandler;
@class OrgMinimaSystemTxTXMiner;
@class OrgMinimaUtilsMessagesMessage;

@interface OrgMinimaSystemMain : OrgMinimaUtilsMessagesMessageProcessor {
 @public
  OrgMinimaSystemBootstrapUserSimulator *mSim_;
  jboolean mGenesis_;
  jint mPort_;
  jint mRPCPort_;
  jboolean mAutoConnect_;
  NSString *mAutoHost_;
  jint mAutoPort_;
  OrgMinimaObjectsBaseMiniNumber *mCurrentTopBlock_;
  jlong mNodeStartTime_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)zPort
                    withInt:(jint)zRPCPort
                withBoolean:(jboolean)zGenesis
               withNSString:(NSString *)zHomeFolder;

- (OrgMinimaSystemBackupBackupManager *)getBackupManager;

- (OrgMinimaSystemBrainsConsensusHandler *)getConsensusHandler;

- (OrgMinimaSystemInputInputHandler *)getInputHandler;

- (OrgMinimaSystemTxTXMiner *)getMiner;

- (OrgMinimaSystemNetworkNetworkHandler *)getNetworkHandler;

- (jlong)getNodeStartTime;

- (OrgMinimaSystemExternalProcessManager *)getProcessManager;

- (OrgMinimaSystemBootstrapUserSimulator *)getsimulator;

- (void)setAutoConnectWithBoolean:(jboolean)zAuto;

- (void)setAutoConnectHostPortWithNSString:(NSString *)zHost
                                   withInt:(jint)zPort;

- (void)setNewRelCoinWithNSString:(NSString *)zPostURL;

- (void)setNewTxnCommandWithNSString:(NSString *)zExec;

- (void)setSimulatorWithBoolean:(jboolean)zON
                        withInt:(jint)zCount
                    withBoolean:(jboolean)zStress;

- (void)setTraceWithBoolean:(jboolean)zTraceON;

- (void)SystemShutDown;

#pragma mark Protected

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemMain)

J2OBJC_FIELD_SETTER(OrgMinimaSystemMain, mSim_, OrgMinimaSystemBootstrapUserSimulator *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemMain, mAutoHost_, NSString *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemMain, mCurrentTopBlock_, OrgMinimaObjectsBaseMiniNumber *)

inline NSString *OrgMinimaSystemMain_get_SYSTEM_STARTUP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemMain_SYSTEM_STARTUP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemMain, SYSTEM_STARTUP, NSString *)

inline NSString *OrgMinimaSystemMain_get_SYSTEM_INIT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemMain_SYSTEM_INIT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemMain, SYSTEM_INIT, NSString *)

inline NSString *OrgMinimaSystemMain_get_SYSTEM_SHUTDOWN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemMain_SYSTEM_SHUTDOWN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemMain, SYSTEM_SHUTDOWN, NSString *)

inline NSString *OrgMinimaSystemMain_get_SYSTEM_FULLSHUTDOWN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemMain_SYSTEM_FULLSHUTDOWN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemMain, SYSTEM_FULLSHUTDOWN, NSString *)

inline NSString *OrgMinimaSystemMain_get_SYSTEM_ALLSTOP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemMain_SYSTEM_ALLSTOP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemMain, SYSTEM_ALLSTOP, NSString *)

inline NSString *OrgMinimaSystemMain_get_SYSTEM_EVENT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemMain_SYSTEM_EVENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemMain, SYSTEM_EVENT, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemMain_initWithInt_withInt_withBoolean_withNSString_(OrgMinimaSystemMain *self, jint zPort, jint zRPCPort, jboolean zGenesis, NSString *zHomeFolder);

FOUNDATION_EXPORT OrgMinimaSystemMain *new_OrgMinimaSystemMain_initWithInt_withInt_withBoolean_withNSString_(jint zPort, jint zRPCPort, jboolean zGenesis, NSString *zHomeFolder) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemMain *create_OrgMinimaSystemMain_initWithInt_withInt_withBoolean_withNSString_(jint zPort, jint zRPCPort, jboolean zGenesis, NSString *zHomeFolder);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemMain)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemMain")
