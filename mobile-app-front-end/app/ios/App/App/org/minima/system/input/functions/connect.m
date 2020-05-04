//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/connect.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/connect.h"
#include "org/minima/system/network/NetworkHandler.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsconnect

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsconnect_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  NSString *host = IOSObjectArray_Get(nil_chk(zInput), 1);
  jint port = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(zInput, 2));
  OrgMinimaUtilsMessagesMessage *connect = [self getResponseMessageWithNSString:OrgMinimaSystemNetworkNetworkHandler_NETWORK_CONNECT];
  (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk([((OrgMinimaUtilsMessagesMessage *) nil_chk(connect)) addIntWithNSString:@"port" withInt:port])) addStringWithNSString:@"host" withNSString:host];
  [((OrgMinimaSystemNetworkNetworkHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getNetworkHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:connect];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionsconnect_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgMinimaSystemInputCommandFunction;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(doFunctionWithNSStringArray:);
  methods[2].selector = @selector(getNewFunction);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "doFunction", "[LNSString;", "LJavaLangException;" };
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsconnect = { "connect", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsconnect;
}

@end

void OrgMinimaSystemInputFunctionsconnect_init(OrgMinimaSystemInputFunctionsconnect *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"connect");
  [self setHelpWithNSString:@"[host] [port]" withNSString:@"Connect to a Minima node" withNSString:@""];
}

OrgMinimaSystemInputFunctionsconnect *new_OrgMinimaSystemInputFunctionsconnect_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsconnect, init)
}

OrgMinimaSystemInputFunctionsconnect *create_OrgMinimaSystemInputFunctionsconnect_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsconnect, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsconnect)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsconnect, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
