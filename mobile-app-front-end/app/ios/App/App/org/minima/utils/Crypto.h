//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/Crypto.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaUtilsCrypto")
#ifdef RESTRICT_OrgMinimaUtilsCrypto
#define INCLUDE_ALL_OrgMinimaUtilsCrypto 0
#else
#define INCLUDE_ALL_OrgMinimaUtilsCrypto 1
#endif
#undef RESTRICT_OrgMinimaUtilsCrypto

#if !defined (OrgMinimaUtilsCrypto_) && (INCLUDE_ALL_OrgMinimaUtilsCrypto || defined(INCLUDE_OrgMinimaUtilsCrypto))
#define OrgMinimaUtilsCrypto_

@class IOSByteArray;
@class IOSObjectArray;
@class JavaMathBigInteger;
@class OrgMinimaObjectsBaseMiniData;
@protocol OrgMinimaUtilsStreamable;

@interface OrgMinimaUtilsCrypto : NSObject

#pragma mark Public

- (instancetype)init;

+ (OrgMinimaUtilsCrypto *)getInstance;

- (OrgMinimaObjectsBaseMiniData *)hashAllObjectsWithOrgMinimaUtilsStreamableArray:(IOSObjectArray *)zObjects;

- (IOSByteArray *)hashDataWithByteArray:(IOSByteArray *)zData;

- (IOSByteArray *)hashDataWithByteArray:(IOSByteArray *)zData
                                withInt:(jint)zBitLength;

- (OrgMinimaObjectsBaseMiniData *)hashObjectWithOrgMinimaUtilsStreamable:(id<OrgMinimaUtilsStreamable>)zObject;

- (OrgMinimaObjectsBaseMiniData *)hashObjectWithOrgMinimaUtilsStreamable:(id<OrgMinimaUtilsStreamable>)zObject
                                                                 withInt:(jint)zBitLength;

- (OrgMinimaObjectsBaseMiniData *)hashObjectsWithOrgMinimaUtilsStreamable:(id<OrgMinimaUtilsStreamable>)zLeftObject
                                             withOrgMinimaUtilsStreamable:(id<OrgMinimaUtilsStreamable>)zRightObject2;

- (OrgMinimaObjectsBaseMiniData *)hashObjectsWithOrgMinimaUtilsStreamable:(id<OrgMinimaUtilsStreamable>)zLeftObject
                                             withOrgMinimaUtilsStreamable:(id<OrgMinimaUtilsStreamable>)zRightObject2
                                                                  withInt:(jint)zBitLength;

- (IOSByteArray *)hashSHA2WithByteArray:(IOSByteArray *)zData;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

@end

J2OBJC_STATIC_INIT(OrgMinimaUtilsCrypto)

inline JavaMathBigInteger *OrgMinimaUtilsCrypto_get_MAX_VAL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigInteger *OrgMinimaUtilsCrypto_MAX_VAL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaUtilsCrypto, MAX_VAL, JavaMathBigInteger *)

inline OrgMinimaObjectsBaseMiniData *OrgMinimaUtilsCrypto_get_MAX_HASH(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniData *OrgMinimaUtilsCrypto_MAX_HASH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaUtilsCrypto, MAX_HASH, OrgMinimaObjectsBaseMiniData *)

inline JavaMathBigInteger *OrgMinimaUtilsCrypto_get_MEGA_VAL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaMathBigInteger *OrgMinimaUtilsCrypto_MEGA_VAL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaUtilsCrypto, MEGA_VAL, JavaMathBigInteger *)

inline OrgMinimaObjectsBaseMiniData *OrgMinimaUtilsCrypto_get_MEGA_HASH(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgMinimaObjectsBaseMiniData *OrgMinimaUtilsCrypto_MEGA_HASH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaUtilsCrypto, MEGA_HASH, OrgMinimaObjectsBaseMiniData *)

FOUNDATION_EXPORT OrgMinimaUtilsCrypto *OrgMinimaUtilsCrypto_getInstance(void);

FOUNDATION_EXPORT void OrgMinimaUtilsCrypto_init(OrgMinimaUtilsCrypto *self);

FOUNDATION_EXPORT OrgMinimaUtilsCrypto *new_OrgMinimaUtilsCrypto_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaUtilsCrypto *create_OrgMinimaUtilsCrypto_init(void);

FOUNDATION_EXPORT void OrgMinimaUtilsCrypto_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaUtilsCrypto)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaUtilsCrypto")
