//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/sha/SHA2.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsShaSHA2")
#ifdef RESTRICT_OrgMinimaMiniscriptFunctionsShaSHA2
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsShaSHA2 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsShaSHA2 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptFunctionsShaSHA2

#if !defined (OrgMinimaMiniscriptFunctionsShaSHA2_) && (INCLUDE_ALL_OrgMinimaMiniscriptFunctionsShaSHA2 || defined(INCLUDE_OrgMinimaMiniscriptFunctionsShaSHA2))
#define OrgMinimaMiniscriptFunctionsShaSHA2_

#define RESTRICT_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#include "org/minima/miniscript/functions/MinimaFunction.h"

@class OrgMinimaMiniscriptContract;
@class OrgMinimaMiniscriptValuesValue;

@interface OrgMinimaMiniscriptFunctionsShaSHA2 : OrgMinimaMiniscriptFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptFunctionsShaSHA2)

FOUNDATION_EXPORT void OrgMinimaMiniscriptFunctionsShaSHA2_init(OrgMinimaMiniscriptFunctionsShaSHA2 *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsShaSHA2 *new_OrgMinimaMiniscriptFunctionsShaSHA2_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsShaSHA2 *create_OrgMinimaMiniscriptFunctionsShaSHA2_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptFunctionsShaSHA2)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsShaSHA2")
