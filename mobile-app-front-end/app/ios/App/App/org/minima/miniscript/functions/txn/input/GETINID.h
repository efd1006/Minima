//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/txn/input/GETINID.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnInputGETINID")
#ifdef RESTRICT_OrgMinimaMiniscriptFunctionsTxnInputGETINID
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnInputGETINID 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnInputGETINID 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptFunctionsTxnInputGETINID

#if !defined (OrgMinimaMiniscriptFunctionsTxnInputGETINID_) && (INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnInputGETINID || defined(INCLUDE_OrgMinimaMiniscriptFunctionsTxnInputGETINID))
#define OrgMinimaMiniscriptFunctionsTxnInputGETINID_

#define RESTRICT_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#define INCLUDE_OrgMinimaMiniscriptFunctionsMinimaFunction 1
#include "org/minima/miniscript/functions/MinimaFunction.h"

@class OrgMinimaMiniscriptContract;
@class OrgMinimaMiniscriptValuesValue;

@interface OrgMinimaMiniscriptFunctionsTxnInputGETINID : OrgMinimaMiniscriptFunctionsMinimaFunction

#pragma mark Public

- (instancetype)init;

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction;

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptFunctionsTxnInputGETINID)

FOUNDATION_EXPORT void OrgMinimaMiniscriptFunctionsTxnInputGETINID_init(OrgMinimaMiniscriptFunctionsTxnInputGETINID *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsTxnInputGETINID *new_OrgMinimaMiniscriptFunctionsTxnInputGETINID_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptFunctionsTxnInputGETINID *create_OrgMinimaMiniscriptFunctionsTxnInputGETINID_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptFunctionsTxnInputGETINID)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptFunctionsTxnInputGETINID")
