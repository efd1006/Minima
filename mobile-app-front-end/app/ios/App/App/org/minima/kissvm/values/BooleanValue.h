//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/values/BooleanValue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaKissvmValuesBooleanValue")
#ifdef RESTRICT_OrgMinimaKissvmValuesBooleanValue
#define INCLUDE_ALL_OrgMinimaKissvmValuesBooleanValue 0
#else
#define INCLUDE_ALL_OrgMinimaKissvmValuesBooleanValue 1
#endif
#undef RESTRICT_OrgMinimaKissvmValuesBooleanValue

#if !defined (OrgMinimaKissvmValuesBooleanValue_) && (INCLUDE_ALL_OrgMinimaKissvmValuesBooleanValue || defined(INCLUDE_OrgMinimaKissvmValuesBooleanValue))
#define OrgMinimaKissvmValuesBooleanValue_

#define RESTRICT_OrgMinimaKissvmValuesNumberValue 1
#define INCLUDE_OrgMinimaKissvmValuesNumberValue 1
#include "org/minima/kissvm/values/NumberValue.h"

@class OrgMinimaObjectsBaseMiniNumber;

@interface OrgMinimaKissvmValuesBooleanValue : OrgMinimaKissvmValuesNumberValue

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)zValue;

- (jint)getValueType;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithDouble:(jdouble)arg0 NS_UNAVAILABLE;

- (instancetype)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype)initWithLong:(jlong)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithOrgMinimaObjectsBaseMiniNumber:(OrgMinimaObjectsBaseMiniNumber *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgMinimaKissvmValuesBooleanValue)

inline jint OrgMinimaKissvmValuesBooleanValue_get_VALUE_BOOLEAN(void);
#define OrgMinimaKissvmValuesBooleanValue_VALUE_BOOLEAN 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgMinimaKissvmValuesBooleanValue, VALUE_BOOLEAN, jint)

inline OrgMinimaKissvmValuesBooleanValue *OrgMinimaKissvmValuesBooleanValue_get_FALSE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgMinimaKissvmValuesBooleanValue *OrgMinimaKissvmValuesBooleanValue_FALSE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaKissvmValuesBooleanValue, FALSE, OrgMinimaKissvmValuesBooleanValue *)

inline OrgMinimaKissvmValuesBooleanValue *OrgMinimaKissvmValuesBooleanValue_get_TRUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgMinimaKissvmValuesBooleanValue *OrgMinimaKissvmValuesBooleanValue_TRUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaKissvmValuesBooleanValue, TRUE, OrgMinimaKissvmValuesBooleanValue *)

FOUNDATION_EXPORT void OrgMinimaKissvmValuesBooleanValue_initWithBoolean_(OrgMinimaKissvmValuesBooleanValue *self, jboolean zValue);

FOUNDATION_EXPORT OrgMinimaKissvmValuesBooleanValue *new_OrgMinimaKissvmValuesBooleanValue_initWithBoolean_(jboolean zValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaKissvmValuesBooleanValue *create_OrgMinimaKissvmValuesBooleanValue_initWithBoolean_(jboolean zValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaKissvmValuesBooleanValue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaKissvmValuesBooleanValue")
