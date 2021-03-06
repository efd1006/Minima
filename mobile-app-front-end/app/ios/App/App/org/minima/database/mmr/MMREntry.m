//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/mmr/MMREntry.java
//

#include "J2ObjC_source.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#include "java/lang/Integer.h"
#include "java/math/BigInteger.h"
#include "org/minima/database/mmr/MMRData.h"
#include "org/minima/database/mmr/MMREntry.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniInteger.h"
#include "org/minima/objects/base/MiniNumber.h"
#include "org/minima/utils/MinimaLogger.h"
#include "org/minima/utils/json/JSONObject.h"

@implementation OrgMinimaDatabaseMmrMMREntry

- (instancetype)initWithInt:(jint)zRow
withOrgMinimaObjectsBaseMiniInteger:(OrgMinimaObjectsBaseMiniInteger *)zEntry {
  OrgMinimaDatabaseMmrMMREntry_initWithInt_withOrgMinimaObjectsBaseMiniInteger_(self, zRow, zEntry);
  return self;
}

- (jboolean)isEmpty {
  return mIsEmpty_;
}

- (jboolean)checkPositionWithInt:(jint)zRow
withOrgMinimaObjectsBaseMiniInteger:(OrgMinimaObjectsBaseMiniInteger *)zEntry {
  return (zRow == mRow_) && [((OrgMinimaObjectsBaseMiniInteger *) nil_chk(zEntry)) isEqualWithOrgMinimaObjectsBaseMiniInteger:mEntryNumber_];
}

- (jboolean)checkPositionWithOrgMinimaDatabaseMmrMMREntry:(OrgMinimaDatabaseMmrMMREntry *)zEntry {
  return ([((OrgMinimaDatabaseMmrMMREntry *) nil_chk(zEntry)) getRow] == mRow_) && [((OrgMinimaObjectsBaseMiniInteger *) nil_chk([zEntry getEntry])) isEqualWithOrgMinimaObjectsBaseMiniInteger:mEntryNumber_];
}

- (void)setDataWithOrgMinimaDatabaseMmrMMRData:(OrgMinimaDatabaseMmrMMRData *)zData {
  mData_ = zData;
  mIsEmpty_ = false;
}

- (void)clearData {
  mIsEmpty_ = true;
  mData_ = nil;
}

- (OrgMinimaDatabaseMmrMMRData *)getData {
  return mData_;
}

- (void)setBlockTimeWithOrgMinimaObjectsBaseMiniNumber:(OrgMinimaObjectsBaseMiniNumber *)zBlockTime {
  mBlockTime_ = zBlockTime;
}

- (OrgMinimaObjectsBaseMiniNumber *)getBlockTime {
  return mBlockTime_;
}

- (OrgMinimaObjectsBaseMiniData *)getHashValue {
  if ([self isEmpty]) {
    OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("$@", @"ERROR NULL Entry : ", self));
  }
  return [((OrgMinimaDatabaseMmrMMRData *) nil_chk(mData_)) getFinalHash];
}

- (OrgMinimaUtilsJsonJSONObject *)toJSON {
  OrgMinimaUtilsJsonJSONObject *ret = new_OrgMinimaUtilsJsonJSONObject_init();
  (void) [ret putWithId:@"block" withId:[((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mBlockTime_)) description]];
  (void) [ret putWithId:@"row" withId:JavaLangInteger_valueOfWithInt_(mRow_)];
  (void) [ret putWithId:@"entry" withId:[((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) description]];
  (void) [ret putWithId:@"data" withId:[((OrgMinimaDatabaseMmrMMRData *) nil_chk(mData_)) toJSON]];
  return ret;
}

- (NSString *)description {
  return JreStrcat("$@$I$@$@", @"BLKTIME:", mBlockTime_, @" R:", mRow_, @" E:", mEntryNumber_, @" D:", mData_);
}

- (OrgMinimaObjectsBaseMiniInteger *)getEntry {
  return mEntryNumber_;
}

- (jint)getRow {
  return mRow_;
}

- (jint)getParentRow {
  return mRow_ + 1;
}

- (jint)getChildRow {
  return mRow_ - 1;
}

- (jboolean)isLeft {
  return [((OrgMinimaObjectsBaseMiniInteger *) nil_chk([((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) moduloWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, TWO)])) isEqualWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, ZERO)];
}

- (jboolean)isRight {
  return ![self isLeft];
}

- (OrgMinimaObjectsBaseMiniInteger *)getLeftSibling {
  return [((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) subWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, ONE)];
}

- (OrgMinimaObjectsBaseMiniInteger *)getRightSibling {
  return [((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) addWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, ONE)];
}

- (OrgMinimaObjectsBaseMiniInteger *)getSibling {
  if ([self isLeft]) {
    return [self getRightSibling];
  }
  else {
    return [self getLeftSibling];
  }
}

- (OrgMinimaObjectsBaseMiniInteger *)getParentEntry {
  return [((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) divRoundDownWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, TWO)];
}

- (OrgMinimaObjectsBaseMiniInteger *)getLeftChildEntry {
  return [((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) multWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, TWO)];
}

- (OrgMinimaObjectsBaseMiniInteger *)getRightChildEntry {
  return [((OrgMinimaObjectsBaseMiniInteger *) nil_chk([self getLeftChildEntry])) addWithOrgMinimaObjectsBaseMiniInteger:JreLoadStatic(OrgMinimaObjectsBaseMiniInteger, ONE)];
}

- (jint)compareToWithId:(OrgMinimaDatabaseMmrMMREntry *)zEntry {
  (void) cast_chk(zEntry, [OrgMinimaDatabaseMmrMMREntry class]);
  return [((JavaMathBigInteger *) nil_chk([((OrgMinimaObjectsBaseMiniInteger *) nil_chk([((OrgMinimaDatabaseMmrMMREntry *) nil_chk(zEntry)) getEntry])) getNumber])) compareToWithId:[((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) getNumber]];
}

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut {
  [((OrgMinimaObjectsBaseMiniInteger *) nil_chk(mEntryNumber_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  [((JavaIoDataOutputStream *) nil_chk(zOut)) writeIntWithInt:mRow_];
  [((OrgMinimaDatabaseMmrMMRData *) nil_chk(mData_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
}

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn {
  mEntryNumber_ = OrgMinimaObjectsBaseMiniInteger_ReadFromStreamWithJavaIoDataInputStream_(zIn);
  mRow_ = [((JavaIoDataInputStream *) nil_chk(zIn)) readInt];
  mData_ = OrgMinimaDatabaseMmrMMRData_ReadFromStreamWithJavaIoDataInputStream_(zIn);
  mIsEmpty_ = false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseMmrMMRData;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniData;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaUtilsJsonJSONObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 11, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 11, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withOrgMinimaObjectsBaseMiniInteger:);
  methods[1].selector = @selector(isEmpty);
  methods[2].selector = @selector(checkPositionWithInt:withOrgMinimaObjectsBaseMiniInteger:);
  methods[3].selector = @selector(checkPositionWithOrgMinimaDatabaseMmrMMREntry:);
  methods[4].selector = @selector(setDataWithOrgMinimaDatabaseMmrMMRData:);
  methods[5].selector = @selector(clearData);
  methods[6].selector = @selector(getData);
  methods[7].selector = @selector(setBlockTimeWithOrgMinimaObjectsBaseMiniNumber:);
  methods[8].selector = @selector(getBlockTime);
  methods[9].selector = @selector(getHashValue);
  methods[10].selector = @selector(toJSON);
  methods[11].selector = @selector(description);
  methods[12].selector = @selector(getEntry);
  methods[13].selector = @selector(getRow);
  methods[14].selector = @selector(getParentRow);
  methods[15].selector = @selector(getChildRow);
  methods[16].selector = @selector(isLeft);
  methods[17].selector = @selector(isRight);
  methods[18].selector = @selector(getLeftSibling);
  methods[19].selector = @selector(getRightSibling);
  methods[20].selector = @selector(getSibling);
  methods[21].selector = @selector(getParentEntry);
  methods[22].selector = @selector(getLeftChildEntry);
  methods[23].selector = @selector(getRightChildEntry);
  methods[24].selector = @selector(compareToWithId:);
  methods[25].selector = @selector(writeDataStreamWithJavaIoDataOutputStream:);
  methods[26].selector = @selector(readDataStreamWithJavaIoDataInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mEntryNumber_", "LOrgMinimaObjectsBaseMiniInteger;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRow_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mBlockTime_", "LOrgMinimaObjectsBaseMiniNumber;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mData_", "LOrgMinimaDatabaseMmrMMRData;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mIsEmpty_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILOrgMinimaObjectsBaseMiniInteger;", "checkPosition", "LOrgMinimaDatabaseMmrMMREntry;", "setData", "LOrgMinimaDatabaseMmrMMRData;", "setBlockTime", "LOrgMinimaObjectsBaseMiniNumber;", "toString", "compareTo", "writeDataStream", "LJavaIoDataOutputStream;", "LJavaIoIOException;", "readDataStream", "LJavaIoDataInputStream;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/minima/database/mmr/MMREntry;>;Lorg/minima/utils/Streamable;" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseMmrMMREntry = { "MMREntry", "org.minima.database.mmr", ptrTable, methods, fields, 7, 0x1, 27, 5, -1, -1, -1, 14, -1 };
  return &_OrgMinimaDatabaseMmrMMREntry;
}

@end

void OrgMinimaDatabaseMmrMMREntry_initWithInt_withOrgMinimaObjectsBaseMiniInteger_(OrgMinimaDatabaseMmrMMREntry *self, jint zRow, OrgMinimaObjectsBaseMiniInteger *zEntry) {
  NSObject_init(self);
  self->mBlockTime_ = new_OrgMinimaObjectsBaseMiniNumber_initWithInt_(0);
  self->mRow_ = zRow;
  self->mEntryNumber_ = zEntry;
  self->mIsEmpty_ = true;
}

OrgMinimaDatabaseMmrMMREntry *new_OrgMinimaDatabaseMmrMMREntry_initWithInt_withOrgMinimaObjectsBaseMiniInteger_(jint zRow, OrgMinimaObjectsBaseMiniInteger *zEntry) {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseMmrMMREntry, initWithInt_withOrgMinimaObjectsBaseMiniInteger_, zRow, zEntry)
}

OrgMinimaDatabaseMmrMMREntry *create_OrgMinimaDatabaseMmrMMREntry_initWithInt_withOrgMinimaObjectsBaseMiniInteger_(jint zRow, OrgMinimaObjectsBaseMiniInteger *zEntry) {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseMmrMMREntry, initWithInt_withOrgMinimaObjectsBaseMiniInteger_, zRow, zEntry)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseMmrMMREntry)
