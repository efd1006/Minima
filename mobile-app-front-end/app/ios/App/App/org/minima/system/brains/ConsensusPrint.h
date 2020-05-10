//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/brains/ConsensusPrint.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusPrint")
#ifdef RESTRICT_OrgMinimaSystemBrainsConsensusPrint
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusPrint 0
#else
#define INCLUDE_ALL_OrgMinimaSystemBrainsConsensusPrint 1
#endif
#undef RESTRICT_OrgMinimaSystemBrainsConsensusPrint

#if !defined (OrgMinimaSystemBrainsConsensusPrint_) && (INCLUDE_ALL_OrgMinimaSystemBrainsConsensusPrint || defined(INCLUDE_OrgMinimaSystemBrainsConsensusPrint))
#define OrgMinimaSystemBrainsConsensusPrint_

@class JavaUtilArrayList;
@class OrgMinimaDatabaseMinimaDB;
@class OrgMinimaSystemBrainsConsensusHandler;
@class OrgMinimaUtilsMessagesMessage;

@interface OrgMinimaSystemBrainsConsensusPrint : NSObject {
 @public
  JavaUtilArrayList *mChart_;
  OrgMinimaDatabaseMinimaDB *mDB_;
  OrgMinimaSystemBrainsConsensusHandler *mHandler_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaDatabaseMinimaDB:(OrgMinimaDatabaseMinimaDB *)zDB
        withOrgMinimaSystemBrainsConsensusHandler:(OrgMinimaSystemBrainsConsensusHandler *)zHandler;

+ (NSString *)formatSizeWithLong:(jlong)v;

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemBrainsConsensusPrint)

J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusPrint, mChart_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusPrint, mDB_, OrgMinimaDatabaseMinimaDB *)
J2OBJC_FIELD_SETTER(OrgMinimaSystemBrainsConsensusPrint, mHandler_, OrgMinimaSystemBrainsConsensusHandler *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_PREFIX(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_PREFIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_PREFIX, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_BALANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_BALANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_BALANCE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_COINS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_COINS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_COINS, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_COINSIMPLE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_COINSIMPLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_COINSIMPLE, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_TXPOW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_TXPOW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_TXPOW, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_KEYS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_KEYS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_KEYS, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_ADDRESSES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_ADDRESSES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_ADDRESSES, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_SEARCH(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_SEARCH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_SEARCH, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_TXPOWSEARCH(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_TXPOWSEARCH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_TXPOWSEARCH, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_HISTORY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_HISTORY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_HISTORY, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_TOKENS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_TOKENS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_TOKENS, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_RANDOM(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_RANDOM;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_RANDOM, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_STATUS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_STATUS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_STATUS, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_PRINTCHAIN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_PRINTCHAIN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_PRINTCHAIN, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_NETWORK(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_NETWORK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_NETWORK, NSString *)

inline NSString *OrgMinimaSystemBrainsConsensusPrint_get_CONSENSUS_PRINTCHAIN_TREE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_CONSENSUS_PRINTCHAIN_TREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemBrainsConsensusPrint, CONSENSUS_PRINTCHAIN_TREE, NSString *)

FOUNDATION_EXPORT void OrgMinimaSystemBrainsConsensusPrint_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaSystemBrainsConsensusPrint *self, OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler);

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusPrint *new_OrgMinimaSystemBrainsConsensusPrint_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusPrint *create_OrgMinimaSystemBrainsConsensusPrint_initWithOrgMinimaDatabaseMinimaDB_withOrgMinimaSystemBrainsConsensusHandler_(OrgMinimaDatabaseMinimaDB *zDB, OrgMinimaSystemBrainsConsensusHandler *zHandler);

FOUNDATION_EXPORT NSString *OrgMinimaSystemBrainsConsensusPrint_formatSizeWithLong_(jlong v);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemBrainsConsensusPrint)

#endif

#if !defined (OrgMinimaSystemBrainsConsensusPrint_chartpoint_) && (INCLUDE_ALL_OrgMinimaSystemBrainsConsensusPrint || defined(INCLUDE_OrgMinimaSystemBrainsConsensusPrint_chartpoint))
#define OrgMinimaSystemBrainsConsensusPrint_chartpoint_

@class OrgMinimaSystemBrainsConsensusPrint;

@interface OrgMinimaSystemBrainsConsensusPrint_chartpoint : NSObject {
 @public
  jlong mBlock_;
  jlong mTotalWeight_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaSystemBrainsConsensusPrint:(OrgMinimaSystemBrainsConsensusPrint *)outer$
                                                   withLong:(jlong)zBlock
                                                   withLong:(jlong)zWeight;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemBrainsConsensusPrint_chartpoint)

FOUNDATION_EXPORT void OrgMinimaSystemBrainsConsensusPrint_chartpoint_initWithOrgMinimaSystemBrainsConsensusPrint_withLong_withLong_(OrgMinimaSystemBrainsConsensusPrint_chartpoint *self, OrgMinimaSystemBrainsConsensusPrint *outer$, jlong zBlock, jlong zWeight);

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusPrint_chartpoint *new_OrgMinimaSystemBrainsConsensusPrint_chartpoint_initWithOrgMinimaSystemBrainsConsensusPrint_withLong_withLong_(OrgMinimaSystemBrainsConsensusPrint *outer$, jlong zBlock, jlong zWeight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemBrainsConsensusPrint_chartpoint *create_OrgMinimaSystemBrainsConsensusPrint_chartpoint_initWithOrgMinimaSystemBrainsConsensusPrint_withLong_withLong_(OrgMinimaSystemBrainsConsensusPrint *outer$, jlong zBlock, jlong zWeight);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemBrainsConsensusPrint_chartpoint)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemBrainsConsensusPrint")
