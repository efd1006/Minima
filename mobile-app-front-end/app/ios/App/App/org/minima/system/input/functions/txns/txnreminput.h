//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txnreminput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnreminput")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxnreminput
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnreminput 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnreminput 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxnreminput

#if !defined (OrgMinimaSystemInputFunctionsTxnstxnreminput_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnreminput || defined(INCLUDE_OrgMinimaSystemInputFunctionsTxnstxnreminput))
#define OrgMinimaSystemInputFunctionsTxnstxnreminput_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsTxnstxnreminput : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsTxnstxnreminput)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsTxnstxnreminput_init(OrgMinimaSystemInputFunctionsTxnstxnreminput *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxnreminput *new_OrgMinimaSystemInputFunctionsTxnstxnreminput_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxnreminput *create_OrgMinimaSystemInputFunctionsTxnstxnreminput_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsTxnstxnreminput)

@compatibility_alias OrgMinimaSystemInputFunctionsTxnsTxnreminput OrgMinimaSystemInputFunctionsTxnstxnreminput;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxnreminput")
