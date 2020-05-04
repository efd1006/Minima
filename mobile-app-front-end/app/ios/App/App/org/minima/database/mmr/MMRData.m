//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/mmr/MMRData.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/util/ArrayList.h"
#include "org/minima/database/mmr/MMRData.h"
#include "org/minima/objects/Coin.h"
#include "org/minima/objects/StateVariable.h"
#include "org/minima/objects/base/MMRSumNumber.h"
#include "org/minima/objects/base/MiniByte.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniNumber.h"
#include "org/minima/utils/Crypto.h"
#include "org/minima/utils/json/JSONArray.h"
#include "org/minima/utils/json/JSONObject.h"

@interface OrgMinimaDatabaseMmrMMRData () {
 @public
  OrgMinimaObjectsBaseMMRSumNumber *mValueSum_;
}

- (instancetype)init;

- (void)calculateDataHash;

@end

J2OBJC_FIELD_SETTER(OrgMinimaDatabaseMmrMMRData, mValueSum_, OrgMinimaObjectsBaseMMRSumNumber *)

__attribute__((unused)) static void OrgMinimaDatabaseMmrMMRData_init(OrgMinimaDatabaseMmrMMRData *self);

__attribute__((unused)) static OrgMinimaDatabaseMmrMMRData *new_OrgMinimaDatabaseMmrMMRData_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgMinimaDatabaseMmrMMRData *create_OrgMinimaDatabaseMmrMMRData_init(void);

__attribute__((unused)) static void OrgMinimaDatabaseMmrMMRData_calculateDataHash(OrgMinimaDatabaseMmrMMRData *self);

@implementation OrgMinimaDatabaseMmrMMRData

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaDatabaseMmrMMRData_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zData
                withOrgMinimaObjectsBaseMMRSumNumber:(OrgMinimaObjectsBaseMMRSumNumber *)zValueSum {
  OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMMRSumNumber_(self, zData, zValueSum);
  return self;
}

- (instancetype)initWithOrgMinimaObjectsBaseMiniByte:(OrgMinimaObjectsBaseMiniByte *)zSpent
                            withOrgMinimaObjectsCoin:(OrgMinimaObjectsCoin *)zCoin
                  withOrgMinimaObjectsBaseMiniNumber:(OrgMinimaObjectsBaseMiniNumber *)zInBlock
                               withJavaUtilArrayList:(JavaUtilArrayList *)zState {
  OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_(self, zSpent, zCoin, zInBlock, zState);
  return self;
}

- (void)calculateDataHash {
  OrgMinimaDatabaseMmrMMRData_calculateDataHash(self);
}

- (OrgMinimaObjectsBaseMiniData *)getFinalHash {
  return mFinalHash_;
}

- (OrgMinimaObjectsBaseMMRSumNumber *)getValueSum {
  return mValueSum_;
}

- (jboolean)isSpent {
  return [((OrgMinimaObjectsBaseMiniByte *) nil_chk(mSpent_)) isEqualWithOrgMinimaObjectsBaseMiniByte:JreLoadStatic(OrgMinimaObjectsBaseMiniByte, TRUE)];
}

- (OrgMinimaObjectsCoin *)getCoin {
  return mCoin_;
}

- (JavaUtilArrayList *)getPrevState {
  return mPrevState_;
}

- (OrgMinimaObjectsBaseMiniNumber *)getInBlock {
  return mBlockNumber_;
}

- (jboolean)isHashOnly {
  return mHashOnly_;
}

