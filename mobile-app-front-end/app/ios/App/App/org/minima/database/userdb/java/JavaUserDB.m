//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/userdb/java/JavaUserDB.java
//

#include "J2ObjC_source.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#include "java/util/ArrayList.h"
#include "org/minima/database/userdb/UserDBRow.h"
#include "org/minima/database/userdb/java/JavaUserDB.h"
#include "org/minima/database/userdb/java/JavaUserDBRow.h"
#include "org/minima/objects/Address.h"
#include "org/minima/objects/Coin.h"
#include "org/minima/objects/PubPrivKey.h"
#include "org/minima/objects/Transaction.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniData32.h"

@implementation OrgMinimaDatabaseUserdbJavaJavaUserDB

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaDatabaseUserdbJavaJavaUserDB_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaUtilArrayList *)getAllAddresses {
  return mTotalAddresses_;
}

- (JavaUtilArrayList *)getKeys {
  return mPubPrivKeys_;
}

- (OrgMinimaObjectsPubPrivKey *)newPublicKey {
  OrgMinimaObjectsPubPrivKey *pubkey = create_OrgMinimaObjectsPubPrivKey_init();
  [((JavaUtilArrayList *) nil_chk(mPubPrivKeys_)) addWithId:pubkey];
  return pubkey;
}

- (JavaUtilArrayList *)getAllRows {
  return mRows_;
}

- (id<OrgMinimaDatabaseUserdbUserDBRow>)getUserRowWithInt:(jint)zID {
  for (id<OrgMinimaDatabaseUserdbUserDBRow> __strong row in nil_chk(mRows_)) {
    if ([((id<OrgMinimaDatabaseUserdbUserDBRow>) nil_chk(row)) getID] == zID) {
      return row;
    }
  }
  return nil;
}

- (id<OrgMinimaDatabaseUserdbUserDBRow>)addUserRow {
  id<OrgMinimaDatabaseUserdbUserDBRow> row = create_OrgMinimaDatabaseUserdbJavaJavaUserDBRow_initWithInt_(mCounter_++);
  [((JavaUtilArrayList *) nil_chk(mRows_)) addWithId:row];
  return row;
}

- (void)deleteUserRowWithInt:(jint)zID {
  id<OrgMinimaDatabaseUserdbUserDBRow> row = [self getUserRowWithInt:zID];
  [((JavaUtilArrayList *) nil_chk(mRows_)) removeWithId:row];
}

- (JavaUtilArrayList *)getSimpleAddresses {
  return mAddresses_;
}

- (OrgMinimaObjectsAddress *)newSimpleAddress {
  return [self newSimpleAddressWithOrgMinimaObjectsPubPrivKey:create_OrgMinimaObjectsPubPrivKey_init()];
}

- (OrgMinimaObjectsAddress *)newSimpleAddressWithOrgMinimaObjectsPubPrivKey:(OrgMinimaObjectsPubPrivKey *)zPubPriv {
  [((JavaUtilArrayList *) nil_chk(mPubPrivKeys_)) addWithId:zPubPriv];
  NSString *script = JreStrcat("$@$", @"RETURN SIGNEDBY ( ", [((OrgMinimaObjectsPubPrivKey *) nil_chk(zPubPriv)) getPublicKey], @" )");
  OrgMinimaObjectsAddress *addr = create_OrgMinimaObjectsAddress_initWithNSString_(script);
  [((JavaUtilArrayList *) nil_chk(mAddresses_)) addWithId:addr];
  [((JavaUtilArrayList *) nil_chk(mTotalAddresses_)) addWithId:addr];
  return addr;
}

- (jboolean)isSimpleAddressWithOrgMinimaObjectsBaseMiniData32:(OrgMinimaObjectsBaseMiniData32 *)zAddress {
  for (OrgMinimaObjectsAddress * __strong addr in nil_chk(mAddresses_)) {
    if ([((OrgMinimaObjectsAddress *) nil_chk(addr)) isEqualWithOrgMinimaObjectsBaseMiniData32:zAddress]) {
      return true;
    }
  }
  return false;
}

