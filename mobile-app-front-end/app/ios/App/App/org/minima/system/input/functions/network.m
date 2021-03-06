//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/network.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusPrint.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/network.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsnetwork

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsnetwork_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  OrgMinimaUtilsMessagesMessage *msg = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_NETWORK];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionsnetwork_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsnetwork = { "network", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsnetwork;
}

@end

void OrgMinimaSystemInputFunctionsnetwork_init(OrgMinimaSystemInputFunctionsnetwork *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"network");
  [self setHelpWithNSString:@"" withNSString:@"Show all current network connections" withNSString:@""];
}

OrgMinimaSystemInputFunctionsnetwork *new_OrgMinimaSystemInputFunctionsnetwork_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsnetwork, init)
}

OrgMinimaSystemInputFunctionsnetwork *create_OrgMinimaSystemInputFunctionsnetwork_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsnetwork, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsnetwork)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsnetwork, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
