//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/random.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsRandom")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsRandom
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsRandom 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsRandom 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsRandom

#if !defined (OrgMinimaSystemInputFunctionsrandom_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsRandom || defined(INCLUDE_OrgMinimaSystemInputFunctionsrandom))
#define OrgMinimaSystemInputFunctionsrandom_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsrandom : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsrandom)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsrandom_init(OrgMinimaSystemInputFunctionsrandom *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsrandom *new_OrgMinimaSystemInputFunctionsrandom_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsrandom *create_OrgMinimaSystemInputFunctionsrandom_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsrandom)

@compatibility_alias OrgMinimaSystemInputFunctionsRandom OrgMinimaSystemInputFunctionsrandom;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsRandom")
