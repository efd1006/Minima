//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/base/REV.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaKissvmFunctionsBaseREV")
#ifdef RESTRICT_OrgMinimaKissvmFunctionsBaseREV
#define INCLUDE_ALL_OrgMinimaKissvmFunctionsBaseREV 0
#else
#define INCLUDE_ALL_OrgMinimaKissvmFunctionsBaseREV 1
#endif
#undef RESTRICT_OrgMinimaKissvmFunctionsBaseREV

#if !defined (OrgMinimaKissvmFunctionsBaseREV_) && (INCLUDE_ALL_OrgMinimaKissvmFunctionsBaseREV || defined(INCLUDE_OrgMinimaKissvmFunctionsBaseREV))
#define OrgMinimaKissvmFunctionsBaseREV_

#define RESTRICT_OrgMinimaKissvmFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaKissvmFunctionsMinimaFunction 1
#include "org/minima/kissvm/functions/MinimaFunction.h"

@class OrgMinimaKissvmContract;
@class OrgMinimaKissvmValuesValue;

@interface OrgMinimaKissvmFunctionsBaseREV : OrgMinimaKissvmFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaKissvmFunctionsBaseREV)

FOUNDATION_EXPORT void OrgMinimaKissvmFunctionsBaseREV_init(OrgMinimaKissvmFunctionsBaseREV *self);

FOUNDATION_EXPORT OrgMinimaKissvmFunctionsBaseREV *new_OrgMinimaKissvmFunctionsBaseREV_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaKissvmFunctionsBaseREV *create_OrgMinimaKissvmFunctionsBaseREV_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaKissvmFunctionsBaseREV)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaKissvmFunctionsBaseREV")
