//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txnscript.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnscript")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxnscript
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnscript 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnscript 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxnscript

#if !defined (OrgMinimaSystemInputFunctionsTxnstxnscript_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnscript || defined(INCLUDE_OrgMinimaSystemInputFunctionsTxnstxnscript))
#define OrgMinimaSystemInputFunctionsTxnstxnscript_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsTxnstxnscript : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsTxnstxnscript)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsTxnstxnscript_init(OrgMinimaSystemInputFunctionsTxnstxnscript *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxnscript *new_OrgMinimaSystemInputFunctionsTxnstxnscript_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxnscript *create_OrgMinimaSystemInputFunctionsTxnstxnscript_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsTxnstxnscript)

@compatibility_alias OrgMinimaSystemInputFunctionsTxnsTxnscript OrgMinimaSystemInputFunctionsTxnstxnscript;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnscript")
