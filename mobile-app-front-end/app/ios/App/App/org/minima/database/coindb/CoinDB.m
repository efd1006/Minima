//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/coindb/CoinDB.java
//

#include "J2ObjC_source.h"
#include "org/minima/database/coindb/CoinDB.h"

@interface OrgMinimaDatabaseCoindbCoinDB : NSObject

@end

@implementation OrgMinimaDatabaseCoindbCoinDB

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LOrgMinimaDatabaseCoindbCoinDBRow;", 0x401, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseCoindbCoinDBRow;", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 5, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(clearDB);
  methods[1].selector = @selector(getComplete);
  methods[2].selector = @selector(getCompleteRelevant);
  methods[3].selector = @selector(getCoinRowWithOrgMinimaObjectsBaseMiniData:);
  methods[4].selector = @selector(addCoinRowWithOrgMinimaObjectsCoin:);
  methods[5].selector = @selector(removeCoinWithOrgMinimaObjectsBaseMiniData:);
  methods[6].selector = @selector(removeOldSpentCoinsWithOrgMinimaObjectsBaseMiniNumber:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/ArrayList<Lorg/minima/database/coindb/CoinDBRow;>;", "getCoinRow", "LOrgMinimaObjectsBaseMiniData;", "addCoinRow", "LOrgMinimaObjectsCoin;", "removeCoin", "removeOldSpentCoins", "LOrgMinimaObjectsBaseMiniNumber;" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseCoindbCoinDB = { "CoinDB", "org.minima.database.coindb", ptrTable, methods, NULL, 7, 0x609, 7, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseCoindbCoinDB;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseCoindbCoinDB)