- (OrgMinimaObjectsPubPrivKey *)getPubPrivKeyWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zPubKey {
  for (OrgMinimaObjectsPubPrivKey * __strong key in nil_chk(mPubPrivKeys_)) {
    if ([((OrgMinimaObjectsBaseMiniData *) nil_chk([((OrgMinimaObjectsPubPrivKey *) nil_chk(key)) getPublicKey])) isExactlyEqualWithOrgMinimaObjectsBaseMiniData:zPubKey]) {
      return key;
    }
  }
  return nil;
}

- (JavaUtilArrayList *)getScriptAddresses {
  return mScriptAddresses_;
}

- (OrgMinimaObjectsAddress *)newScriptAddressWithNSString:(NSString *)zScript {
  OrgMinimaObjectsAddress *addr = create_OrgMinimaObjectsAddress_initWithNSString_(zScript);
  [((JavaUtilArrayList *) nil_chk(mScriptAddresses_)) addWithId:addr];
  [((JavaUtilArrayList *) nil_chk(mTotalAddresses_)) addWithId:addr];
  return addr;
}

- (NSString *)getScriptWithOrgMinimaObjectsBaseMiniData32:(OrgMinimaObjectsBaseMiniData32 *)zAddress {
  for (OrgMinimaObjectsAddress * __strong addr in nil_chk(mTotalAddresses_)) {
    if ([((OrgMinimaObjectsBaseMiniData32 *) nil_chk([((OrgMinimaObjectsAddress *) nil_chk(addr)) getAddressData])) isExactlyEqualWithOrgMinimaObjectsBaseMiniData:zAddress]) {
      return [addr getScript];
    }
  }
  return @"NULL";
}

- (jboolean)isAddressRelevantWithOrgMinimaObjectsBaseMiniData32:(OrgMinimaObjectsBaseMiniData32 *)zAddress {
  for (OrgMinimaObjectsAddress * __strong addr in nil_chk(mTotalAddresses_)) {
    if ([((OrgMinimaObjectsBaseMiniData32 *) nil_chk([((OrgMinimaObjectsAddress *) nil_chk(addr)) getAddressData])) isExactlyEqualWithOrgMinimaObjectsBaseMiniData:zAddress]) {
      return true;
    }
  }
  return false;
}

- (jboolean)isTransactionRelevantWithOrgMinimaObjectsTransaction:(OrgMinimaObjectsTransaction *)zTrans {
  JavaUtilArrayList *ins = [((OrgMinimaObjectsTransaction *) nil_chk(zTrans)) getAllInputs];
  JavaUtilArrayList *outs = [zTrans getAllOutputs];
  jboolean rel = false;
  for (OrgMinimaObjectsCoin * __strong in in nil_chk(ins)) {
    if ([self isAddressRelevantWithOrgMinimaObjectsBaseMiniData32:[((OrgMinimaObjectsCoin *) nil_chk(in)) getAddress]]) {
      rel = true;
    }
  }
  for (OrgMinimaObjectsCoin * __strong out in nil_chk(outs)) {
    if ([self isAddressRelevantWithOrgMinimaObjectsBaseMiniData32:[((OrgMinimaObjectsCoin *) nil_chk(out)) getAddress]]) {
      rel = true;
    }
  }
  return rel;
}

- (OrgMinimaObjectsBaseMiniData *)getPublicKeyWithOrgMinimaObjectsBaseMiniData32:(OrgMinimaObjectsBaseMiniData32 *)zAddress {
  for (OrgMinimaObjectsAddress * __strong addr in nil_chk(mAddresses_)) {
    if ([((OrgMinimaObjectsAddress *) nil_chk(addr)) isEqualWithOrgMinimaObjectsBaseMiniData32:zAddress]) {
      NSString *script = [addr getScript];
      jint index = [((NSString *) nil_chk(script)) java_indexOfString:@"0x"];
      jint end = [script java_indexOfString:@" " fromIndex:index];
      NSString *pubk = [script java_substring:index endIndex:end];
      return create_OrgMinimaObjectsBaseMiniData_initWithNSString_(pubk);
    }
  }
  return nil;
}

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut {
  jint len = 0;
  len = [((JavaUtilArrayList *) nil_chk(mPubPrivKeys_)) size];
  [((JavaIoDataOutputStream *) nil_chk(zOut)) writeIntWithInt:len];
  for (OrgMinimaObjectsPubPrivKey * __strong key in nil_chk(mPubPrivKeys_)) {
    [((OrgMinimaObjectsPubPrivKey *) nil_chk(key)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  len = [((JavaUtilArrayList *) nil_chk(mAddresses_)) size];
  [zOut writeIntWithInt:len];
  for (OrgMinimaObjectsAddress * __strong addr in nil_chk(mAddresses_)) {
    [((OrgMinimaObjectsAddress *) nil_chk(addr)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  len = [((JavaUtilArrayList *) nil_chk(mScriptAddresses_)) size];
  [zOut writeIntWithInt:len];
  for (OrgMinimaObjectsAddress * __strong addr in nil_chk(mScriptAddresses_)) {
    [((OrgMinimaObjectsAddress *) nil_chk(addr)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  [zOut writeIntWithInt:mCounter_];
  len = [((JavaUtilArrayList *) nil_chk(mRows_)) size];
  [zOut writeIntWithInt:len];
  for (id<OrgMinimaDatabaseUserdbUserDBRow> __strong row in nil_chk(mRows_)) {
    OrgMinimaDatabaseUserdbJavaJavaUserDBRow *jrow = (OrgMinimaDatabaseUserdbJavaJavaUserDBRow *) cast_chk(row, [OrgMinimaDatabaseUserdbJavaJavaUserDBRow class]);
    [((OrgMinimaDatabaseUserdbJavaJavaUserDBRow *) nil_chk(jrow)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
}

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn {
  JreStrongAssignAndConsume(&mPubPrivKeys_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&mAddresses_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&mScriptAddresses_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&mTotalAddresses_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&mRows_, new_JavaUtilArrayList_init());
  jint len = [((JavaIoDataInputStream *) nil_chk(zIn)) readInt];
  for (jint i = 0; i < len; i++) {
    OrgMinimaObjectsPubPrivKey *pp = create_OrgMinimaObjectsPubPrivKey_initWithBoolean_(true);
    [pp readDataStreamWithJavaIoDataInputStream:zIn];
    [((JavaUtilArrayList *) nil_chk(mPubPrivKeys_)) addWithId:pp];
  }
  len = [zIn readInt];
  for (jint i = 0; i < len; i++) {
    OrgMinimaObjectsAddress *addr = create_OrgMinimaObjectsAddress_init();
    [addr readDataStreamWithJavaIoDataInputStream:zIn];
    [((JavaUtilArrayList *) nil_chk(mAddresses_)) addWithId:addr];
    [((JavaUtilArrayList *) nil_chk(mTotalAddresses_)) addWithId:addr];
  }
  len = [zIn readInt];
  for (jint i = 0; i < len; i++) {
    OrgMinimaObjectsAddress *addr = create_OrgMinimaObjectsAddress_init();
    [addr readDataStreamWithJavaIoDataInputStream:zIn];
    [((JavaUtilArrayList *) nil_chk(mScriptAddresses_)) addWithId:addr];
    [((JavaUtilArrayList *) nil_chk(mTotalAddresses_)) addWithId:addr];
  }
  mCounter_ = [zIn readInt];
  len = [zIn readInt];
  for (jint i = 0; i < len; i++) {
    OrgMinimaDatabaseUserdbJavaJavaUserDBRow *row = create_OrgMinimaDatabaseUserdbJavaJavaUserDBRow_init();
    [row readDataStreamWithJavaIoDataInputStream:zIn];
    [((JavaUtilArrayList *) nil_chk(mRows_)) addWithId:row];
  }
}

- (void)dealloc {
  RELEASE_(mPubPrivKeys_);
  RELEASE_(mAddresses_);
  RELEASE_(mScriptAddresses_);
  RELEASE_(mRows_);
  RELEASE_(mTotalAddresses_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "LOrgMinimaObjectsPubPrivKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LOrgMinimaDatabaseUserdbUserDBRow;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaDatabaseUserdbUserDBRow;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "LOrgMinimaObjectsAddress;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsAddress;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsPubPrivKey;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "LOrgMinimaObjectsAddress;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniData;", 0x1, 18, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, 21, -1, -1, -1 },
    { NULL, "V", 0x1, 22, 23, 21, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getAllAddresses);
  methods[2].selector = @selector(getKeys);
  methods[3].selector = @selector(newPublicKey);
  methods[4].selector = @selector(getAllRows);
  methods[5].selector = @selector(getUserRowWithInt:);
  methods[6].selector = @selector(addUserRow);
  methods[7].selector = @selector(deleteUserRowWithInt:);
  methods[8].selector = @selector(getSimpleAddresses);
  methods[9].selector = @selector(newSimpleAddress);
  methods[10].selector = @selector(newSimpleAddressWithOrgMinimaObjectsPubPrivKey:);
  methods[11].selector = @selector(isSimpleAddressWithOrgMinimaObjectsBaseMiniData32:);
  methods[12].selector = @selector(getPubPrivKeyWithOrgMinimaObjectsBaseMiniData:);
  methods[13].selector = @selector(getScriptAddresses);
  methods[14].selector = @selector(newScriptAddressWithNSString:);
  methods[15].selector = @selector(getScriptWithOrgMinimaObjectsBaseMiniData32:);
  methods[16].selector = @selector(isAddressRelevantWithOrgMinimaObjectsBaseMiniData32:);
  methods[17].selector = @selector(isTransactionRelevantWithOrgMinimaObjectsTransaction:);
  methods[18].selector = @selector(getPublicKeyWithOrgMinimaObjectsBaseMiniData32:);
  methods[19].selector = @selector(writeDataStreamWithJavaIoDataOutputStream:);
  methods[20].selector = @selector(readDataStreamWithJavaIoDataInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mPubPrivKeys_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 24, -1 },
    { "mAddresses_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 25, -1 },
    { "mScriptAddresses_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 25, -1 },
    { "mCounter_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRows_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 26, -1 },
    { "mTotalAddresses_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 25, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/ArrayList<Lorg/minima/objects/Address;>;", "()Ljava/util/ArrayList<Lorg/minima/objects/PubPrivKey;>;", "()Ljava/util/ArrayList<Lorg/minima/database/userdb/UserDBRow;>;", "getUserRow", "I", "deleteUserRow", "newSimpleAddress", "LOrgMinimaObjectsPubPrivKey;", "isSimpleAddress", "LOrgMinimaObjectsBaseMiniData32;", "getPubPrivKey", "LOrgMinimaObjectsBaseMiniData;", "newScriptAddress", "LNSString;", "getScript", "isAddressRelevant", "isTransactionRelevant", "LOrgMinimaObjectsTransaction;", "getPublicKey", "writeDataStream", "LJavaIoDataOutputStream;", "LJavaIoIOException;", "readDataStream", "LJavaIoDataInputStream;", "Ljava/util/ArrayList<Lorg/minima/objects/PubPrivKey;>;", "Ljava/util/ArrayList<Lorg/minima/objects/Address;>;", "Ljava/util/ArrayList<Lorg/minima/database/userdb/UserDBRow;>;" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseUserdbJavaJavaUserDB = { "JavaUserDB", "org.minima.database.userdb.java", ptrTable, methods, fields, 7, 0x1, 21, 6, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseUserdbJavaJavaUserDB;
}

@end

void OrgMinimaDatabaseUserdbJavaJavaUserDB_init(OrgMinimaDatabaseUserdbJavaJavaUserDB *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mPubPrivKeys_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mAddresses_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mScriptAddresses_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mTotalAddresses_, new_JavaUtilArrayList_init());
  self->mCounter_ = 0;
  JreStrongAssignAndConsume(&self->mRows_, new_JavaUtilArrayList_init());
}

OrgMinimaDatabaseUserdbJavaJavaUserDB *new_OrgMinimaDatabaseUserdbJavaJavaUserDB_init() {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseUserdbJavaJavaUserDB, init)
}

OrgMinimaDatabaseUserdbJavaJavaUserDB *create_OrgMinimaDatabaseUserdbJavaJavaUserDB_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseUserdbJavaJavaUserDB, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseUserdbJavaJavaUserDB)
