//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/tests/cascader/BlockLevel.java
//

#include "J2ObjC_source.h"
#include "org/minima/utils/tests/cascader/BlockLevel.h"

@implementation OrgMinimaUtilsTestsCascaderBlockLevel

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaUtilsTestsCascaderBlockLevel_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  return JreStrcat("$I$I$D$D", @"N:", mBlockNumber_, @" L:", mBlockLevel_, @" D:", mBlockDifficulty_, @" P:", mPreviousBlock_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mBlockLevel_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "mBlockNumber_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "mPreviousBlock_", "D", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "mBlockDifficulty_", "D", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString" };
  static const J2ObjcClassInfo _OrgMinimaUtilsTestsCascaderBlockLevel = { "BlockLevel", "org.minima.utils.tests.cascader", ptrTable, methods, fields, 7, 0x1, 2, 4, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsTestsCascaderBlockLevel;
}

@end

void OrgMinimaUtilsTestsCascaderBlockLevel_init(OrgMinimaUtilsTestsCascaderBlockLevel *self) {
  NSObject_init(self);
}

OrgMinimaUtilsTestsCascaderBlockLevel *new_OrgMinimaUtilsTestsCascaderBlockLevel_init() {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsTestsCascaderBlockLevel, init)
}

OrgMinimaUtilsTestsCascaderBlockLevel *create_OrgMinimaUtilsTestsCascaderBlockLevel_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsTestsCascaderBlockLevel, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsTestsCascaderBlockLevel)
