//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/tokens.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusPrint.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/tokens.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionstokens

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionstokens_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  OrgMinimaUtilsMessagesMessage *msg = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_TOKENS];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionstokens_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionstokens = { "tokens", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionstokens;
}

@end

void OrgMinimaSystemInputFunctionstokens_init(OrgMinimaSystemInputFunctionstokens *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"tokens");
  [self setHelpWithNSString:@"" withNSString:@"List all known tokens" withNSString:@""];
}

OrgMinimaSystemInputFunctionstokens *new_OrgMinimaSystemInputFunctionstokens_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionstokens, init)
}

OrgMinimaSystemInputFunctionstokens *create_OrgMinimaSystemInputFunctionstokens_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionstokens, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionstokens)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionstokens, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
