//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/maths/ABS.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaKissvmFunctionsMathsABS")
#ifdef RESTRICT_OrgMinimaKissvmFunctionsMathsABS
#define INCLUDE_ALL_OrgMinimaKissvmFunctionsMathsABS 0
#else
#define INCLUDE_ALL_OrgMinimaKissvmFunctionsMathsABS 1
#endif
#undef RESTRICT_OrgMinimaKissvmFunctionsMathsABS

#if !defined (OrgMinimaKissvmFunctionsMathsABS_) && (INCLUDE_ALL_OrgMinimaKissvmFunctionsMathsABS || defined(INCLUDE_OrgMinimaKissvmFunctionsMathsABS))
#define OrgMinimaKissvmFunctionsMathsABS_

#define RESTRICT_OrgMinimaKissvmFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaKissvmFunctionsMinimaFunction 1
#include "org/minima/kissvm/functions/MinimaFunction.h"

@class OrgMinimaKissvmContract;
@class OrgMinimaKissvmValuesValue;

@interface OrgMinimaKissvmFunctionsMathsABS : OrgMinimaKissvmFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaKissvmFunctionsMathsABS)

FOUNDATION_EXPORT void OrgMinimaKissvmFunctionsMathsABS_init(OrgMinimaKissvmFunctionsMathsABS *self);

FOUNDATION_EXPORT OrgMinimaKissvmFunctionsMathsABS *new_OrgMinimaKissvmFunctionsMathsABS_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaKissvmFunctionsMathsABS *create_OrgMinimaKissvmFunctionsMathsABS_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaKissvmFunctionsMathsABS)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaKissvmFunctionsMathsABS")
