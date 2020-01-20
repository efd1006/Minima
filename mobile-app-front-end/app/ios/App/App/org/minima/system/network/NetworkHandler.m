//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/network/NetworkHandler.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Thread.h"
#include "java/util/ArrayList.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/SystemHandler.h"
#include "org/minima/system/input/InputHandler.h"
#include "org/minima/system/network/MultiServer.h"
#include "org/minima/system/network/NetClient.h"
#include "org/minima/system/network/NetworkHandler.h"
#include "org/minima/system/network/WebProxyManager.h"
#include "org/minima/system/network/rpc/RPCServer.h"
#include "org/minima/utils/MinimaLogger.h"
#include "org/minima/utils/messages/Message.h"
#include "org/minima/utils/messages/TimerMessage.h"

@interface OrgMinimaSystemNetworkNetworkHandler ()

- (void)sendToAllWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

@end

__attribute__((unused)) static void OrgMinimaSystemNetworkNetworkHandler_sendToAllWithOrgMinimaUtilsMessagesMessage_(OrgMinimaSystemNetworkNetworkHandler *self, OrgMinimaUtilsMessagesMessage *zMessage);

NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_STARTUP = @"NETWORK_START";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_SHUTDOWN = @"NETWORK_SHUTDOWN";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_CONNECT = @"NETWORK_CONNECT";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_DISCONNECT = @"NETWORK_DISCONNECT";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_NEWCLIENT = @"NETWORK_NEWCLIENT";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_CLIENTERROR = @"NETWORK_CLIENTERROR";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_PING = @"NETWORK_PING";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_TRACE = @"NETWORK_TRACE";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_SENDALL = @"NETWORK_SENDALL";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_ALLSTOP = @"NETWORK_ALLSTOP";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_WEBPROXY = @"NETWORK_WEBPROXY";
NSString *OrgMinimaSystemNetworkNetworkHandler_NETWORK_NOTIFY = @"NETWORK_NOTIFY";

@implementation OrgMinimaSystemNetworkNetworkHandler

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain {
  OrgMinimaSystemNetworkNetworkHandler_initWithOrgMinimaSystemMain_(self, zMain);
  return self;
}

- (OrgMinimaSystemNetworkMultiServer *)getServer {
  return mServer_;
}

- (OrgMinimaSystemNetworkRpcRPCServer *)getRPCServer {
  return mRPCServer_;
}

