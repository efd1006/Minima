//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txnsignauto.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusTxn.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/txns/txnsignauto.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsTxnstxnsignauto

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsTxnstxnsignauto_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  jint txn = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(nil_chk(zInput), 1));
  OrgMinimaUtilsMessagesMessage *msg = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusTxn_CONSENSUS_TXNAUTOSIGN];
  (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(msg)) addIntWithNSString:@"transaction" withInt:txn];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionsTxnstxnsignauto_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsTxnstxnsignauto = { "txnsignauto", "org.minima.system.input.functions.txns", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsTxnstxnsignauto;
}

@end

void OrgMinimaSystemInputFunctionsTxnstxnsignauto_init(OrgMinimaSystemInputFunctionsTxnstxnsignauto *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"txnsignauto");
  [self setHelpWithNSString:@"[id]" withNSString:@"Clear all previous signatures. Scan inputs and auto sign simple addresses. Useful if you edit a txnauto.. you can resign with this." withNSString:@""];
}

OrgMinimaSystemInputFunctionsTxnstxnsignauto *new_OrgMinimaSystemInputFunctionsTxnstxnsignauto_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsTxnstxnsignauto, init)
}

OrgMinimaSystemInputFunctionsTxnstxnsignauto *create_OrgMinimaSystemInputFunctionsTxnstxnsignauto_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsTxnstxnsignauto, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsTxnstxnsignauto)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsTxnstxnsignauto, "org.minima.system.input.functions.txns", "OrgMinimaSystemInputFunctionsTxns")
