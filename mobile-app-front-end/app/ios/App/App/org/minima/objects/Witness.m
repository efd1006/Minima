//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/objects/Witness.java
//

#include "J2ObjC_source.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#include "java/util/ArrayList.h"
#include "org/minima/database/mmr/MMRProof.h"
#include "org/minima/objects/Witness.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/utils/json/JSONArray.h"
#include "org/minima/utils/json/JSONObject.h"

@implementation OrgMinimaObjectsWitness

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaObjectsWitness_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addScriptWithNSString:(NSString *)zScript {
  [((JavaUtilArrayList *) nil_chk(mScripts_)) addWithId:zScript];
}

- (NSString *)getScriptWithInt:(jint)zScript {
  return [((JavaUtilArrayList *) nil_chk(mScripts_)) getWithInt:zScript];
}

- (void)addMMRProofWithOrgMinimaDatabaseMmrMMRProof:(OrgMinimaDatabaseMmrMMRProof *)zProof {
  [((JavaUtilArrayList *) nil_chk(mProofs_)) addWithId:zProof];
}

- (JavaUtilArrayList *)getAllProofs {
  return mProofs_;
}

- (void)addSignatureWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zPublicKey
                    withOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zSig {
  [((JavaUtilArrayList *) nil_chk(mPublicKeys_)) addWithId:zPublicKey];
  [((JavaUtilArrayList *) nil_chk(mSignatures_)) addWithId:zSig];
}

- (OrgMinimaObjectsBaseMiniData *)getPublicKeyWithInt:(jint)zPubk {
  return [((JavaUtilArrayList *) nil_chk(mPublicKeys_)) getWithInt:zPubk];
}

- (OrgMinimaObjectsBaseMiniData *)getSignatureWithInt:(jint)zSig {
  return [((JavaUtilArrayList *) nil_chk(mSignatures_)) getWithInt:zSig];
}

- (JavaUtilArrayList *)getAllSignatures {
  return mSignatures_;
}

- (JavaUtilArrayList *)getAllPubKeys {
  return mPublicKeys_;
}

- (NSString *)getAllPubKeysCSV {
  NSString *ret = @"";
  for (OrgMinimaObjectsBaseMiniData * __strong sig in nil_chk(mPublicKeys_)) {
    JreStrAppend(&ret, "$C", [((OrgMinimaObjectsBaseMiniData *) nil_chk(sig)) description], ',');
  }
  return [ret java_trim];
}

- (OrgMinimaUtilsJsonJSONObject *)toJSON {
  OrgMinimaUtilsJsonJSONObject *obj = create_OrgMinimaUtilsJsonJSONObject_init();
  OrgMinimaUtilsJsonJSONArray *arr = create_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaObjectsBaseMiniData * __strong pubk in nil_chk(mPublicKeys_)) {
    [arr addWithId:[((OrgMinimaObjectsBaseMiniData *) nil_chk(pubk)) description]];
  }
  [obj putWithId:@"publickeys" withId:arr];
  arr = create_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaObjectsBaseMiniData * __strong sig in nil_chk(mSignatures_)) {
    [arr addWithId:[((OrgMinimaObjectsBaseMiniData *) nil_chk(sig)) description]];
  }
  [obj putWithId:@"signatures" withId:arr];
  arr = create_OrgMinimaUtilsJsonJSONArray_init();
  for (NSString * __strong script in nil_chk(mScripts_)) {
    [arr addWithId:script];
  }
  [obj putWithId:@"scripts" withId:arr];
  arr = create_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaDatabaseMmrMMRProof * __strong proof in nil_chk(mProofs_)) {
    [arr addWithId:[((OrgMinimaDatabaseMmrMMRProof *) nil_chk(proof)) toJSON]];
  }
  [obj putWithId:@"mmrproofs" withId:arr];
  return obj;
}

- (NSString *)description {
  return [((OrgMinimaUtilsJsonJSONObject *) nil_chk([self toJSON])) description];
}

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut {
  jint pklen = [((JavaUtilArrayList *) nil_chk(mPublicKeys_)) size];
  [((JavaIoDataOutputStream *) nil_chk(zOut)) writeIntWithInt:pklen];
  for (OrgMinimaObjectsBaseMiniData * __strong pubk in nil_chk(mPublicKeys_)) {
    [((OrgMinimaObjectsBaseMiniData *) nil_chk(pubk)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  [zOut writeIntWithInt:[((JavaUtilArrayList *) nil_chk(mSignatures_)) size]];
  for (OrgMinimaObjectsBaseMiniData * __strong sig in nil_chk(mSignatures_)) {
    [((OrgMinimaObjectsBaseMiniData *) nil_chk(sig)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  jint sclen = [((JavaUtilArrayList *) nil_chk(mScripts_)) size];
  [zOut writeIntWithInt:sclen];
  for (NSString * __strong script in nil_chk(mScripts_)) {
    [zOut writeUTFWithNSString:script];
  }
  jint mmrlen = [((JavaUtilArrayList *) nil_chk(mProofs_)) size];
  [zOut writeIntWithInt:mmrlen];
  for (OrgMinimaDatabaseMmrMMRProof * __strong proof in nil_chk(mProofs_)) {
    [((OrgMinimaDatabaseMmrMMRProof *) nil_chk(proof)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
}

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn {
  JreStrongAssignAndConsume(&mPublicKeys_, new_JavaUtilArrayList_init());
  jint prlen = [((JavaIoDataInputStream *) nil_chk(zIn)) readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mPublicKeys_)) addWithId:OrgMinimaObjectsBaseMiniData_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
  JreStrongAssignAndConsume(&mSignatures_, new_JavaUtilArrayList_init());
  jint siglen = [zIn readInt];
  for (jint i = 0; i < siglen; i++) {
    [((JavaUtilArrayList *) nil_chk(mSignatures_)) addWithId:OrgMinimaObjectsBaseMiniData_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
  JreStrongAssignAndConsume(&mScripts_, new_JavaUtilArrayList_init());
  prlen = [zIn readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mScripts_)) addWithId:[zIn readUTF]];
  }
  JreStrongAssignAndConsume(&mProofs_, new_JavaUtilArrayList_init());
  prlen = [zIn readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mProofs_)) addWithId:OrgMinimaDatabaseMmrMMRProof_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
}

- (void)dealloc {
  RELEASE_(mPublicKeys_);
  RELEASE_(mSignatures_);
  RELEASE_(mProofs_);
  RELEASE_(mScripts_);
  RELEASE_(mAllScripts_);
  RELEASE_(mTokenProof_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 6, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniData;", 0x1, 9, 3, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniData;", 0x1, 10, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaUtilsJsonJSONObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 15, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, 15, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addScriptWithNSString:);
  methods[2].selector = @selector(getScriptWithInt:);
  methods[3].selector = @selector(addMMRProofWithOrgMinimaDatabaseMmrMMRProof:);
  methods[4].selector = @selector(getAllProofs);
  methods[5].selector = @selector(addSignatureWithOrgMinimaObjectsBaseMiniData:withOrgMinimaObjectsBaseMiniData:);
  methods[6].selector = @selector(getPublicKeyWithInt:);
  methods[7].selector = @selector(getSignatureWithInt:);
  methods[8].selector = @selector(getAllSignatures);
  methods[9].selector = @selector(getAllPubKeys);
  methods[10].selector = @selector(getAllPubKeysCSV);
  methods[11].selector = @selector(toJSON);
  methods[12].selector = @selector(description);
  methods[13].selector = @selector(writeDataStreamWithJavaIoDataOutputStream:);
  methods[14].selector = @selector(readDataStreamWithJavaIoDataInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mPublicKeys_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 18, -1 },
    { "mSignatures_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 18, -1 },
    { "mProofs_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 19, -1 },
    { "mScripts_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 20, -1 },
    { "mAllScripts_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 21, -1 },
    { "mTokenProof_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 21, -1 },
  };
  static const void *ptrTable[] = { "addScript", "LNSString;", "getScript", "I", "addMMRProof", "LOrgMinimaDatabaseMmrMMRProof;", "()Ljava/util/ArrayList<Lorg/minima/database/mmr/MMRProof;>;", "addSignature", "LOrgMinimaObjectsBaseMiniData;LOrgMinimaObjectsBaseMiniData;", "getPublicKey", "getSignature", "()Ljava/util/ArrayList<Lorg/minima/objects/base/MiniData;>;", "toString", "writeDataStream", "LJavaIoDataOutputStream;", "LJavaIoIOException;", "readDataStream", "LJavaIoDataInputStream;", "Ljava/util/ArrayList<Lorg/minima/objects/base/MiniData;>;", "Ljava/util/ArrayList<Lorg/minima/database/mmr/MMRProof;>;", "Ljava/util/ArrayList<Ljava/lang/String;>;", "Ljava/util/ArrayList<Lorg/minima/objects/base/MiniKeyValue;>;" };
  static const J2ObjcClassInfo _OrgMinimaObjectsWitness = { "Witness", "org.minima.objects", ptrTable, methods, fields, 7, 0x1, 15, 6, -1, -1, -1, -1, -1 };
  return &_OrgMinimaObjectsWitness;
}

@end

void OrgMinimaObjectsWitness_init(OrgMinimaObjectsWitness *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mPublicKeys_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mSignatures_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mScripts_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mProofs_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mAllScripts_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mTokenProof_, new_JavaUtilArrayList_init());
}

OrgMinimaObjectsWitness *new_OrgMinimaObjectsWitness_init() {
  J2OBJC_NEW_IMPL(OrgMinimaObjectsWitness, init)
}

OrgMinimaObjectsWitness *create_OrgMinimaObjectsWitness_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaObjectsWitness, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaObjectsWitness)