- (void)setGlobalReconnectWithBoolean:(jboolean)zGlobalReconnect {
  mGlobalReconnect_ = zGlobalReconnect;
}

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage {
  if ([((OrgMinimaUtilsMessagesMessage *) nil_chk(zMessage)) isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_STARTUP]) {
    OrgMinimaUtilsMinimaLogger_logWithNSString_(@"Network Startup..");
    jint port = [zMessage getIntegerWithNSString:@"port"];
    jint rpcport = [zMessage getIntegerWithNSString:@"rpcport"];
    JreStrongAssignAndConsume(&mServer_, new_OrgMinimaSystemNetworkMultiServer_initWithOrgMinimaSystemNetworkNetworkHandler_withInt_(self, port));
    JavaLangThread *multimain = create_JavaLangThread_initWithJavaLangRunnable_(mServer_);
    [multimain start];
    JreStrongAssignAndConsume(&mRPCServer_, new_OrgMinimaSystemNetworkRpcRPCServer_initWithOrgMinimaSystemInputInputHandler_withInt_([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getInputHandler], rpcport));
    JavaLangThread *rpc = create_JavaLangThread_initWithJavaLangRunnable_(mRPCServer_);
    [rpc start];
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_SHUTDOWN]) {
    @try {
      [((OrgMinimaSystemNetworkMultiServer *) nil_chk(mServer_)) stop];
    }
    @catch (JavaLangException *exc) {
    }
    @try {
      [((OrgMinimaSystemNetworkRpcRPCServer *) nil_chk(mRPCServer_)) stop];
    }
    @catch (JavaLangException *exc) {
    }
    @try {
      if (mProxyManager_ != nil) {
        [mProxyManager_ PostMessageWithNSString:OrgMinimaSystemNetworkWebProxyManager_WEBPROXY_SHUTDOWN];
      }
    }
    @catch (JavaLangException *exc) {
    }
    OrgMinimaUtilsMessagesMessage *msg = create_OrgMinimaUtilsMessagesMessage_initWithNSString_(OrgMinimaSystemNetworkNetClient_NETCLIENT_SHUTDOWN);
    for (OrgMinimaSystemNetworkNetClient * __strong client in nil_chk(mClients_)) {
      [((OrgMinimaSystemNetworkNetClient *) nil_chk(client)) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
    }
    [self stopMessageProcessor];
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_NOTIFY]) {
    if (mProxyManager_ != nil) {
      [mProxyManager_ PostMessageWithNSString:OrgMinimaSystemNetworkWebProxyManager_WEBPROXY_NOTIFY];
    }
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_WEBPROXY]) {
    NSString *host = [zMessage getStringWithNSString:@"host"];
    jint port = [zMessage getIntegerWithNSString:@"port"];
    NSString *webhost = [zMessage getStringWithNSString:@"webhostid"];
    if (mProxyManager_ != nil) {
      [mProxyManager_ PostMessageWithNSString:OrgMinimaSystemNetworkWebProxyManager_WEBPROXY_SHUTDOWN];
    }
    JreStrongAssignAndConsume(&mProxyManager_, new_OrgMinimaSystemNetworkWebProxyManager_initWithNSString_withInt_withNSString_withOrgMinimaSystemNetworkNetworkHandler_(host, port, webhost, self));
    OrgMinimaSystemInputInputHandler_endResponseWithOrgMinimaUtilsMessagesMessage_withBoolean_withNSString_(zMessage, true, @"ProxyWebLink started..");
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_CONNECT]) {
    NSString *host = [zMessage getStringWithNSString:@"host"];
    jint port = [zMessage getIntegerWithNSString:@"port"];
    OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("$$CI", @"Attempting to connect to ", host, ':', port));
    OrgMinimaSystemNetworkNetClient *client = create_OrgMinimaSystemNetworkNetClient_initWithNSString_withInt_withOrgMinimaSystemNetworkNetworkHandler_(host, port, self);
    [self PostMessageWithOrgMinimaUtilsMessagesMessage:[create_OrgMinimaUtilsMessagesMessage_initWithNSString_(OrgMinimaSystemNetworkNetworkHandler_NETWORK_NEWCLIENT) addObjectWithNSString:@"client" withId:client]];
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_DISCONNECT]) {
    NSString *uid = [zMessage getStringWithNSString:@"uid"];
    for (OrgMinimaSystemNetworkNetClient * __strong client in nil_chk(mClients_)) {
      if ([((NSString *) nil_chk([((OrgMinimaSystemNetworkNetClient *) nil_chk(client)) getUID])) isEqual:uid]) {
        [client noReconnect];
        [client PostMessageWithNSString:OrgMinimaSystemNetworkNetClient_NETCLIENT_SHUTDOWN];
        break;
      }
    }
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_NEWCLIENT]) {
    OrgMinimaSystemNetworkNetClient *client = (OrgMinimaSystemNetworkNetClient *) cast_chk([zMessage getObjectWithNSString:@"client"], [OrgMinimaSystemNetworkNetClient class]);
    [((JavaUtilArrayList *) nil_chk(mClients_)) addWithId:client];
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_CLIENTERROR]) {
    OrgMinimaSystemNetworkNetClient *client = (OrgMinimaSystemNetworkNetClient *) cast_chk([zMessage getObjectWithNSString:@"client"], [OrgMinimaSystemNetworkNetClient class]);
    jboolean reconnect = [((OrgMinimaSystemNetworkNetClient *) nil_chk(client)) isReconnect];
    if (reconnect && mGlobalReconnect_) {
      NSString *host = [client getHost];
      jint port = [client getPort];
      OrgMinimaUtilsMessagesTimerMessage *recon = create_OrgMinimaUtilsMessagesTimerMessage_initWithInt_withNSString_(30000, OrgMinimaSystemNetworkNetworkHandler_NETWORK_CONNECT);
      [recon addStringWithNSString:@"host" withNSString:host];
      [recon addIntWithNSString:@"port" withInt:port];
      OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("$$CI$", @"Attempting reconnect to ", host, ':', port, @" in 30s.."));
      [self PostTimerMessageWithOrgMinimaUtilsMessagesTimerMessage:recon];
    }
    [((JavaUtilArrayList *) nil_chk(mClients_)) removeWithId:client];
    [client PostMessageWithOrgMinimaUtilsMessagesMessage:create_OrgMinimaUtilsMessagesMessage_initWithNSString_(OrgMinimaSystemNetworkNetClient_NETCLIENT_SHUTDOWN)];
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_TRACE]) {
    jboolean traceon = [zMessage getBooleanWithNSString:@"trace"];
    [self setLOGWithBoolean:traceon];
    for (OrgMinimaSystemNetworkNetClient * __strong client in nil_chk(mClients_)) {
      [((OrgMinimaSystemNetworkNetClient *) nil_chk(client)) setLOGWithBoolean:traceon];
    }
  }
  else if ([zMessage isMessageTypeWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_SENDALL]) {
    OrgMinimaUtilsMessagesMessage *msg = (OrgMinimaUtilsMessagesMessage *) cast_chk([zMessage getObjectWithNSString:@"message"], [OrgMinimaUtilsMessagesMessage class]);
    OrgMinimaSystemNetworkNetworkHandler_sendToAllWithOrgMinimaUtilsMessagesMessage_(self, msg);
  }
}

