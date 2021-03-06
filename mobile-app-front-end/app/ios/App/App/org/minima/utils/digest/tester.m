//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/digest/tester.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "java/util/Random.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/utils/digest/Arrays.h"
#include "org/minima/utils/digest/Digest.h"
#include "org/minima/utils/digest/KeccakDigest.h"
#include "org/minima/utils/digest/WinternitzOTSVerify.h"
#include "org/minima/utils/digest/WinternitzOTSignature.h"
#include "org/minima/utils/digest/tester.h"

@implementation OrgMinimaUtilsDigesttester

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaUtilsDigesttester_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs {
  OrgMinimaUtilsDigesttester_mainWithNSStringArray_(zArgs);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "main", "[LNSString;" };
  static const J2ObjcClassInfo _OrgMinimaUtilsDigesttester = { "tester", "org.minima.utils.digest", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsDigesttester;
}

@end

void OrgMinimaUtilsDigesttester_init(OrgMinimaUtilsDigesttester *self) {
  NSObject_init(self);
}

OrgMinimaUtilsDigesttester *new_OrgMinimaUtilsDigesttester_init() {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsDigesttester, init)
}

OrgMinimaUtilsDigesttester *create_OrgMinimaUtilsDigesttester_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsDigesttester, init)
}

void OrgMinimaUtilsDigesttester_mainWithNSStringArray_(IOSObjectArray *zArgs) {
  OrgMinimaUtilsDigesttester_initialize();
  NSString *sdata = @"Hello from Minima!!";
  IOSByteArray *data = [sdata java_getBytes];
  IOSByteArray *seed = [IOSByteArray newArrayWithLength:64];
  JavaUtilRandom *rand = new_JavaUtilRandom_init();
  [rand nextBytesWithByteArray:seed];
  id<OrgMinimaUtilsDigestDigest> digest = new_OrgMinimaUtilsDigestKeccakDigest_initWithInt_(160);
  OrgMinimaUtilsDigestWinternitzOTSignature *wots = new_OrgMinimaUtilsDigestWinternitzOTSignature_initWithByteArray_withOrgMinimaUtilsDigestDigest_withInt_(seed, digest, 12);
  IOSByteArray *pubk = [wots getPublicKey];
  OrgMinimaObjectsBaseMiniData *pubkey = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_(pubk);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Public Key : ", [pubkey to0xString])];
  IOSByteArray *signature = [wots getSignatureWithByteArray:data];
  OrgMinimaObjectsBaseMiniData *sig = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_(signature);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Signature : ", [sig to0xString])];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"Signature Length : ", [sig getLength])];
  OrgMinimaUtilsDigestWinternitzOTSVerify *wver = new_OrgMinimaUtilsDigestWinternitzOTSVerify_initWithOrgMinimaUtilsDigestDigest_withInt_(digest, 12);
  IOSByteArray *key = [wver VerifyWithByteArray:data withByteArray:signature];
  OrgMinimaObjectsBaseMiniData *pub = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_(key);
  if (OrgMinimaUtilsDigestArrays_areEqualWithByteArray_withByteArray_(pubk, key)) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"Signature OK! ", [pub getLength])];
  }
  else {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"Signature WRONG! ", [pub getLength])];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsDigesttester)

J2OBJC_NAME_MAPPING(OrgMinimaUtilsDigesttester, "org.minima.utils.digest", "OrgMinimaUtilsDigest")
