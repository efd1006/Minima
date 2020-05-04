//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/backup.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/brains/ConsensusBackup.h"
#include "org/minima/system/brains/ConsensusHandler.h"
#include "org/minima/system/input/CommandFunction.h"
#include "org/minima/system/input/functions/backup.h"
#include "org/minima/utils/ResponseStream.h"
#include "org/minima/utils/messages/Message.h"

@implementation OrgMinimaSystemInputFunctionsbackup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaSystemInputFunctionsbackup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput {
  OrgMinimaUtilsMessagesMessage *msg = [self getResponseMessageWithNSString:JreLoadStatic(OrgMinimaSystemBrainsConsensusBackup, CONSENSUSBACKUP_BACKUP)];
  [((OrgMinimaSystemBrainsConsensusHandler *) nil_chk([((OrgMinimaSystemMain *) nil_chk([self getMainHandler])) getConsensusHandler])) PostMessageWithOrgMinimaUtilsMessagesMessage:msg];
  [((OrgMinimaUtilsResponseStream *) nil_chk([self getResponseStream])) endStatusWithBoolean:true withNSString:@""];
}

- (OrgMinimaSystemInputCommandFunction *)getNewFunction {
  return new_OrgMinimaSystemInputFunctionsbackup_init();
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
  static const J2ObjcClassInfo _OrgMinimaSystemInputFunctionsbackup = { "backup", "org.minima.system.input.functions", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemInputFunctionsbackup;
}

@end

void OrgMinimaSystemInputFunctionsbackup_init(OrgMinimaSystemInputFunctionsbackup *self) {
  OrgMinimaSystemInputCommandFunction_initWithNSString_(self, @"backup");
  [self setHelpWithNSString:@"" withNSString:@"Backup the current User details (done automatically when you quit or your balance changes)" withNSString:@""];
}

OrgMinimaSystemInputFunctionsbackup *new_OrgMinimaSystemInputFunctionsbackup_init() {
  J2OBJC_NEW_IMPL(OrgMinimaSystemInputFunctionsbackup, init)
}

OrgMinimaSystemInputFunctionsbackup *create_OrgMinimaSystemInputFunctionsbackup_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaSystemInputFunctionsbackup, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemInputFunctionsbackup)

J2OBJC_NAME_MAPPING(OrgMinimaSystemInputFunctionsbackup, "org.minima.system.input.functions", "OrgMinimaSystemInputFunctions")
