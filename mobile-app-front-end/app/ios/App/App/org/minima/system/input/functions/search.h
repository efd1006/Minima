//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/search.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsSearch")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsSearch
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsSearch 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsSearch 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsSearch

#if !defined (OrgMinimaSystemInputFunctionssearch_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsSearch || defined(INCLUDE_OrgMinimaSystemInputFunctionssearch))
#define OrgMinimaSystemInputFunctionssearch_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionssearch : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionssearch)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionssearch_init(OrgMinimaSystemInputFunctionssearch *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionssearch *new_OrgMinimaSystemInputFunctionssearch_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionssearch *create_OrgMinimaSystemInputFunctionssearch_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionssearch)

@compatibility_alias OrgMinimaSystemInputFunctionsSearch OrgMinimaSystemInputFunctionssearch;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsSearch")
