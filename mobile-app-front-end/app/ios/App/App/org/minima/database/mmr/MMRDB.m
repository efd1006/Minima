//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/mmr/MMRDB.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "org/minima/database/mmr/MMRDB.h"
#include "org/minima/database/mmr/MMRData.h"
#include "org/minima/database/mmr/MMREntry.h"
#include "org/minima/database/mmr/MMRPrint.h"
#include "org/minima/database/mmr/MMRProof.h"
#include "org/minima/database/mmr/MMRSet.h"
#include "org/minima/objects/Coin.h"
#include "org/minima/objects/base/MiniByte.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniData32.h"
#include "org/minima/objects/base/MiniNumber.h"

J2OBJC_INITIALIZED_DEFN(OrgMinimaDatabaseMmrMMRDB)

OrgMinimaDatabaseMmrMMRSet *OrgMinimaDatabaseMmrMMRDB_mSet1;
OrgMinimaDatabaseMmrMMRSet *OrgMinimaDatabaseMmrMMRDB_mSet2;
OrgMinimaDatabaseMmrMMREntry *OrgMinimaDatabaseMmrMMRDB_mLast1;
OrgMinimaDatabaseMmrMMREntry *OrgMinimaDatabaseMmrMMRDB_mLast2;

@implementation OrgMinimaDatabaseMmrMMRDB

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaDatabaseMmrMMRDB_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)initSets {
  JreStrongAssignAndConsume(&mBaseSet_, new_OrgMinimaDatabaseMmrMMRSet_init());
  JreStrongAssignAndConsume(&mRootSet_, new_OrgMinimaDatabaseMmrMMRSet_init());
}

- (OrgMinimaDatabaseMmrMMRSet *)getCurrentMMR {
  return mRootSet_;
}

+ (void)addUnspentWithOrgMinimaDatabaseMmrMMRData:(OrgMinimaDatabaseMmrMMRData *)zData {
  OrgMinimaDatabaseMmrMMRDB_addUnspentWithOrgMinimaDatabaseMmrMMRData_(zData);
}

+ (void)spendCoinWithOrgMinimaDatabaseMmrMMRProof:(OrgMinimaDatabaseMmrMMRProof *)zProof {
  OrgMinimaDatabaseMmrMMRDB_spendCoinWithOrgMinimaDatabaseMmrMMRProof_(zProof);
}

+ (void)newBlock {
  OrgMinimaDatabaseMmrMMRDB_newBlock();
}

+ (void)printSets {
  OrgMinimaDatabaseMmrMMRDB_printSets();
}

+ (OrgMinimaDatabaseMmrMMRData *)getRandomCoin {
  return OrgMinimaDatabaseMmrMMRDB_getRandomCoin();
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs {
  OrgMinimaDatabaseMmrMMRDB_mainWithNSStringArray_(zArgs);
}

- (void)dealloc {
  RELEASE_(mBaseSet_);
  RELEASE_(mRootSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseMmrMMRSet;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseMmrMMRData;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initSets);
  methods[2].selector = @selector(getCurrentMMR);
  methods[3].selector = @selector(addUnspentWithOrgMinimaDatabaseMmrMMRData:);
  methods[4].selector = @selector(spendCoinWithOrgMinimaDatabaseMmrMMRProof:);
  methods[5].selector = @selector(newBlock);
  methods[6].selector = @selector(printSets);
  methods[7].selector = @selector(getRandomCoin);
  methods[8].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mBaseSet_", "LOrgMinimaDatabaseMmrMMRSet;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRootSet_", "LOrgMinimaDatabaseMmrMMRSet;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mSet1", "LOrgMinimaDatabaseMmrMMRSet;", .constantValue.asLong = 0, 0x9, -1, 6, -1, -1 },
    { "mSet2", "LOrgMinimaDatabaseMmrMMRSet;", .constantValue.asLong = 0, 0x9, -1, 7, -1, -1 },
    { "mLast1", "LOrgMinimaDatabaseMmrMMREntry;", .constantValue.asLong = 0, 0x9, -1, 8, -1, -1 },
    { "mLast2", "LOrgMinimaDatabaseMmrMMREntry;", .constantValue.asLong = 0, 0x9, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "addUnspent", "LOrgMinimaDatabaseMmrMMRData;", "spendCoin", "LOrgMinimaDatabaseMmrMMRProof;", "main", "[LNSString;", &OrgMinimaDatabaseMmrMMRDB_mSet1, &OrgMinimaDatabaseMmrMMRDB_mSet2, &OrgMinimaDatabaseMmrMMRDB_mLast1, &OrgMinimaDatabaseMmrMMRDB_mLast2 };
  static const J2ObjcClassInfo _OrgMinimaDatabaseMmrMMRDB = { "MMRDB", "org.minima.database.mmr", ptrTable, methods, fields, 7, 0x1, 9, 6, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseMmrMMRDB;
}

+ (void)initialize {
  if (self == [OrgMinimaDatabaseMmrMMRDB class]) {
    JreStrongAssignAndConsume(&OrgMinimaDatabaseMmrMMRDB_mSet1, new_OrgMinimaDatabaseMmrMMRSet_init());
    JreStrongAssignAndConsume(&OrgMinimaDatabaseMmrMMRDB_mSet2, new_OrgMinimaDatabaseMmrMMRSet_init());
    J2OBJC_SET_INITIALIZED(OrgMinimaDatabaseMmrMMRDB)
  }
}

@end

void OrgMinimaDatabaseMmrMMRDB_init(OrgMinimaDatabaseMmrMMRDB *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mBaseSet_, new_OrgMinimaDatabaseMmrMMRSet_init());
}

OrgMinimaDatabaseMmrMMRDB *new_OrgMinimaDatabaseMmrMMRDB_init() {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseMmrMMRDB, init)
}

OrgMinimaDatabaseMmrMMRDB *create_OrgMinimaDatabaseMmrMMRDB_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseMmrMMRDB, init)
}

void OrgMinimaDatabaseMmrMMRDB_addUnspentWithOrgMinimaDatabaseMmrMMRData_(OrgMinimaDatabaseMmrMMRData *zData) {
  OrgMinimaDatabaseMmrMMRDB_initialize();
  JreStrongAssign(&OrgMinimaDatabaseMmrMMRDB_mLast1, [((OrgMinimaDatabaseMmrMMRSet *) nil_chk(OrgMinimaDatabaseMmrMMRDB_mSet1)) addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:zData]);
  JreStrongAssign(&OrgMinimaDatabaseMmrMMRDB_mLast2, [((OrgMinimaDatabaseMmrMMRSet *) nil_chk(OrgMinimaDatabaseMmrMMRDB_mSet2)) addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:zData]);
}

void OrgMinimaDatabaseMmrMMRDB_spendCoinWithOrgMinimaDatabaseMmrMMRProof_(OrgMinimaDatabaseMmrMMRProof *zProof) {
  OrgMinimaDatabaseMmrMMRDB_initialize();
  JreStrongAssign(&OrgMinimaDatabaseMmrMMRDB_mLast1, [((OrgMinimaDatabaseMmrMMRSet *) nil_chk(OrgMinimaDatabaseMmrMMRDB_mSet1)) updateSpentCoinWithOrgMinimaDatabaseMmrMMRProof:zProof]);
  JreStrongAssign(&OrgMinimaDatabaseMmrMMRDB_mLast2, [((OrgMinimaDatabaseMmrMMRSet *) nil_chk(OrgMinimaDatabaseMmrMMRDB_mSet2)) updateSpentCoinWithOrgMinimaDatabaseMmrMMRProof:zProof]);
}

void OrgMinimaDatabaseMmrMMRDB_newBlock() {
  OrgMinimaDatabaseMmrMMRDB_initialize();
  JreStrongAssignAndConsume(&OrgMinimaDatabaseMmrMMRDB_mSet1, new_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(OrgMinimaDatabaseMmrMMRDB_mSet1));
  JreStrongAssignAndConsume(&OrgMinimaDatabaseMmrMMRDB_mSet2, new_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(OrgMinimaDatabaseMmrMMRDB_mSet2));
}

void OrgMinimaDatabaseMmrMMRDB_printSets() {
  OrgMinimaDatabaseMmrMMRDB_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) println];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"SET 1"];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_(OrgMinimaDatabaseMmrMMRDB_mSet1);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"SET 2"];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_(OrgMinimaDatabaseMmrMMRDB_mSet2);
}

OrgMinimaDatabaseMmrMMRData *OrgMinimaDatabaseMmrMMRDB_getRandomCoin() {
  OrgMinimaDatabaseMmrMMRDB_initialize();
  OrgMinimaObjectsBaseMiniData32 *coin = create_OrgMinimaObjectsBaseMiniData32_initWithByteArray_([((OrgMinimaObjectsBaseMiniData *) nil_chk(OrgMinimaObjectsBaseMiniData_getRandomDataWithInt_(32))) getData]);
  OrgMinimaObjectsBaseMiniData32 *address = create_OrgMinimaObjectsBaseMiniData32_initWithNSString_(@"0xABBA");
  OrgMinimaObjectsBaseMiniNumber *amount = create_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"100");
  OrgMinimaObjectsBaseMiniData32 *tokenid = create_OrgMinimaObjectsBaseMiniData32_initWithNSString_(@"0x00");
  OrgMinimaObjectsCoin *cc = create_OrgMinimaObjectsCoin_initWithOrgMinimaObjectsBaseMiniData32_withOrgMinimaObjectsBaseMiniData32_withOrgMinimaObjectsBaseMiniNumber_withOrgMinimaObjectsBaseMiniData32_(coin, address, amount, tokenid);
  return create_OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_(JreLoadStatic(OrgMinimaObjectsBaseMiniByte, FALSE), cc, JreLoadStatic(OrgMinimaObjectsBaseMiniNumber, ZERO), create_JavaUtilArrayList_init());
}

void OrgMinimaDatabaseMmrMMRDB_mainWithNSStringArray_(IOSObjectArray *zArgs) {
  OrgMinimaDatabaseMmrMMRDB_initialize();
  OrgMinimaDatabaseMmrMMREntry *entry_ = nil;
  OrgMinimaDatabaseMmrMMRProof *genproof = nil;
  OrgMinimaDatabaseMmrMMRSet *set = create_OrgMinimaDatabaseMmrMMRSet_init();
  OrgMinimaDatabaseMmrMMREntry *prime = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_(set);
  set = create_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(set);
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  OrgMinimaObjectsBaseMiniNumber *spec = [((OrgMinimaDatabaseMmrMMREntry *) nil_chk(entry_)) getEntry];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:spec];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_withBoolean_(set, false);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@CZ", @"Proof #1 : ", genproof, ' ', [set checkProofWithOrgMinimaDatabaseMmrMMRProof:genproof])];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:spec];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_withBoolean_(set, false);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@CZ", @"Proof #2 : ", genproof, ' ', [set checkProofWithOrgMinimaDatabaseMmrMMRProof:genproof])];
  entry_ = [set updateSpentCoinWithOrgMinimaDatabaseMmrMMRProof:genproof];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaDatabaseMmrMMREntry *) nil_chk(entry_)) getEntry]];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_withBoolean_(set, false);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@CZ", @"Proof #3 : ", genproof, ' ', [set checkProofWithOrgMinimaDatabaseMmrMMRProof:genproof])];
  {
    JavaLangSystem_exitWithInt_(0);
  }
  set = create_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(set);
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaDatabaseMmrMMREntry *) nil_chk(entry_)) getEntry]];
  set = create_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(set);
  [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  set = create_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(set);
  set = create_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(set);
  [set updateSpentCoinWithOrgMinimaDatabaseMmrMMRProof:genproof];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:[entry_ getEntry]];
  [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_(set);
  set = create_OrgMinimaDatabaseMmrMMRSet_initWithOrgMinimaDatabaseMmrMMRSet_(set);
  entry_ = [set addUnspentCoinWithOrgMinimaDatabaseMmrMMRData:OrgMinimaDatabaseMmrMMRDB_getRandomCoin()];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaDatabaseMmrMMREntry *) nil_chk(entry_)) getEntry]];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"Proof #1 : ", genproof)];
  OrgMinimaDatabaseMmrMMRPrint_PrintWithOrgMinimaDatabaseMmrMMRSet_withBoolean_(set, false);
  entry_ = [set updateSpentCoinWithOrgMinimaDatabaseMmrMMRProof:genproof];
  genproof = [set getProofWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaDatabaseMmrMMREntry *) nil_chk(entry_)) getEntry]];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"Proof #2 : ", genproof)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseMmrMMRDB)
