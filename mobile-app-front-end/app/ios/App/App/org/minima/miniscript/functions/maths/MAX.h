//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/maths/MAX.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsMathsMAX")
#ifdef RESTRICT_OrgMinimaMiniscriptFunctionsMathsMAX
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsMathsMAX 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsMathsMAX 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptFunctionsMathsMAX

#if !defined (OrgMinimaMiniscriptFunctionsMathsMAX_) && (INCLUDE_ALL_OrgMinimaMiniscriptFunctionsMathsMAX || defined(INCLUDE_OrgMinimaMiniscriptFunctionsMathsMAX))
#define OrgMinimaMiniscriptFunctionsMathsMAX_

#define RESTRICT_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#include "org/minima/miniscript/functions/MinimaFunction.h"

@class OrgMinimaMiniscriptContract;
@class OrgMinimaMiniscriptValuesValue;

@interface OrgMinimaMiniscriptFunctionsMathsMAX : OrgMinimaMiniscriptFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptFunctionsMathsMAX)

FOUNDATION_EXPORT void OrgMinimaMiniscriptFunctionsMathsMAX_init(OrgMinimaMiniscriptFunctionsMathsMAX *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsMathsMAX *new_OrgMinimaMiniscriptFunctionsMathsMAX_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsMathsMAX *create_OrgMinimaMiniscriptFunctionsMathsMAX_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptFunctionsMathsMAX)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsMathsMAX")
