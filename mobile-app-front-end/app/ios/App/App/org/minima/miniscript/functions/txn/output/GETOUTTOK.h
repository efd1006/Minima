//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/txn/output/GETOUTTOK.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK")
#ifdef RESTRICT_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK

#if !defined (OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK_) && (INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK || defined(INCLUDE_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK))
#define OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK_

#define RESTRICT_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#include "org/minima/miniscript/functions/MinimaFunction.h"

@class OrgMinimaMiniscriptContract;
@class OrgMinimaMiniscriptValuesValue;

@interface OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK : OrgMinimaMiniscriptFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK)

FOUNDATION_EXPORT void OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK_init(OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK *new_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK *create_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnOutputGETOUTTOK")
