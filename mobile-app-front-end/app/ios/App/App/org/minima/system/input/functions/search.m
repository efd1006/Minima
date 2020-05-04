//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/search.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/brains/ConsensusPrint.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/search.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionssearch

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionssearch_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  NSString *address = IOSObjectArray_Get(nil_chk(zInput), 1);
  OrgMinimaUtilsMessagesMessage *sender = [self getResponseMessageWithNSString:OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_SEARCH];
  (void) [((OrgMinimaUtilsMessagesMessage *) nil_chk(sender)) addStringWithNSString:@"address" withNSString:address];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:sender];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionssearch_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionssearch = { "search", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionssearch;
}

@end

void OrgMinimaSystemInputFunctionssearch_init(OrgMinimaSystemInputFunctionssearch *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"search");
  [self setHelpWithNSString:@"[address]" withNSString:@"Search for any unspent coins of the given address" withNSString:@""];
}

OrgMinimaSystemInputFunctionssearch *new_OrgMinimaSystemInputFunctionssearch_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionssearch, init)
}

OrgMinimaSystemInputFunctionssearch *create_OrgMinimaSystemInputFunctionssearch_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionssearch, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionssearch)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionssearch, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