- (void)sendToAllWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage {
  OrgMinimaSystemNetworkNetworkHandler_sendToAllWithOrgMinimaUtilsMessagesMessage_(self, zMessage);
}

- (JavaUtilArrayList *)getNetClients {
  return mClients_;
}

- (void)dealloc {
  RELEASE_(mServer_);
  RELEASE_(mRPCServer_);
  RELEASE_(mProxyManager_);
  RELEASE_(mClients_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaSystemNetworkMultiServer;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaSystemNetworkRpcRPCServer;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 4, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaSystemMain:);
  methods[1].selector = @selector(getServer);
  methods[2].selector = @selector(getRPCServer);
  methods[3].selector = @selector(setGlobalReconnectWithBoolean:);
  methods[4].selector = @selector(processMessageWithOrgMinimaUtilsMessagesMessage:);
  methods[5].selector = @selector(sendToAllWithOrgMinimaUtilsMessagesMessage:);
  methods[6].selector = @selector(getNetClients);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NETWORK_STARTUP", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "NETWORK_SHUTDOWN", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "NETWORK_CONNECT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "NETWORK_DISCONNECT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "NETWORK_NEWCLIENT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "NETWORK_CLIENTERROR", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "NETWORK_PING", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "NETWORK_TRACE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "NETWORK_SENDALL", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "NETWORK_ALLSTOP", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "NETWORK_WEBPROXY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "NETWORK_NOTIFY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "mServer_", "LOrgMinimaSystemNetworkMultiServer;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRPCServer_", "LOrgMinimaSystemNetworkRpcRPCServer;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mProxyManager_", "LOrgMinimaSystemNetworkWebProxyManager;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mClients_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 20, -1 },
    { "mGlobalReconnect_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaSystemMain;", "setGlobalReconnect", "Z", "processMessage", "LOrgMinimaUtilsMessagesMessage;", "LJavaLangException;", "sendToAll", "()Ljava/util/ArrayList<Lorg/minima/system/network/NetClient;>;", &OrgMinimaSystemNetworkNetworkHandler_NETWORK_STARTUP, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_SHUTDOWN, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_CONNECT, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_DISCONNECT, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_NEWCLIENT, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_CLIENTERROR, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_PING, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_TRACE, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_SENDALL, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_ALLSTOP, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_WEBPROXY, &OrgMinimaSystemNetworkNetworkHandler_NETWORK_NOTIFY, "Ljava/util/ArrayList<Lorg/minima/system/network/NetClient;>;" };
  static const J2ObjcClassInfo _OrgMinimaSystemNetworkNetworkHandler = { "NetworkHandler", "org.minima.system.network", ptrTable, methods, fields, 7, 0x1, 7, 17, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemNetworkNetworkHandler;
}

@end

void OrgMinimaSystemNetworkNetworkHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemNetworkNetworkHandler *self, OrgMinimaSystemMain *zMain) {
  OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_withNSString_(self, zMain, @"NETWORK");
  JreStrongAssignAndConsume(&self->mClients_, new_JavaUtilArrayList_init());
  self->mGlobalReconnect_ = true;
}

OrgMinimaSystemNetworkNetworkHandler *new_OrgMinimaSystemNetworkNetworkHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemMain *zMain) {
  J2OBJC_NEW_IMPL(OrgMinimaSystemNetworkNetworkHandler, initWithOrgMinimaSystemMain_, zMain)
}

OrgMinimaSystemNetworkNetworkHandler *create_OrgMinimaSystemNetworkNetworkHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemMain *zMain) {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemNetworkNetworkHandler, initWithOrgMinimaSystemMain_, zMain)
}

void OrgMinimaSystemNetworkNetworkHandler_sendToAllWithOrgMinimaUtilsMessagesMessage_(OrgMinimaSystemNetworkNetworkHandler *self, OrgMinimaUtilsMessagesMessage *zMessage) {
  for (OrgMinimaSystemNetworkNetClient * __strong client in nil_chk(self->mClients_)) {
    [((OrgMinimaSystemNetworkNetClient *) nil_chk(client)) PostMessageWithOrgMinimaUtilsMessagesMessage:zMessage];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemNetworkNetworkHandler)
