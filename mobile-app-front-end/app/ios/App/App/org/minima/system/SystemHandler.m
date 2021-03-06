//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/SystemHandler.java
//

#include "J2ObjC_source.h"
#include "org/minima/system/Main.h"
#include "org/minima/system/SystemHandler.h"
#include "org/minima/utils/messages/MessageProcessor.h"

@interface OrgMinimaSystemSystemHandler () {
 @public
  OrgMinimaSystemMain *mMain_;
}

@end

J2OBJC_FIELD_SETTER(OrgMinimaSystemSystemHandler, mMain_, OrgMinimaSystemMain *)

@implementation OrgMinimaSystemSystemHandler

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain {
  OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_(self, zMain);
  return self;
}

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain
                               withNSString:(NSString *)zName {
  OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_withNSString_(self, zMain, zName);
  return self;
}

- (OrgMinimaSystemMain *)getMainHandler {
  return mMain_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaSystemMain;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaSystemMain:);
  methods[1].selector = @selector(initWithOrgMinimaSystemMain:withNSString:);
  methods[2].selector = @selector(getMainHandler);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mMain_", "LOrgMinimaSystemMain;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaSystemMain;", "LOrgMinimaSystemMain;LNSString;" };
  static const J2ObjcClassInfo _OrgMinimaSystemSystemHandler = { "SystemHandler", "org.minima.system", ptrTable, methods, fields, 7, 0x401, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgMinimaSystemSystemHandler;
}

@end

void OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_(OrgMinimaSystemSystemHandler *self, OrgMinimaSystemMain *zMain) {
  OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_withNSString_(self, zMain, @"");
}

void OrgMinimaSystemSystemHandler_initWithOrgMinimaSystemMain_withNSString_(OrgMinimaSystemSystemHandler *self, OrgMinimaSystemMain *zMain, NSString *zName) {
  OrgMinimaUtilsMessagesMessageProcessor_initWithNSString_(self, zName);
  self->mMain_ = zMain;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaSystemSystemHandler)
