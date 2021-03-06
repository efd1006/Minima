//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/network.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsNetwork")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsNetwork
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsNetwork 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsNetwork 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsNetwork

#if !defined (OrgMinimaSystemInputFunctionsnetwork_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsNetwork || defined(INCLUDE_OrgMinimaSystemInputFunctionsnetwork))
#define OrgMinimaSystemInputFunctionsnetwork_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsnetwork : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsnetwork)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsnetwork_init(OrgMinimaSystemInputFunctionsnetwork *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsnetwork *new_OrgMinimaSystemInputFunctionsnetwork_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsnetwork *create_OrgMinimaSystemInputFunctionsnetwork_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsnetwork)

@compatibility_alias OrgMinimaSystemInputFunctionsNetwork OrgMinimaSystemInputFunctionsnetwork;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsNetwork")
