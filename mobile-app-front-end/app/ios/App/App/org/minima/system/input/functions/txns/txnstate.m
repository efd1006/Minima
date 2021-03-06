//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txnstate.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusTxn.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/txns/txnstate.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsTxnstxnstate

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsTxnstxnstate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  jint txn = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(nil_chk(zInput), 1));
  jint txnport = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(zInput, 2));
  NSString *variable = IOSObjectArray_Get(zInput, 3);
  OrgMinimaUtilsMessagesMessage *msg = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusTxn_CONSENSUS_TXNSTATEVAR];
  (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(msg)) addIntWithNSString:@"transaction" withInt:txn];
  (void) [msg addIntWithNSString:@"stateport" withInt:txnport];
  (void) [msg addStringWithNSString:@"statevariable" withNSString:variable];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionsTxnstxnstate_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsTxnstxnstate = { "txnstate", "org.minima.system.input.functions.txns", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsTxnstxnstate;
}

@end

void OrgMinimaSystemInputFunctionsTxnstxnstate_init(OrgMinimaSystemInputFunctionsTxnstxnstate *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"txnstate");
  [self setHelpWithNSString:@"[id] [port] [value]" withNSString:@"Add a state variable to the transaction" withNSString:@""];
}

OrgMinimaSystemInputFunctionsTxnstxnstate *new_OrgMinimaSystemInputFunctionsTxnstxnstate_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsTxnstxnstate, init)
}

OrgMinimaSystemInputFunctionsTxnstxnstate *create_OrgMinimaSystemInputFunctionsTxnstxnstate_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsTxnstxnstate, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsTxnstxnstate)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsTxnstxnstate, "org.minima.system.input.functions.txns", "OrgMinimaSystemInputFunctionsTxns")
