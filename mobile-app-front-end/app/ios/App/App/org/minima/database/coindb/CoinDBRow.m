//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/coindb/CoinDBRow.java
//

#include "J2ObjC_source.h"
#include "org/minima/database/coindb/CoinDBRow.h"

@interface OrgMinimaDatabaseCoindbCoinDBRow : NSObject

@end

@implementation OrgMinimaDatabaseCoindbCoinDBRow

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgMinimaObjectsCoin;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniNumber;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaUtilsJsonJSONObject;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getCoin);
  methods[1].selector = @selector(setIsSpentWithBoolean:);
  methods[2].selector = @selector(isSpent);
  methods[3].selector = @selector(setInBlockNumberWithOrgMinimaObjectsBaseMiniNumber:);
  methods[4].selector = @selector(getInBlockNumber);
  methods[5].selector = @selector(setIsInBlockWithBoolean:);
  methods[6].selector = @selector(isInBlock);
  methods[7].selector = @selector(setMMREntryWithOrgMinimaObjectsBaseMiniInteger:);
  methods[8].selector = @selector(getMMREntry);
  methods[9].selector = @selector(setRelevantWithBoolean:);
  methods[10].selector = @selector(isRelevant);
  methods[11].selector = @selector(setKeeperWithBoolean:);
  methods[12].selector = @selector(isKeeper);
  methods[13].selector = @selector(toJSON);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setIsSpent", "Z", "setInBlockNumber", "LOrgMinimaObjectsBaseMiniNumber;", "setIsInBlock", "setMMREntry", "LOrgMinimaObjectsBaseMiniInteger;", "setRelevant", "setKeeper" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseCoindbCoinDBRow = { "CoinDBRow", "org.minima.database.coindb", ptrTable, methods, NULL, 7, 0x609, 14, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseCoindbCoinDBRow;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseCoindbCoinDBRow)
