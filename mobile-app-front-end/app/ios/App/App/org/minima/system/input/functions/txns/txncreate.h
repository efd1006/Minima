//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/txns/txncreate.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxncreate")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxncreate
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxncreate 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxncreate 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsTxnsTxncreate

#if !defined (OrgMinimaSystemInputFunctionsTxnstxncreate_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxncreate || defined(INCLUDE_OrgMinimaSystemInputFunctionsTxnstxncreate))
#define OrgMinimaSystemInputFunctionsTxnstxncreate_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsTxnstxncreate : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsTxnstxncreate)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsTxnstxncreate_init(OrgMinimaSystemInputFunctionsTxnstxncreate *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxncreate *new_OrgMinimaSystemInputFunctionsTxnstxncreate_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTxnstxncreate *create_OrgMinimaSystemInputFunctionsTxnstxncreate_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsTxnstxncreate)

@compatibility_alias OrgMinimaSystemInputFunctionsTxnsTxncreate OrgMinimaSystemInputFunctionsTxnstxncreate;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTxnsTxncreate")
