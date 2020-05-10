//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/coindb/CoinDBRow.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaDatabaseCoindbCoinDBRow")
#ifdef RESTRICT_OrgMinimaDatabaseCoindbCoinDBRow
#define INCLUDE_ALL_OrgMinimaDatabaseCoindbCoinDBRow 0
#else
#define INCLUDE_ALL_OrgMinimaDatabaseCoindbCoinDBRow 1
#endif
#undef RESTRICT_OrgMinimaDatabaseCoindbCoinDBRow

#if !defined (OrgMinimaDatabaseCoindbCoinDBRow_) && (INCLUDE_ALL_OrgMinimaDatabaseCoindbCoinDBRow || defined(INCLUDE_OrgMinimaDatabaseCoindbCoinDBRow))
#define OrgMinimaDatabaseCoindbCoinDBRow_

@class OrgMinimaObjectsBaseMiniInteger;
@class OrgMinimaObjectsBaseMiniNumber;
@class OrgMinimaObjectsCoin;
@class OrgMinimaUtilsJsonJSONObject;

@protocol OrgMinimaDatabaseCoindbCoinDBRow < JavaObject >

- (OrgMinimaObjectsCoin *)getCoin;

- (void)setIsSpentWithBoolean:(jboolean)zSpent;

- (jboolean)isSpent;

- (void)setInBlockNumberWithOrgMinimaObjectsBaseMiniNumber:(OrgMinimaObjectsBaseMiniNumber *)zInBlockNumber;

- (OrgMinimaObjectsBaseMiniNumber *)getInBlockNumber;

- (void)setIsInBlockWithBoolean:(jboolean)zIn;

- (jboolean)isInBlock;

- (void)setMMREntryWithOrgMinimaObjectsBaseMiniInteger:(OrgMinimaObjectsBaseMiniInteger *)zEntry;

- (OrgMinimaObjectsBaseMiniInteger *)getMMREntry;

- (void)setRelevantWithBoolean:(jboolean)zRelevant;

- (jboolean)isRelevant;

- (void)setKeeperWithBoolean:(jboolean)zRelevant;

- (jboolean)isKeeper;

- (OrgMinimaUtilsJsonJSONObject *)toJSON;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaDatabaseCoindbCoinDBRow)

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaDatabaseCoindbCoinDBRow)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaDatabaseCoindbCoinDBRow")
