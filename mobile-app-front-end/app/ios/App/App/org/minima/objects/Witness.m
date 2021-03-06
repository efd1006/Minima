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
#include "org/minima/objects/proofs/ScriptProof.h"
#include "org/minima/objects/proofs/SignatureProof.h"
#include "org/minima/objects/proofs/TokenProof.h"
#include "org/minima/utils/json/JSONArray.h"
#include "org/minima/utils/json/JSONObject.h"

@implementation OrgMinimaObjectsWitness

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaObjectsWitness_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addSignatureWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zPubKey
                    withOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zSignature {
  [((JavaUtilArrayList *) nil_chk(mSignatureProofs_)) addWithId:new_OrgMinimaObjectsProofsSignatureProof_initWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMiniData_(zPubKey, zSignature)];
}

- (void)addSignatureWithOrgMinimaObjectsProofsSignatureProof:(OrgMinimaObjectsProofsSignatureProof *)zSigProof {
  [((JavaUtilArrayList *) nil_chk(mSignatureProofs_)) addWithId:zSigProof];
}

- (JavaUtilArrayList *)getAllSignatures {
  return mSignatureProofs_;
}

- (void)clearSignatures {
  [((JavaUtilArrayList *) nil_chk(mSignatureProofs_)) clear];
}

- (NSString *)getAllPubKeysCSV {
  NSString *ret = @"";
  for (OrgMinimaObjectsProofsSignatureProof * __strong sig in nil_chk(mSignatureProofs_)) {
    (void) JreStrAppendStrong(&ret, "$$", [((OrgMinimaObjectsBaseMiniData *) nil_chk([((OrgMinimaObjectsProofsSignatureProof *) nil_chk(sig)) getFinalHash])) to0xString], @" # ");
  }
  return [ret java_trim];
}

- (void)addMMRProofWithOrgMinimaDatabaseMmrMMRProof:(OrgMinimaDatabaseMmrMMRProof *)zProof {
  [((JavaUtilArrayList *) nil_chk(mMMRProofs_)) addWithId:zProof];
}

- (void)clearMMRProofs {
  [((JavaUtilArrayList *) nil_chk(mMMRProofs_)) clear];
}

- (JavaUtilArrayList *)getAllMMRProofs {
  return mMMRProofs_;
}

- (JavaUtilArrayList *)getAllTokenDetails {
  return mTokenProofs_;
}

- (void)addTokenDetailsWithOrgMinimaObjectsProofsTokenProof:(OrgMinimaObjectsProofsTokenProof *)zDetails {
  if ([self getTokenDetailWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaObjectsProofsTokenProof *) nil_chk(zDetails)) getTokenID]] == nil) {
    [((JavaUtilArrayList *) nil_chk(mTokenProofs_)) addWithId:zDetails];
  }
}

- (OrgMinimaObjectsProofsTokenProof *)getTokenDetailWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zTokenID {
  for (OrgMinimaObjectsProofsTokenProof * __strong td in nil_chk(mTokenProofs_)) {
    if ([((OrgMinimaObjectsBaseMiniData *) nil_chk([((OrgMinimaObjectsProofsTokenProof *) nil_chk(td)) getTokenID])) isEqualWithOrgMinimaObjectsBaseMiniData:zTokenID]) {
      return td;
    }
  }
  return nil;
}

- (jboolean)addScriptWithNSString:(NSString *)zScript
                          withInt:(jint)zBitLength {
  return [self addScriptWithOrgMinimaObjectsProofsScriptProof:new_OrgMinimaObjectsProofsScriptProof_initWithNSString_withInt_(zScript, zBitLength)];
}

- (jboolean)addScriptWithOrgMinimaObjectsProofsScriptProof:(OrgMinimaObjectsProofsScriptProof *)zScriptProof {
  if (![self scriptExistsWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaObjectsProofsScriptProof *) nil_chk(zScriptProof)) getFinalHash]]) {
    [((JavaUtilArrayList *) nil_chk(mScriptProofs_)) addWithId:zScriptProof];
    return true;
  }
  return false;
}

- (OrgMinimaObjectsProofsScriptProof *)getScriptWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zAddress {
  jint len = [((OrgMinimaObjectsBaseMiniData *) nil_chk(zAddress)) getLength];
  for (OrgMinimaObjectsProofsScriptProof * __strong proof in nil_chk(mScriptProofs_)) {
    OrgMinimaObjectsBaseMiniData *fulladdr = [((OrgMinimaObjectsProofsScriptProof *) nil_chk(proof)) getFinalHash];
    if ([((OrgMinimaObjectsBaseMiniData *) nil_chk(fulladdr)) isEqualWithOrgMinimaObjectsBaseMiniData:zAddress]) {
      return proof;
    }
  }
  return nil;
}

