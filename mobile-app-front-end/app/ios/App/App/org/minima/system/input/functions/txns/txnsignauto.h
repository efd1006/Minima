//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txnsignauto.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnsignauto")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxnsignauto
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnsignauto 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnsignauto 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxnsignauto

#if !defined (OrgMinimaSystemInputFunctionsTxnstxnsignauto_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnsignauto || defined(INCLUDE_OrgMinimaSystemInputFunctionsTxnstxnsignauto))
#define OrgMinimaSystemInputFunctionsTxnstxnsignauto_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsTxnstxnsignauto : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsTxnstxnsignauto)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsTxnstxnsignauto_init(OrgMinimaSystemInputFunctionsTxnstxnsignauto *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxnsignauto *new_OrgMinimaSystemInputFunctionsTxnstxnsignauto_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxnsignauto *create_OrgMinimaSystemInputFunctionsTxnstxnsignauto_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsTxnstxnsignauto)

@compatibility_alias OrgMinimaSystemInputFunctionsTxnsTxnsignauto OrgMinimaSystemInputFunctionsTxnstxnsignauto;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnsignauto")
