//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/tests/cascader/BlockLevel.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaUtilsTestsCascaderBlockLevel")
#ifdef RESTRICT_OrgMinimaUtilsTestsCascaderBlockLevel
#define INCLUDE_ALL_OrgMinimaUtilsTestsCascaderBlockLevel 0
#else
#define INCLUDE_ALL_OrgMinimaUtilsTestsCascaderBlockLevel 1
#endif
#undef RESTRICT_OrgMinimaUtilsTestsCascaderBlockLevel

#if !defined (OrgMinimaUtilsTestsCascaderBlockLevel_) && (INCLUDE_ALL_OrgMinimaUtilsTestsCascaderBlockLevel || defined(INCLUDE_OrgMinimaUtilsTestsCascaderBlockLevel))
#define OrgMinimaUtilsTestsCascaderBlockLevel_

@interface OrgMinimaUtilsTestsCascaderBlockLevel : NSObject {
 @public
  jint mBlockLevel_;
  jint mBlockNumber_;
  jdouble mPreviousBlock_;
  jdouble mBlockDifficulty_;
}

#pragma mark Public

- (instancetype)init;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaUtilsTestsCascaderBlockLevel)

FOUNDATION_EXPORT void OrgMinimaUtilsTestsCascaderBlockLevel_init(OrgMinimaUtilsTestsCascaderBlockLevel *self);

FOUNDATION_EXPORT OrgMinimaUtilsTestsCascaderBlockLevel *new_OrgMinimaUtilsTestsCascaderBlockLevel_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaUtilsTestsCascaderBlockLevel *create_OrgMinimaUtilsTestsCascaderBlockLevel_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaUtilsTestsCascaderBlockLevel)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaUtilsTestsCascaderBlockLevel")
