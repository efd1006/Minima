//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/txpowdb/TxPOWDBRow.java
//

#include "J2ObjC_source.h"
#include "org/minima/database/txpowdb/TxPOWDBRow.h"

@interface OrgMinimaDatabaseTxpowdbTxPOWDBRow : NSObject

@end

@implementation OrgMinimaDatabaseTxpowdbTxPOWDBRow

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgMinimaObjectsTxPOW;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniNumber;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getTxPOW);
  methods[1].selector = @selector(isInBlock);
  methods[2].selector = @selector(setIsInBlockWithBoolean:);
  methods[3].selector = @selector(getInBlockNumber);
  methods[4].selector = @selector(setInBlockNumberWithOrgMinimaObjectsBaseMiniNumber:);
  methods[5].selector = @selector(isOnChainBlock);
  methods[6].selector = @selector(setOnChainBlockWithBoolean:);
  methods[7].selector = @selector(getBlockState);
  methods[8].selector = @selector(setBlockStateWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TXPOWDBROW_STATE_BASIC", "I", .constantValue.asInt = OrgMinimaDatabaseTxpowdbTxPOWDBRow_TXPOWDBROW_STATE_BASIC, 0x19, -1, -1, -1, -1 },
    { "TXPOWDBROW_STATE_FULL", "I", .constantValue.asInt = OrgMinimaDatabaseTxpowdbTxPOWDBRow_TXPOWDBROW_STATE_FULL, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setIsInBlock", "Z", "setInBlockNumber", "LOrgMinimaObjectsBaseMiniNumber;", "setOnChainBlock", "setBlockState", "I" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseTxpowdbTxPOWDBRow = { "TxPOWDBRow", "org.minima.database.txpowdb", ptrTable, methods, fields, 7, 0x609, 9, 2, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseTxpowdbTxPOWDBRow;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseTxpowdbTxPOWDBRow)
