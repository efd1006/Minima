//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/keepcoin.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusUser.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/keepcoin.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionskeepcoin

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionskeepcoin_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  NSString *coinid = IOSObjectArray_Get(nil_chk(zInput), 1);
  OrgMinimaUtilsMessagesMessage *sender = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusUser_CONSENSUS_KEEPCOIN];
  (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(sender)) addStringWithNSString:@"coinid" withNSString:coinid];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:sender];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionskeepcoin_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionskeepcoin = { "keepcoin", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionskeepcoin;
}

@end

void OrgMinimaSystemInputFunctionskeepcoin_init(OrgMinimaSystemInputFunctionskeepcoin *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"keepcoin");
  [self setHelpWithNSString:@"[coinid]" withNSString:@"Add a coin to the list of coins you keep track of. MUST be a recent coin in the current blocks." withNSString:@""];
}

OrgMinimaSystemInputFunctionskeepcoin *new_OrgMinimaSystemInputFunctionskeepcoin_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionskeepcoin, init)
}

OrgMinimaSystemInputFunctionskeepcoin *create_OrgMinimaSystemInputFunctionskeepcoin_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionskeepcoin, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionskeepcoin)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionskeepcoin, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