- (jboolean)scriptExistsWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zHash {
  return [self getScriptWithOrgMinimaObjectsBaseMiniData:zHash] != nil;
}

- (OrgMinimaUtilsJsonJSONObject *)toJSON {
  OrgMinimaUtilsJsonJSONObject *obj = new_OrgMinimaUtilsJsonJSONObject_init();
  OrgMinimaUtilsJsonJSONArray *arr = new_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaObjectsProofsSignatureProof * __strong sg in nil_chk(mSignatureProofs_)) {
    [arr addWithId:[((OrgMinimaObjectsProofsSignatureProof *) nil_chk(sg)) toJSON]];
  }
  (void) [obj putWithId:@"signatures" withId:arr];
  arr = new_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaDatabaseMmrMMRProof * __strong proof in nil_chk(mMMRProofs_)) {
    [arr addWithId:[((OrgMinimaDatabaseMmrMMRProof *) nil_chk(proof)) toJSON]];
  }
  (void) [obj putWithId:@"mmrproofs" withId:arr];
  arr = new_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaObjectsProofsTokenProof * __strong td in nil_chk(mTokenProofs_)) {
    [arr addWithId:[((OrgMinimaObjectsProofsTokenProof *) nil_chk(td)) toJSON]];
  }
  (void) [obj putWithId:@"tokens" withId:arr];
  arr = new_OrgMinimaUtilsJsonJSONArray_init();
  for (OrgMinimaObjectsProofsScriptProof * __strong sp in nil_chk(mScriptProofs_)) {
    [arr addWithId:[((OrgMinimaObjectsProofsScriptProof *) nil_chk(sp)) toJSON]];
  }
  (void) [obj putWithId:@"scripts" withId:arr];
  return obj;
}

