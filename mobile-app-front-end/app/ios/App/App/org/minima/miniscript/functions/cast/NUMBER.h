//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/cast/NUMBER.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsCastNUMBER")
#ifdef RESTRICT_OrgMinimaMiniscriptFunctionsCastNUMBER
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsCastNUMBER 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsCastNUMBER 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptFunctionsCastNUMBER

#if !defined (OrgMinimaMiniscriptFunctionsCastNUMBER_) && (INCLUDE_ALL_OrgMinimaMiniscriptFunctionsCastNUMBER || defined(INCLUDE_OrgMinimaMiniscriptFunctionsCastNUMBER))
#define OrgMinimaMiniscriptFunctionsCastNUMBER_

#define RESTRICT_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#include "org/minima/miniscript/functions/MinimaFunction.h"

@class OrgMinimaMiniscriptContract;
@class OrgMinimaMiniscriptValuesValue;

@interface OrgMinimaMiniscriptFunctionsCastNUMBER : OrgMinimaMiniscriptFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptFunctionsCastNUMBER)

FOUNDATION_EXPORT void OrgMinimaMiniscriptFunctionsCastNUMBER_init(OrgMinimaMiniscriptFunctionsCastNUMBER *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsCastNUMBER *new_OrgMinimaMiniscriptFunctionsCastNUMBER_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsCastNUMBER *create_OrgMinimaMiniscriptFunctionsCastNUMBER_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptFunctionsCastNUMBER)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsCastNUMBER")
