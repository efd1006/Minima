//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/tx/TXMiner.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemTxTXMiner")
#ifdef RESTRICT_OrgMinimaSystemTxTXMiner
#define INCLUDE_ALL_OrgMinimaSystemTxTXMiner 0
#else
#define INCLUDE_ALL_OrgMinimaSystemTxTXMiner 1
#endif
#undef RESTRICT_OrgMinimaSystemTxTXMiner

#if !defined (OrgMinimaSystemTxTXMiner_) && (INCLUDE_ALL_OrgMinimaSystemTxTXMiner || defined(INCLUDE_OrgMinimaSystemTxTXMiner))
#define OrgMinimaSystemTxTXMiner_

#define RESTRICT_OrgMinimaSystemSystemHandler 1
#define INCLUDE_OrgMinimaSystemSystemHandler 1
#include "org/minima/system/SystemHandler.h"

@class IOSObjectArray;
@class OrgMinimaSystemMain;
@class OrgMinimaUtilsMessagesMessage;

@interface OrgMinimaSystemTxTXMiner : OrgMinimaSystemSystemHandler

#pragma mark Public

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)zMain;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

#pragma mark Protected

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgMinimaSystemMain:(OrgMinimaSystemMain *)arg0
                               withNSString:(NSString *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemTxTXMiner)

inline jint OrgMinimaSystemTxTXMiner_get_BASE_TXN(void);
#define OrgMinimaSystemTxTXMiner_BASE_TXN 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgMinimaSystemTxTXMiner, BASE_TXN, jint)

inline jint OrgMinimaSystemTxTXMiner_get_BASE_BLOCK(void);
#define OrgMinimaSystemTxTXMiner_BASE_BLOCK 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgMinimaSystemTxTXMiner, BASE_BLOCK, jint)

inline NSString *OrgMinimaSystemTxTXMiner_get_TXMINER_TESTHASHING(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemTxTXMiner_TXMINER_TESTHASHING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemTxTXMiner, TXMINER_TESTHASHING, NSString *)

inline NSString *OrgMinimaSystemTxTXMiner_get_TXMINER_MINETXPOW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemTxTXMiner_TXMINER_MINETXPOW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemTxTXMiner, TXMINER_MINETXPOW, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemTxTXMiner_initWithOrgMinimaSystemMain_(OrgMinimaSystemTxTXMiner *self, OrgMinimaSystemMain *zMain);

FOUNDATION_EXPORT OrgMinimaSystemTxTXMiner *new_OrgMinimaSystemTxTXMiner_initWithOrgMinimaSystemMain_(OrgMinimaSystemMain *zMain) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemTxTXMiner *create_OrgMinimaSystemTxTXMiner_initWithOrgMinimaSystemMain_(OrgMinimaSystemMain *zMain);

FOUNDATION_EXPORT void OrgMinimaSystemTxTXMiner_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemTxTXMiner)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemTxTXMiner")
