//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/functions/transfer/exportcoin.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTransferExportcoin")
#ifdef RESTRICT_OrgMinimaSystemInputFunctionsTransferExportcoin
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTransferExportcoin 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputFunctionsTransferExportcoin 1
#endif
#undef RESTRICT_OrgMinimaSystemInputFunctionsTransferExportcoin

#if !defined (OrgMinimaSystemInputFunctionsTransferexportcoin_) && (INCLUDE_ALL_OrgMinimaSystemInputFunctionsTransferExportcoin || defined(INCLUDE_OrgMinimaSystemInputFunctionsTransferexportcoin))
#define OrgMinimaSystemInputFunctionsTransferexportcoin_

#define RESTRICT_OrgMinimaSystemInputCommandFunction 1
#define INCLUDE_OrgMinimaSystemInputCommandFunction 1
#include "org/minima/system/input/CommandFunction.h"

@class IOSObjectArray;

@interface OrgMinimaSystemInputFunctionsTransferexportcoin : OrgMinimaSystemInputCommandFunction

#pragma mark Public

- (instancetype)init;

- (void)doFunctionWithNSStringArray:(IOSObjectArray *)zInput;

- (OrgMinimaSystemInputCommandFunction *)getNewFunction;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputFunctionsTransferexportcoin)

FOUNDATION_EXPORT void OrgMinimaSystemInputFunctionsTransferexportcoin_init(OrgMinimaSystemInputFunctionsTransferexportcoin *self);

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTransferexportcoin *new_OrgMinimaSystemInputFunctionsTransferexportcoin_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputFunctionsTransferexportcoin *create_OrgMinimaSystemInputFunctionsTransferexportcoin_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputFunctionsTransferexportcoin)

@compatibility_alias OrgMinimaSystemInputFunctionsTransferExportcoin OrgMinimaSystemInputFunctionsTransferexportcoin;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputFunctionsTransferExportcoin")
