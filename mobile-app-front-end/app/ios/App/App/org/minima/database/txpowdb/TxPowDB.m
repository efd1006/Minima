//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/txpowdb/TxPowDB.java
//

#include "J2ObjC_source.h"
#include "org/minima/database/txpowdb/TxPowDB.h"

@interface OrgMinimaDatabaseTxpowdbTxPowDB : NSObject

@end

@implementation OrgMinimaDatabaseTxpowdbTxPowDB

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgMinimaDatabaseTxpowdbTxPOWDBRow;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseTxpowdbTxPOWDBRow;", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, -1, -1, -1, 4, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, 6, 7, -1, 8, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, -1, -1, -1, 4, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, 9, 3, -1, 10, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x401, -1, -1, -1, 4, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addTxPOWDBRowWithOrgMinimaObjectsTxPOW:);
  methods[1].selector = @selector(findTxPOWDBRowWithOrgMinimaObjectsBaseMiniData32:);
  methods[2].selector = @selector(getAllTxPOWDBRow);
  methods[3].selector = @selector(resetAllInBlocks);
  methods[4].selector = @selector(removeTxPOWWithOrgMinimaObjectsBaseMiniData32:);
  methods[5].selector = @selector(removeTxPOWInBlockLessThanWithOrgMinimaObjectsBaseMiniNumber:);
  methods[6].selector = @selector(getAllUnusedTxPOW);
  methods[7].selector = @selector(getChildBlocksTxPOWWithOrgMinimaObjectsBaseMiniData32:);
  methods[8].selector = @selector(getAllBlocksMissingTransactions);
  methods[9].selector = @selector(getSize);
  methods[10].selector = @selector(ClearDB);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addTxPOWDBRow", "LOrgMinimaObjectsTxPOW;", "findTxPOWDBRow", "LOrgMinimaObjectsBaseMiniData32;", "()Ljava/util/ArrayList<Lorg/minima/database/txpowdb/TxPOWDBRow;>;", "removeTxPOW", "removeTxPOWInBlockLessThan", "LOrgMinimaObjectsBaseMiniNumber;", "(Lorg/minima/objects/base/MiniNumber;)Ljava/util/ArrayList<Lorg/minima/database/txpowdb/TxPOWDBRow;>;", "getChildBlocksTxPOW", "(Lorg/minima/objects/base/MiniData32;)Ljava/util/ArrayList<Lorg/minima/database/txpowdb/TxPOWDBRow;>;" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseTxpowdbTxPowDB = { "TxPowDB", "org.minima.database.txpowdb", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseTxpowdbTxPowDB;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseTxpowdbTxPowDB)
