//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txncreate.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusTxn.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/txns/txncreate.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsTxnstxncreate

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsTxnstxncreate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:[self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusTxn_CONSENSUS_TXNCREATE]];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return create_OrgMinimaSystemInputFunctionsTxnstxncreate_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsTxnstxncreate = { "txncreate", "org.minima.system.input.functions.txns", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsTxnstxncreate;
}

@end

void OrgMinimaSystemInputFunctionsTxnstxncreate_init(OrgMinimaSystemInputFunctionsTxnstxncreate *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"txncreate");
  [self setHelpWithNSString:@"" withNSString:@"Create a new custom transaction" withNSString:@""];
}

OrgMinimaSystemInputFunctionsTxnstxncreate *new_OrgMinimaSystemInputFunctionsTxnstxncreate_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsTxnstxncreate, init)
}

OrgMinimaSystemInputFunctionsTxnstxncreate *create_OrgMinimaSystemInputFunctionsTxnstxncreate_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsTxnstxncreate, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsTxnstxncreate)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsTxnstxncreate, "org.minima.system.input.functions.txns", "OrgMinimaSystemInputFunctionsTxns")
