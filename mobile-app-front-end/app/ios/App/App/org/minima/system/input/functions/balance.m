//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/balance.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusPrint.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/balance.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsbalance

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsbalance_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  OrgMinimaUtilsMessagesMessage *msg = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_BALANCE];
  if (((IOSObjectArray *) nil_chk(zInput))->size_ > 1) {
    (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(msg)) addStringWithNSString:@"address" withNSString:IOSObjectArray_Get(zInput, 1)];
  }
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionsbalance_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsbalance = { "balance", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsbalance;
}

@end

void OrgMinimaSystemInputFunctionsbalance_init(OrgMinimaSystemInputFunctionsbalance *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"balance");
  [self setHelpWithNSString:@"(address)" withNSString:@"Return the global Minima balance for all coins or just a specific address" withNSString:@""];
}

OrgMinimaSystemInputFunctionsbalance *new_OrgMinimaSystemInputFunctionsbalance_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsbalance, init)
}

OrgMinimaSystemInputFunctionsbalance *create_OrgMinimaSystemInputFunctionsbalance_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsbalance, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsbalance)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsbalance, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
