//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/coindb/java/JavaCoinDBRow.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow")
#ifdef RESTRICT_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow
#define INCLUDE_ALL_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow 0
#else
#define INCLUDE_ALL_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow 1
#endif
#undef RESTRICT_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow

#if !defined (OrgMinimaDatabaseCoindbJavaJavaCoinDBRow_) && (INCLUDE_ALL_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow || defined(INCLUDE_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow))
#define OrgMinimaDatabaseCoindbJavaJavaCoinDBRow_

#define RESTRICT_OrgMinimaDatabaseCoindbCoinDBRow 1
#define INCLUDE_OrgMinimaDatabaseCoindbCoinDBRow 1
#include "org/minima/database/coindb/CoinDBRow.h"

@class OrgMinimaObjectsBaseMiniInteger;
@class OrgMinimaObjectsBaseMiniNumber;
@class OrgMinimaObjectsCoin;
@class OrgMinimaUtilsJsonJSONObject;

@interface OrgMinimaDatabaseCoindbJavaJavaCoinDBRow : NSObject < OrgMinimaDatabaseCoindbCoinDBRow > {
 @public
  OrgMinimaObjectsCoin *mCoin_;
  jboolean mIsSpent_;
  jboolean mIsInBlock_;
  OrgMinimaObjectsBaseMiniNumber *mInBlockNumber_;
  OrgMinimaObjectsBaseMiniInteger *mEntryNumber_;
  jboolean mRelevant_;
  jboolean mKeeper_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaObjectsCoin:(OrgMinimaObjectsCoin *)zCoin;

- (OrgMinimaObjectsCoin *)getCoin;

- (OrgMinimaObjectsBaseMiniNumber *)getInBlockNumber;

- (OrgMinimaObjectsBaseMiniInteger *)getMMREntry;

- (jboolean)isInBlock;

- (jboolean)isKeeper;

- (jboolean)isRelevant;

- (jboolean)isSpent;

- (void)setInBlockNumberWithOrgMinimaObjectsBaseMiniNumber:(OrgMinimaObjectsBaseMiniNumber *)zInBlockNumber;

- (void)setIsInBlockWithBoolean:(jboolean)zIn;

- (void)setIsSpentWithBoolean:(jboolean)zSpent;

- (void)setKeeperWithBoolean:(jboolean)zKeeper;

- (void)setMMREntryWithOrgMinimaObjectsBaseMiniInteger:(OrgMinimaObjectsBaseMiniInteger *)zEntry;

- (void)setRelevantWithBoolean:(jboolean)zRelevant;

- (OrgMinimaUtilsJsonJSONObject *)toJSON;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaDatabaseCoindbJavaJavaCoinDBRow)

J2OBJC_FIELD_SETTER(OrgMinimaDatabaseCoindbJavaJavaCoinDBRow, mCoin_, OrgMinimaObjectsCoin *)
J2OBJC_FIELD_SETTER(OrgMinimaDatabaseCoindbJavaJavaCoinDBRow, mInBlockNumber_, OrgMinimaObjectsBaseMiniNumber *)
J2OBJC_FIELD_SETTER(OrgMinimaDatabaseCoindbJavaJavaCoinDBRow, mEntryNumber_, OrgMinimaObjectsBaseMiniInteger *)

FOUNDATION_EXPORT void OrgMinimaDatabaseCoindbJavaJavaCoinDBRow_initWithOrgMinimaObjectsCoin_(OrgMinimaDatabaseCoindbJavaJavaCoinDBRow *self, OrgMinimaObjectsCoin *zCoin);

FOUNDATION_EXPORT OrgMinimaDatabaseCoindbJavaJavaCoinDBRow *new_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow_initWithOrgMinimaObjectsCoin_(OrgMinimaObjectsCoin *zCoin) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaDatabaseCoindbJavaJavaCoinDBRow *create_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow_initWithOrgMinimaObjectsCoin_(OrgMinimaObjectsCoin *zCoin);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaDatabaseCoindbJavaJavaCoinDBRow)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaDatabaseCoindbJavaJavaCoinDBRow")
