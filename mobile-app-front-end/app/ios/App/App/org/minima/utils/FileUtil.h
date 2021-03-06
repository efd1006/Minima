//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/FileUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaUtilsFileUtil")
#ifdef RESTRICT_OrgMinimaUtilsFileUtil
#define INCLUDE_ALL_OrgMinimaUtilsFileUtil 0
#else
#define INCLUDE_ALL_OrgMinimaUtilsFileUtil 1
#endif
#undef RESTRICT_OrgMinimaUtilsFileUtil

#if !defined (OrgMinimaUtilsFileUtil_) && (INCLUDE_ALL_OrgMinimaUtilsFileUtil || defined(INCLUDE_OrgMinimaUtilsFileUtil))
#define OrgMinimaUtilsFileUtil_

@class IOSObjectArray;

@interface OrgMinimaUtilsFileUtil : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)ConvertFileToHexWithNSString:(NSString *)zFilePath;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaUtilsFileUtil)

inline jint OrgMinimaUtilsFileUtil_get_MAX_STRING(void);
#define OrgMinimaUtilsFileUtil_MAX_STRING 1000
J2OBJC_STATIC_FIELD_CONSTANT(OrgMinimaUtilsFileUtil, MAX_STRING, jint)

FOUNDATION_EXPORT void OrgMinimaUtilsFileUtil_init(OrgMinimaUtilsFileUtil *self);

FOUNDATION_EXPORT OrgMinimaUtilsFileUtil *new_OrgMinimaUtilsFileUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaUtilsFileUtil *create_OrgMinimaUtilsFileUtil_init(void);

FOUNDATION_EXPORT void OrgMinimaUtilsFileUtil_ConvertFileToHexWithNSString_(NSString *zFilePath);

FOUNDATION_EXPORT void OrgMinimaUtilsFileUtil_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaUtilsFileUtil)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaUtilsFileUtil")