- (NSString *)description {
  return [((OrgMinimaUtilsJsonJSONObject *) nil_chk([self toJSON])) description];
}

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut {
  jint pklen = [((JavaUtilArrayList *) nil_chk(mSignatureProofs_)) size];
  [((JavaIoDataOutputStream *) nil_chk(zOut)) writeIntWithInt:pklen];
  for (OrgMinimaObjectsProofsSignatureProof * __strong sp in nil_chk(mSignatureProofs_)) {
    [((OrgMinimaObjectsProofsSignatureProof *) nil_chk(sp)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  jint mmrlen = [((JavaUtilArrayList *) nil_chk(mMMRProofs_)) size];
  [zOut writeIntWithInt:mmrlen];
  for (OrgMinimaDatabaseMmrMMRProof * __strong proof in nil_chk(mMMRProofs_)) {
    [((OrgMinimaDatabaseMmrMMRProof *) nil_chk(proof)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  jint toklen = [((JavaUtilArrayList *) nil_chk(mTokenProofs_)) size];
  [zOut writeIntWithInt:toklen];
  for (OrgMinimaObjectsProofsTokenProof * __strong td in nil_chk(mTokenProofs_)) {
    [((OrgMinimaObjectsProofsTokenProof *) nil_chk(td)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
  jint scriptlen = [((JavaUtilArrayList *) nil_chk(mScriptProofs_)) size];
  [zOut writeIntWithInt:scriptlen];
  for (OrgMinimaObjectsProofsScriptProof * __strong sp in nil_chk(mScriptProofs_)) {
    [((OrgMinimaObjectsProofsScriptProof *) nil_chk(sp)) writeDataStreamWithJavaIoDataOutputStream:zOut];
  }
}

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn {
  mSignatureProofs_ = new_JavaUtilArrayList_init();
  jint prlen = [((JavaIoDataInputStream *) nil_chk(zIn)) readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mSignatureProofs_)) addWithId:OrgMinimaObjectsProofsSignatureProof_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
  mMMRProofs_ = new_JavaUtilArrayList_init();
  prlen = [zIn readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mMMRProofs_)) addWithId:OrgMinimaDatabaseMmrMMRProof_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
  mTokenProofs_ = new_JavaUtilArrayList_init();
  prlen = [zIn readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mTokenProofs_)) addWithId:OrgMinimaObjectsProofsTokenProof_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
  mScriptProofs_ = new_JavaUtilArrayList_init();
  prlen = [zIn readInt];
  for (jint i = 0; i < prlen; i++) {
    [((JavaUtilArrayList *) nil_chk(mScriptProofs_)) addWithId:OrgMinimaObjectsProofsScriptProof_ReadFromStreamWithJavaIoDataInputStream_(zIn)];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 6, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsProofsTokenProof;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, 14, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 15, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsProofsScriptProof;", 0x1, 16, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 11, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaUtilsJsonJSONObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, 21, -1, -1, -1 },
    { NULL, "V", 0x1, 22, 23, 21, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addSignatureWithOrgMinimaObjectsBaseMiniData:withOrgMinimaObjectsBaseMiniData:);
  methods[2].selector = @selector(addSignatureWithOrgMinimaObjectsProofsSignatureProof:);
  methods[3].selector = @selector(getAllSignatures);
  methods[4].selector = @selector(clearSignatures);
  methods[5].selector = @selector(getAllPubKeysCSV);
  methods[6].selector = @selector(addMMRProofWithOrgMinimaDatabaseMmrMMRProof:);
  methods[7].selector = @selector(clearMMRProofs);
  methods[8].selector = @selector(getAllMMRProofs);
  methods[9].selector = @selector(getAllTokenDetails);
  methods[10].selector = @selector(addTokenDetailsWithOrgMinimaObjectsProofsTokenProof:);
  methods[11].selector = @selector(getTokenDetailWithOrgMinimaObjectsBaseMiniData:);
  methods[12].selector = @selector(addScriptWithNSString:withInt:);
  methods[13].selector = @selector(addScriptWithOrgMinimaObjectsProofsScriptProof:);
  methods[14].selector = @selector(getScriptWithOrgMinimaObjectsBaseMiniData:);
  methods[15].selector = @selector(scriptExistsWithOrgMinimaObjectsBaseMiniData:);
  methods[16].selector = @selector(toJSON);
  methods[17].selector = @selector(description);
  methods[18].selector = @selector(writeDataStreamWithJavaIoDataOutputStream:);
  methods[19].selector = @selector(readDataStreamWithJavaIoDataInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mMMRProofs_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 24, -1 },
    { "mSignatureProofs_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 25, -1 },
    { "mTokenProofs_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 26, -1 },
    { "mScriptProofs_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x4, -1, -1, 27, -1 },
  };
  static const void *ptrTable[] = { "addSignature", "LOrgMinimaObjectsBaseMiniData;LOrgMinimaObjectsBaseMiniData;", "LOrgMinimaObjectsProofsSignatureProof;", "()Ljava/util/ArrayList<Lorg/minima/objects/proofs/SignatureProof;>;", "addMMRProof", "LOrgMinimaDatabaseMmrMMRProof;", "()Ljava/util/ArrayList<Lorg/minima/database/mmr/MMRProof;>;", "()Ljava/util/ArrayList<Lorg/minima/objects/proofs/TokenProof;>;", "addTokenDetails", "LOrgMinimaObjectsProofsTokenProof;", "getTokenDetail", "LOrgMinimaObjectsBaseMiniData;", "addScript", "LNSString;I", "LJavaLangException;", "LOrgMinimaObjectsProofsScriptProof;", "getScript", "scriptExists", "toString", "writeDataStream", "LJavaIoDataOutputStream;", "LJavaIoIOException;", "readDataStream", "LJavaIoDataInputStream;", "Ljava/util/ArrayList<Lorg/minima/database/mmr/MMRProof;>;", "Ljava/util/ArrayList<Lorg/minima/objects/proofs/SignatureProof;>;", "Ljava/util/ArrayList<Lorg/minima/objects/proofs/TokenProof;>;", "Ljava/util/ArrayList<Lorg/minima/objects/proofs/ScriptProof;>;" };
  static const J2ObjcClassInfo _OrgMinimaObjectsWitness = { "Witness", "org.minima.objects", ptrTable, methods, fields, 7, 0x1, 20, 4, -1, -1, -1, -1, -1 };
  return &_OrgMinimaObjectsWitness;
}

@end

void OrgMinimaObjectsWitness_init(OrgMinimaObjectsWitness *self) {
  NSObject_init(self);
  self->mMMRProofs_ = new_JavaUtilArrayList_init();
  self->mSignatureProofs_ = new_JavaUtilArrayList_init();
  self->mTokenProofs_ = new_JavaUtilArrayList_init();
  self->mScriptProofs_ = new_JavaUtilArrayList_init();
}

OrgMinimaObjectsWitness *new_OrgMinimaObjectsWitness_init() {
  J2OBJC_NEW_IMPL(OrgMinimaObjectsWitness, init)
}

OrgMinimaObjectsWitness *create_OrgMinimaObjectsWitness_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaObjectsWitness, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaObjectsWitness)