- (OrgMinimaUtilsJsonJSONObject *)toJSON {
  OrgMinimaUtilsJsonJSONObject *obj = new_OrgMinimaUtilsJsonJSONObject_init();
  (void) [obj putWithId:@"hashonly" withId:JavaLangBoolean_valueOfWithBoolean_(mHashOnly_)];
  (void) [obj putWithId:@"value" withId:[((OrgMinimaObjectsBaseMMRSumNumber *) nil_chk(mValueSum_)) description]];
  if (mHashOnly_) {
    (void) [obj putWithId:@"finalhash" withId:[((OrgMinimaObjectsBaseMiniData *) nil_chk(mFinalHash_)) description]];
  }
  else {
    (void) [obj putWithId:@"finalhash" withId:[((OrgMinimaObjectsBaseMiniData *) nil_chk(mFinalHash_)) description]];
    (void) [obj putWithId:@"spent" withId:JavaLangBoolean_valueOfWithBoolean_([self isSpent])];
    (void) [obj putWithId:@"coin" withId:mCoin_];
    (void) [obj putWithId:@"inblock" withId:[((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mBlockNumber_)) description]];
    OrgMinimaUtilsJsonJSONArray *outs = new_OrgMinimaUtilsJsonJSONArray_init();
    for (OrgMinimaObjectsStateVariable * __strong sv in nil_chk(mPrevState_)) {
      [outs addWithId:[((OrgMinimaObjectsStateVariable *) nil_chk(sv)) toJSON]];
    }
    (void) [obj putWithId:@"prevstate" withId:outs];
  }
  return obj;
}

- (NSString *)description {
  return [((OrgMinimaUtilsJsonJSONObject *) nil_chk([self toJSON])) description];
}

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut {
  if (mHashOnly_) {
    [((OrgMinimaObjectsBaseMiniByte *) nil_chk(JreLoadStatic(OrgMinimaObjectsBaseMiniByte, TRUE))) writeDataStreamWithJavaIoDataOutputStream:zOut];
    [((OrgMinimaObjectsBaseMiniData *) nil_chk(mFinalHash_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
    [((OrgMinimaObjectsBaseMMRSumNumber *) nil_chk(mValueSum_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  else {
    [((OrgMinimaObjectsBaseMiniByte *) nil_chk(JreLoadStatic(OrgMinimaObjectsBaseMiniByte, FALSE))) writeDataStreamWithJavaIoDataOutputStream:zOut];
    [((OrgMinimaObjectsBaseMiniByte *) nil_chk(mSpent_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
    [((OrgMinimaObjectsCoin *) nil_chk(mCoin_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
    [((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mBlockNumber_)) writeDataStreamWithJavaIoDataOutputStream:zOut];
    jint len = [((JavaUtilArrayList *) nil_chk(mPrevState_)) size];
    [((JavaIoDataOutputStream *) nil_chk(zOut)) writeIntWithInt:len];
    for (OrgMinimaObjectsStateVariable * __strong sv in nil_chk(mPrevState_)) {
      [((OrgMinimaObjectsStateVariable *) nil_chk(sv)) writeDataStreamWithJavaIoDataOutputStream:zOut];
    }
  }
}

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn {
  OrgMinimaObjectsBaseMiniByte *hashonly = OrgMinimaObjectsBaseMiniByte_ReadFromStreamWithJavaIoDataInputStream_(zIn);
  mHashOnly_ = [((OrgMinimaObjectsBaseMiniByte *) nil_chk(hashonly)) isTrue];
  if (mHashOnly_) {
    mFinalHash_ = OrgMinimaObjectsBaseMiniData_ReadFromStreamWithJavaIoDataInputStream_(zIn);
    mValueSum_ = OrgMinimaObjectsBaseMMRSumNumber_ReadFromStreamWithJavaIoDataInputStream_(zIn);
  }
  else {
    mSpent_ = OrgMinimaObjectsBaseMiniByte_ReadFromStreamWithJavaIoDataInputStream_(zIn);
    mCoin_ = OrgMinimaObjectsCoin_ReadFromStreamWithJavaIoDataInputStream_(zIn);
    mBlockNumber_ = OrgMinimaObjectsBaseMiniNumber_ReadFromStreamWithJavaIoDataInputStream_(zIn);
    mPrevState_ = new_JavaUtilArrayList_init();
    jint sl = [((JavaIoDataInputStream *) nil_chk(zIn)) readInt];
    for (jint i = 0; i < sl; i++) {
      OrgMinimaObjectsStateVariable *sv = OrgMinimaObjectsStateVariable_ReadFromStreamWithJavaIoDataInputStream_(zIn);
      [((JavaUtilArrayList *) nil_chk(mPrevState_)) addWithId:sv];
    }
    if ([((OrgMinimaObjectsBaseMiniByte *) nil_chk(mSpent_)) isTrue]) {
      mValueSum_ = JreLoadStatic(OrgMinimaObjectsBaseMMRSumNumber, ZERO);
    }
    else {
      mValueSum_ = new_OrgMinimaObjectsBaseMMRSumNumber_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsCoin *) nil_chk(mCoin_)) getAmount]);
    }
    OrgMinimaDatabaseMmrMMRData_calculateDataHash(self);
  }
}

+ (OrgMinimaDatabaseMmrMMRData *)ReadFromStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn {
  return OrgMinimaDatabaseMmrMMRData_ReadFromStreamWithJavaIoDataInputStream_(zIn);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniData;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMMRSumNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsCoin;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaUtilsJsonJSONObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 7, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseMmrMMRData;", 0x9, 10, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgMinimaObjectsBaseMiniData:withOrgMinimaObjectsBaseMMRSumNumber:);
  methods[2].selector = @selector(initWithOrgMinimaObjectsBaseMiniByte:withOrgMinimaObjectsCoin:withOrgMinimaObjectsBaseMiniNumber:withJavaUtilArrayList:);
  methods[3].selector = @selector(calculateDataHash);
  methods[4].selector = @selector(getFinalHash);
  methods[5].selector = @selector(getValueSum);
  methods[6].selector = @selector(isSpent);
  methods[7].selector = @selector(getCoin);
  methods[8].selector = @selector(getPrevState);
  methods[9].selector = @selector(getInBlock);
  methods[10].selector = @selector(isHashOnly);
  methods[11].selector = @selector(toJSON);
  methods[12].selector = @selector(description);
  methods[13].selector = @selector(writeDataStreamWithJavaIoDataOutputStream:);
  methods[14].selector = @selector(readDataStreamWithJavaIoDataInputStream:);
  methods[15].selector = @selector(ReadFromStreamWithJavaIoDataInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mSpent_", "LOrgMinimaObjectsBaseMiniByte;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCoin_", "LOrgMinimaObjectsCoin;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mBlockNumber_", "LOrgMinimaObjectsBaseMiniNumber;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mPrevState_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 11, -1 },
    { "mFinalHash_", "LOrgMinimaObjectsBaseMiniData;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mValueSum_", "LOrgMinimaObjectsBaseMMRSumNumber;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mHashOnly_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaObjectsBaseMiniData;LOrgMinimaObjectsBaseMMRSumNumber;", "LOrgMinimaObjectsBaseMiniByte;LOrgMinimaObjectsCoin;LOrgMinimaObjectsBaseMiniNumber;LJavaUtilArrayList;", "(Lorg/minima/objects/base/MiniByte;Lorg/minima/objects/Coin;Lorg/minima/objects/base/MiniNumber;Ljava/util/ArrayList<Lorg/minima/objects/StateVariable;>;)V", "()Ljava/util/ArrayList<Lorg/minima/objects/StateVariable;>;", "toString", "writeDataStream", "LJavaIoDataOutputStream;", "LJavaIoIOException;", "readDataStream", "LJavaIoDataInputStream;", "ReadFromStream", "Ljava/util/ArrayList<Lorg/minima/objects/StateVariable;>;" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseMmrMMRData = { "MMRData", "org.minima.database.mmr", ptrTable, methods, fields, 7, 0x1, 16, 7, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseMmrMMRData;
}

@end

void OrgMinimaDatabaseMmrMMRData_init(OrgMinimaDatabaseMmrMMRData *self) {
  NSObject_init(self);
  self->mPrevState_ = new_JavaUtilArrayList_init();
}

OrgMinimaDatabaseMmrMMRData *new_OrgMinimaDatabaseMmrMMRData_init() {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseMmrMMRData, init)
}

OrgMinimaDatabaseMmrMMRData *create_OrgMinimaDatabaseMmrMMRData_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseMmrMMRData, init)
}

void OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMMRSumNumber_(OrgMinimaDatabaseMmrMMRData *self, OrgMinimaObjectsBaseMiniData *zData, OrgMinimaObjectsBaseMMRSumNumber *zValueSum) {
  NSObject_init(self);
  self->mPrevState_ = new_JavaUtilArrayList_init();
  self->mFinalHash_ = zData;
  self->mValueSum_ = zValueSum;
  self->mHashOnly_ = true;
}

OrgMinimaDatabaseMmrMMRData *new_OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMMRSumNumber_(OrgMinimaObjectsBaseMiniData *zData, OrgMinimaObjectsBaseMMRSumNumber *zValueSum) {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseMmrMMRData, initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMMRSumNumber_, zData, zValueSum)
}

OrgMinimaDatabaseMmrMMRData *create_OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMMRSumNumber_(OrgMinimaObjectsBaseMiniData *zData, OrgMinimaObjectsBaseMMRSumNumber *zValueSum) {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseMmrMMRData, initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMMRSumNumber_, zData, zValueSum)
}

void OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_(OrgMinimaDatabaseMmrMMRData *self, OrgMinimaObjectsBaseMiniByte *zSpent, OrgMinimaObjectsCoin *zCoin, OrgMinimaObjectsBaseMiniNumber *zInBlock, JavaUtilArrayList *zState) {
  NSObject_init(self);
  self->mPrevState_ = new_JavaUtilArrayList_init();
  self->mSpent_ = zSpent;
  self->mCoin_ = zCoin;
  self->mBlockNumber_ = zInBlock;
  for (OrgMinimaObjectsStateVariable * __strong sv in nil_chk(zState)) {
    [((JavaUtilArrayList *) nil_chk(self->mPrevState_)) addWithId:sv];
  }
  self->mHashOnly_ = false;
  if ([((OrgMinimaObjectsBaseMiniByte *) nil_chk(self->mSpent_)) isTrue]) {
    self->mValueSum_ = JreLoadStatic(OrgMinimaObjectsBaseMMRSumNumber, ZERO);
  }
  else {
    self->mValueSum_ = new_OrgMinimaObjectsBaseMMRSumNumber_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsCoin *) nil_chk(self->mCoin_)) getAmount]);
  }
  OrgMinimaDatabaseMmrMMRData_calculateDataHash(self);
}

OrgMinimaDatabaseMmrMMRData *new_OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_(OrgMinimaObjectsBaseMiniByte *zSpent, OrgMinimaObjectsCoin *zCoin, OrgMinimaObjectsBaseMiniNumber *zInBlock, JavaUtilArrayList *zState) {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseMmrMMRData, initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_, zSpent, zCoin, zInBlock, zState)
}

OrgMinimaDatabaseMmrMMRData *create_OrgMinimaDatabaseMmrMMRData_initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_(OrgMinimaObjectsBaseMiniByte *zSpent, OrgMinimaObjectsCoin *zCoin, OrgMinimaObjectsBaseMiniNumber *zInBlock, JavaUtilArrayList *zState) {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseMmrMMRData, initWithOrgMinimaObjectsBaseMiniByte_withOrgMinimaObjectsCoin_withOrgMinimaObjectsBaseMiniNumber_withJavaUtilArrayList_, zSpent, zCoin, zInBlock, zState)
}

void OrgMinimaDatabaseMmrMMRData_calculateDataHash(OrgMinimaDatabaseMmrMMRData *self) {
  JavaIoByteArrayOutputStream *baos = new_JavaIoByteArrayOutputStream_init();
  JavaIoDataOutputStream *dos = new_JavaIoDataOutputStream_initWithJavaIoOutputStream_(baos);
  @try {
    [self writeDataStreamWithJavaIoDataOutputStream:dos];
    [dos flush];
    [baos flush];
    OrgMinimaObjectsBaseMiniData *data = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_([baos toByteArray]);
    self->mFinalHash_ = [((OrgMinimaUtilsCrypto *) nil_chk(OrgMinimaUtilsCrypto_getInstance())) hashObjectWithOrgMinimaUtilsStreamable:data withInt:512];
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
  }
}

OrgMinimaDatabaseMmrMMRData *OrgMinimaDatabaseMmrMMRData_ReadFromStreamWithJavaIoDataInputStream_(JavaIoDataInputStream *zIn) {
  OrgMinimaDatabaseMmrMMRData_initialize();
  OrgMinimaDatabaseMmrMMRData *data = new_OrgMinimaDatabaseMmrMMRData_init();
  @try {
    [data readDataStreamWithJavaIoDataInputStream:zIn];
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
    return nil;
  }
  return data;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseMmrMMRData)
