//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/objects/base/MiniString.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaObjectsBaseMiniString")
#ifdef RESTRICT_OrgMinimaObjectsBaseMiniString
#define INCLUDE_ALL_OrgMinimaObjectsBaseMiniString 0
#else
#define INCLUDE_ALL_OrgMinimaObjectsBaseMiniString 1
#endif
#undef RESTRICT_OrgMinimaObjectsBaseMiniString

#if !defined (OrgMinimaObjectsBaseMiniString_) && (INCLUDE_ALL_OrgMinimaObjectsBaseMiniString || defined(INCLUDE_OrgMinimaObjectsBaseMiniString))
#define OrgMinimaObjectsBaseMiniString_

#define RESTRICT_OrgMinimaUtilsStreamable 1
#define INCLUDE_OrgMinimaUtilsStreamable 1
#include "org/minima/utils/Streamable.h"

@class JavaIoDataInputStream;
@class JavaIoDataOutputStream;

@interface OrgMinimaObjectsBaseMiniString : NSObject < OrgMinimaUtilsStreamable > {
 @public
  NSString *mString_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaObjectsBaseMiniString:(OrgMinimaObjectsBaseMiniString *)zString;

- (instancetype)initWithNSString:(NSString *)zString;

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn;

+ (OrgMinimaObjectsBaseMiniString *)ReadFromStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn;

- (NSString *)description;

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaObjectsBaseMiniString)

J2OBJC_FIELD_SETTER(OrgMinimaObjectsBaseMiniString, mString_, NSString *)

FOUNDATION_EXPORT void OrgMinimaObjectsBaseMiniString_initWithNSString_(OrgMinimaObjectsBaseMiniString *self, NSString *zString);

FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniString *new_OrgMinimaObjectsBaseMiniString_initWithNSString_(NSString *zString) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniString *create_OrgMinimaObjectsBaseMiniString_initWithNSString_(NSString *zString);

FOUNDATION_EXPORT void OrgMinimaObjectsBaseMiniString_initWithOrgMinimaObjectsBaseMiniString_(OrgMinimaObjectsBaseMiniString *self, OrgMinimaObjectsBaseMiniString *zString);

FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniString *new_OrgMinimaObjectsBaseMiniString_initWithOrgMinimaObjectsBaseMiniString_(OrgMinimaObjectsBaseMiniString *zString) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniString *create_OrgMinimaObjectsBaseMiniString_initWithOrgMinimaObjectsBaseMiniString_(OrgMinimaObjectsBaseMiniString *zString);

FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniString *OrgMinimaObjectsBaseMiniString_ReadFromStreamWithJavaIoDataInputStream_(JavaIoDataInputStream *zIn);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaObjectsBaseMiniString)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaObjectsBaseMiniString")
