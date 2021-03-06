//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/network/minidapps/DAPPServer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPServer")
#ifdef RESTRICT_OrgMinimaSystemNetworkMinidappsDAPPServer
#define INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPServer 0
#else
#define INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPServer 1
#endif
#undef RESTRICT_OrgMinimaSystemNetworkMinidappsDAPPServer

#if !defined (OrgMinimaSystemNetworkMinidappsDAPPServer_) && (INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPServer || defined(INCLUDE_OrgMinimaSystemNetworkMinidappsDAPPServer))
#define OrgMinimaSystemNetworkMinidappsDAPPServer_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class IOSObjectArray;
@class JavaNetServerSocket;
@class OrgMinimaSystemNetworkMinidappsDAPPManager;

@interface OrgMinimaSystemNetworkMinidappsDAPPServer : NSObject < JavaLangRunnable > {
 @public
  JavaNetServerSocket *mServerSocket_;
  OrgMinimaSystemNetworkMinidappsDAPPManager *mDAPPMAnager_;
  jint mPort_;
  NSString *mHost_;
  jboolean mRunning_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)zPort
withOrgMinimaSystemNetworkMinidappsDAPPManager:(OrgMinimaSystemNetworkMinidappsDAPPManager *)zDAPPMAnager;

- (NSString *)getHost;

- (jint)getPort;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

- (void)run;

- (void)stop;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemNetworkMinidappsDAPPServer)

J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPServer, mServerSocket_, JavaNetServerSocket *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPServer, mDAPPMAnager_, OrgMinimaSystemNetworkMinidappsDAPPManager *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemNetworkMinidappsDAPPServer, mHost_, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemNetworkMinidappsDAPPServer_initWithInt_withOrgMinimaSystemNetworkMinidappsDAPPManager_(OrgMinimaSystemNetworkMinidappsDAPPServer *self, jint zPort, OrgMinimaSystemNetworkMinidappsDAPPManager *zDAPPMAnager);

FOUNDATION_EXPORT OrgMinimaSystemNetworkMinidappsDAPPServer *new_OrgMinimaSystemNetworkMinidappsDAPPServer_initWithInt_withOrgMinimaSystemNetworkMinidappsDAPPManager_(jint zPort, OrgMinimaSystemNetworkMinidappsDAPPManager *zDAPPMAnager) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemNetworkMinidappsDAPPServer *create_OrgMinimaSystemNetworkMinidappsDAPPServer_initWithInt_withOrgMinimaSystemNetworkMinidappsDAPPManager_(jint zPort, OrgMinimaSystemNetworkMinidappsDAPPManager *zDAPPMAnager);

FOUNDATION_EXPORT void OrgMinimaSystemNetworkMinidappsDAPPServer_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemNetworkMinidappsDAPPServer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsDAPPServer")
