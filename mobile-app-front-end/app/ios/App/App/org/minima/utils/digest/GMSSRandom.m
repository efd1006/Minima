//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/digest/GMSSRandom.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/minima/utils/digest/Digest.h"
#include "org/minima/utils/digest/GMSSRandom.h"

@interface OrgMinimaUtilsDigestGMSSRandom () {
 @public
  id<OrgMinimaUtilsDigestDigest> messDigestTree_;
}

- (void)addByteArraysWithByteArray:(IOSByteArray *)a
                     withByteArray:(IOSByteArray *)b;

- (void)addOneWithByteArray:(IOSByteArray *)a;

@end

J2OBJC_FIELD_SETTER(OrgMinimaUtilsDigestGMSSRandom, messDigestTree_, id<OrgMinimaUtilsDigestDigest>)

__attribute__((unused)) static void OrgMinimaUtilsDigestGMSSRandom_addByteArraysWithByteArray_withByteArray_(OrgMinimaUtilsDigestGMSSRandom *self, IOSByteArray *a, IOSByteArray *b);

__attribute__((unused)) static void OrgMinimaUtilsDigestGMSSRandom_addOneWithByteArray_(OrgMinimaUtilsDigestGMSSRandom *self, IOSByteArray *a);

@implementation OrgMinimaUtilsDigestGMSSRandom

- (instancetype)initWithOrgMinimaUtilsDigestDigest:(id<OrgMinimaUtilsDigestDigest>)messDigestTree2 {
  OrgMinimaUtilsDigestGMSSRandom_initWithOrgMinimaUtilsDigestDigest_(self, messDigestTree2);
  return self;
}

- (IOSByteArray *)nextSeedWithByteArray:(IOSByteArray *)outseed {
  IOSByteArray *rand = [IOSByteArray newArrayWithLength:((IOSByteArray *) nil_chk(outseed))->size_];
  [((id<OrgMinimaUtilsDigestDigest>) nil_chk(messDigestTree_)) updateWithByteArray:outseed withInt:0 withInt:outseed->size_];
  rand = [IOSByteArray newArrayWithLength:[((id<OrgMinimaUtilsDigestDigest>) nil_chk(messDigestTree_)) getDigestSize]];
  [((id<OrgMinimaUtilsDigestDigest>) nil_chk(messDigestTree_)) doFinalWithByteArray:rand withInt:0];
  OrgMinimaUtilsDigestGMSSRandom_addByteArraysWithByteArray_withByteArray_(self, outseed, rand);
  OrgMinimaUtilsDigestGMSSRandom_addOneWithByteArray_(self, outseed);
  return rand;
}

- (void)addByteArraysWithByteArray:(IOSByteArray *)a
                     withByteArray:(IOSByteArray *)b {
  OrgMinimaUtilsDigestGMSSRandom_addByteArraysWithByteArray_withByteArray_(self, a, b);
}

- (void)addOneWithByteArray:(IOSByteArray *)a {
  OrgMinimaUtilsDigestGMSSRandom_addOneWithByteArray_(self, a);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaUtilsDigestDigest:);
  methods[1].selector = @selector(nextSeedWithByteArray:);
  methods[2].selector = @selector(addByteArraysWithByteArray:withByteArray:);
  methods[3].selector = @selector(addOneWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "messDigestTree_", "LOrgMinimaUtilsDigestDigest;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaUtilsDigestDigest;", "nextSeed", "[B", "addByteArrays", "[B[B", "addOne" };
  static const J2ObjcClassInfo _OrgMinimaUtilsDigestGMSSRandom = { "GMSSRandom", "org.minima.utils.digest", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsDigestGMSSRandom;
}

@end

void OrgMinimaUtilsDigestGMSSRandom_initWithOrgMinimaUtilsDigestDigest_(OrgMinimaUtilsDigestGMSSRandom *self, id<OrgMinimaUtilsDigestDigest> messDigestTree2) {
  NSObject_init(self);
  self->messDigestTree_ = messDigestTree2;
}

OrgMinimaUtilsDigestGMSSRandom *new_OrgMinimaUtilsDigestGMSSRandom_initWithOrgMinimaUtilsDigestDigest_(id<OrgMinimaUtilsDigestDigest> messDigestTree2) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsDigestGMSSRandom, initWithOrgMinimaUtilsDigestDigest_, messDigestTree2)
}

OrgMinimaUtilsDigestGMSSRandom *create_OrgMinimaUtilsDigestGMSSRandom_initWithOrgMinimaUtilsDigestDigest_(id<OrgMinimaUtilsDigestDigest> messDigestTree2) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsDigestGMSSRandom, initWithOrgMinimaUtilsDigestDigest_, messDigestTree2)
}

void OrgMinimaUtilsDigestGMSSRandom_addByteArraysWithByteArray_withByteArray_(OrgMinimaUtilsDigestGMSSRandom *self, IOSByteArray *a, IOSByteArray *b) {
  jbyte overflow = 0;
  jint temp;
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(a))->size_; i++) {
    temp = ((jint) 0xFF & IOSByteArray_Get(a, i)) + ((jint) 0xFF & IOSByteArray_Get(nil_chk(b), i)) + overflow;
    *IOSByteArray_GetRef(a, i) = (jbyte) temp;
    overflow = (jbyte) (JreRShift32(temp, 8));
  }
}

void OrgMinimaUtilsDigestGMSSRandom_addOneWithByteArray_(OrgMinimaUtilsDigestGMSSRandom *self, IOSByteArray *a) {
  jbyte overflow = 1;
  jint temp;
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(a))->size_; i++) {
    temp = ((jint) 0xFF & IOSByteArray_Get(a, i)) + overflow;
    *IOSByteArray_GetRef(a, i) = (jbyte) temp;
    overflow = (jbyte) (JreRShift32(temp, 8));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsDigestGMSSRandom)
