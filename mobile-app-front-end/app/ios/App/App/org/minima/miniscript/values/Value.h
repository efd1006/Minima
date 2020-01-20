//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/values/Value.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptValuesValue")
#ifdef RESTRICT_OrgMinimaMiniscriptValuesValue
#define INCLUDE_ALL_OrgMinimaMiniscriptValuesValue 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptValuesValue 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptValuesValue

#if !defined (OrgMinimaMiniscriptValuesValue_) && (INCLUDE_ALL_OrgMinimaMiniscriptValuesValue || defined(INCLUDE_OrgMinimaMiniscriptValuesValue))
#define OrgMinimaMiniscriptValuesValue_

@class IOSByteArray;
@class IOSObjectArray;
@class OrgMinimaObjectsBaseMiniData;
@class OrgMinimaObjectsBaseMiniNumber;

@interface OrgMinimaMiniscriptValuesValue : NSObject {
 @public
  OrgMinimaObjectsBaseMiniNumber *mNumber_;
  OrgMinimaObjectsBaseMiniData *mData_;
}

#pragma mark Public

- (instancetype)init;

- (OrgMinimaMiniscriptValuesValue *)addWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (OrgMinimaMiniscriptValuesValue *)divWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (OrgMinimaObjectsBaseMiniData *)getMiniData;

- (OrgMinimaObjectsBaseMiniNumber *)getNumber;

- (IOSByteArray *)getRawData;

+ (OrgMinimaMiniscriptValuesValue *)getValueWithNSString:(NSString *)zValue;

- (jint)getValueType;

+ (jint)getValueTypeWithNSString:(NSString *)zValue;

- (jboolean)isEqualWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (jboolean)isFalse;

- (jboolean)isLessWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (jboolean)isLessEqualWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (jboolean)isMoreWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (jboolean)isMoreEqualWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (jboolean)isTrue;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

- (OrgMinimaMiniscriptValuesValue *)multWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

- (OrgMinimaMiniscriptValuesValue *)subWithOrgMinimaMiniscriptValuesValue:(OrgMinimaMiniscriptValuesValue *)zValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptValuesValue)

J2OBJC_FIELD_SETTER(OrgMinimaMiniscriptValuesValue, mNumber_, OrgMinimaObjectsBaseMiniNumber *)
J2OBJC_FIELD_SETTER(OrgMinimaMiniscriptValuesValue, mData_, OrgMinimaObjectsBaseMiniData *)

FOUNDATION_EXPORT void OrgMinimaMiniscriptValuesValue_init(OrgMinimaMiniscriptValuesValue *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptValuesValue *OrgMinimaMiniscriptValuesValue_getValueWithNSString_(NSString *zValue);

FOUNDATION_EXPORT jint OrgMinimaMiniscriptValuesValue_getValueTypeWithNSString_(NSString *zValue);

FOUNDATION_EXPORT void OrgMinimaMiniscriptValuesValue_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptValuesValue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptValuesValue")
