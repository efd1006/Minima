//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/cast/HEX.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaKissvmFunctionsCastHEX")
#ifdef RESTRICT_OrgMinimaKissvmFunctionsCastHEX
#define INCLUDE_ALL_OrgMinimaKissvmFunctionsCastHEX 0
#else
#define INCLUDE_ALL_OrgMinimaKissvmFunctionsCastHEX 1
#endif
#undef RESTRICT_OrgMinimaKissvmFunctionsCastHEX

#if !defined (OrgMinimaKissvmFunctionsCastHEX_) && (INCLUDE_ALL_OrgMinimaKissvmFunctionsCastHEX || defined(INCLUDE_OrgMinimaKissvmFunctionsCastHEX))
#define OrgMinimaKissvmFunctionsCastHEX_

#define RESTRICT_OrgMinimaKissvmFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaKissvmFunctionsMinimaFunction 1
#include "org/minima/kissvm/functions/MinimaFunction.h"

@class OrgMinimaKissvmContract;
@class OrgMinimaKissvmValuesValue;

@interface OrgMinimaKissvmFunctionsCastHEX : OrgMinimaKissvmFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaKissvmFunctionsCastHEX)

FOUNDATION_EXPORT void OrgMinimaKissvmFunctionsCastHEX_init(OrgMinimaKissvmFunctionsCastHEX *self);

FOUNDATION_EXPORT OrgMinimaKissvmFunctionsCastHEX *new_OrgMinimaKissvmFunctionsCastHEX_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaKissvmFunctionsCastHEX *create_OrgMinimaKissvmFunctionsCastHEX_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaKissvmFunctionsCastHEX)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaKissvmFunctionsCastHEX")
