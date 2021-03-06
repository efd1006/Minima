//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/network/minidapps/DAPPManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPManager")
#ifdef RESTRICT_OrgMinimaSystemNetworkMinidappsDAPPManager
#define INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPManager 0
#else
#define INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPManager 1
#endif
#undef RESTRICT_OrgMinimaSystemNetworkMinidappsDAPPManager

#if !defined (OrgMinimaSystemNetworkMinidappsDAPPManager_) && (INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPManager || defined(INCLUDE_OrgMinimaSystemNetworkMinidappsDAPPManager))
#define OrgMinimaSystemNetworkMinidappsDAPPManager_

#define RESTRICT_OrgMinimaSystemSystemHandler 1
#define INCLUDE_OrgMinimaSystemSystemHandler 1
#include "org/minima/system/SystemHandler.h"

@class IOSByteArray;
@class JavaIoFile;
@class OrgMinimaSystemMain;
@class OrgMinimaSystemNetworkMinidappsDAPPServer;
@class OrgMinimaUtilsJsonJSONArray;
@class OrgMinimaUtilsJsonJSONObject;
@class OrgMinimaUtilsMessagesMessage;

@interface OrgMinimaSystemNetworkMinidappsDAPPManager : OrgMinimaSystemSystemHandler {
 @public
  OrgMinimaUtilsJsonJSONArray *CURRENT_MINIDAPPS_;
  NSString *MINIDAPPS_FOLDER_;
  OrgMinimaSystemNetworkMinidappsDAPPServer *mDAPPServer_;
  IOSByteArray *mMINIMAJS_;
  NSString *mHost_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain
                                    withInt:(jint)zPort
                                    withInt:(jint)zRPCPort;

- (NSString *)getCurrentHost;

- (OrgMinimaUtilsJsonJSONArray *)getMiniDAPPS;

- (NSString *)getMiniDAPPSFolder;

- (IOSByteArray *)getMinimaJS;

- (OrgMinimaUtilsJsonJSONObject *)loadConfFileWithJavaIoFile:(JavaIoFile *)zConf;

- (OrgMinimaUtilsJsonJSONArray *)recalculateMiniDAPPS;

- (void)stop;

#pragma mark Protected

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)arg0
                               withNSString:(NSString *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemNetworkMinidappsDAPPManager)

J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPManager, CURRENT_MINIDAPPS_, OrgMinimaUtilsJsonJSONArray *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPManager, MINIDAPPS_FOLDER_, NSString *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPManager, mDAPPServer_, OrgMinimaSystemNetworkMinidappsDAPPServer *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPManager, mMINIMAJS_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPManager, mHost_, NSString *)

inline NSString *OrgMinimaSystemNetworkMinidappsDAPPManager_get_DAPP_INSTALL(void);
inline NSString *OrgMinimaSystemNetworkMinidappsDAPPManager_set_DAPP_INSTALL(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemNetworkMinidappsDAPPManager_DAPP_INSTALL;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemNetworkMinidappsDAPPManager, DAPP_INSTALL, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemNetworkMinidappsDAPPManager_initWithOrgMinimaSystemMain_withInt_withInt_(OrgMinimaSystemNetworkMinidappsDAPPManager *self, OrgMinimaSystemMain *zMain, jint zPort, jint zRPCPort);

FOUNDATION_EXPORT OrgMinimaSystemNetworkMinidappsDAPPManager *new_OrgMinimaSystemNetworkMinidappsDAPPManager_initWithOrgMinimaSystemMain_withInt_withInt_(OrgMinimaSystemMain *zMain, jint zPort, jint zRPCPort) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemNetworkMinidappsDAPPManager *create_OrgMinimaSystemNetworkMinidappsDAPPManager_initWithOrgMinimaSystemMain_withInt_withInt_(OrgMinimaSystemMain *zMain, jint zPort, jint zRPCPort);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemNetworkMinidappsDAPPManager)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPManager")
