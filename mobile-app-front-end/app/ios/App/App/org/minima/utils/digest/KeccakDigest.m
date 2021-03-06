//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/digest/KeccakDigest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/minima/utils/digest/Arrays.h"
#include "org/minima/utils/digest/KeccakDigest.h"
#include "org/minima/utils/digest/Pack.h"

@interface OrgMinimaUtilsDigestKeccakDigest ()

- (void)init__WithInt:(jint)bitLength OBJC_METHOD_FAMILY_NONE;

- (void)initSpongeWithInt:(jint)rate OBJC_METHOD_FAMILY_NONE;

- (void)padAndSwitchToSqueezingPhase;

- (void)KeccakAbsorbWithByteArray:(IOSByteArray *)data
                          withInt:(jint)off;

- (void)KeccakExtract;

- (void)KeccakPermutation;

@end

inline IOSLongArray *OrgMinimaUtilsDigestKeccakDigest_get_KeccakRoundConstants(void);
inline IOSLongArray *OrgMinimaUtilsDigestKeccakDigest_set_KeccakRoundConstants(IOSLongArray *value);
static IOSLongArray *OrgMinimaUtilsDigestKeccakDigest_KeccakRoundConstants;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsDigestKeccakDigest, KeccakRoundConstants, IOSLongArray *)

__attribute__((unused)) static void OrgMinimaUtilsDigestKeccakDigest_init__WithInt_(OrgMinimaUtilsDigestKeccakDigest *self, jint bitLength);

__attribute__((unused)) static void OrgMinimaUtilsDigestKeccakDigest_initSpongeWithInt_(OrgMinimaUtilsDigestKeccakDigest *self, jint rate);

__attribute__((unused)) static void OrgMinimaUtilsDigestKeccakDigest_padAndSwitchToSqueezingPhase(OrgMinimaUtilsDigestKeccakDigest *self);

__attribute__((unused)) static void OrgMinimaUtilsDigestKeccakDigest_KeccakAbsorbWithByteArray_withInt_(OrgMinimaUtilsDigestKeccakDigest *self, IOSByteArray *data, jint off);

__attribute__((unused)) static void OrgMinimaUtilsDigestKeccakDigest_KeccakExtract(OrgMinimaUtilsDigestKeccakDigest *self);

__attribute__((unused)) static void OrgMinimaUtilsDigestKeccakDigest_KeccakPermutation(OrgMinimaUtilsDigestKeccakDigest *self);

J2OBJC_INITIALIZED_DEFN(OrgMinimaUtilsDigestKeccakDigest)

@implementation OrgMinimaUtilsDigestKeccakDigest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaUtilsDigestKeccakDigest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)bitLength {
  OrgMinimaUtilsDigestKeccakDigest_initWithInt_(self, bitLength);
  return self;
}

- (instancetype)initWithOrgMinimaUtilsDigestKeccakDigest:(OrgMinimaUtilsDigestKeccakDigest *)source {
  OrgMinimaUtilsDigestKeccakDigest_initWithOrgMinimaUtilsDigestKeccakDigest_(self, source);
  return self;
}

- (NSString *)getAlgorithmName {
  return JreStrcat("$I", @"Keccak-", fixedOutputLength_);
}

- (jint)getDigestSize {
  return fixedOutputLength_ / 8;
}

- (void)updateWithByte:(jbyte)inArg {
  [self absorbWithByteArray:[IOSByteArray newArrayWithBytes:(jbyte[]){ inArg } count:1] withInt:0 withInt:1];
}

- (void)updateWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)len {
  [self absorbWithByteArray:inArg withInt:inOff withInt:len];
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  [self squeezeWithByteArray:outArg withInt:outOff withLong:fixedOutputLength_];
  [self reset];
  return [self getDigestSize];
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff
                    withByte:(jbyte)partialByte
                     withInt:(jint)partialBits {
  if (partialBits > 0) {
    [self absorbBitsWithInt:partialByte withInt:partialBits];
  }
  [self squeezeWithByteArray:outArg withInt:outOff withLong:fixedOutputLength_];
  [self reset];
  return [self getDigestSize];
}

- (void)reset {
  OrgMinimaUtilsDigestKeccakDigest_init__WithInt_(self, fixedOutputLength_);
}

- (jint)getByteLength {
  return rate_ / 8;
}

- (void)init__WithInt:(jint)bitLength {
  OrgMinimaUtilsDigestKeccakDigest_init__WithInt_(self, bitLength);
}

- (void)initSpongeWithInt:(jint)rate {
  OrgMinimaUtilsDigestKeccakDigest_initSpongeWithInt_(self, rate);
}

- (void)absorbWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)len {
  if ((bitsInQueue_ % 8) != 0) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb with odd length queue");
  }
  if (squeezing_) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb while squeezing");
  }
  jint bytesInQueue = JreRShift32(bitsInQueue_, 3);
  jint rateBytes = JreRShift32(rate_, 3);
  jint count = 0;
  while (count < len) {
    if (bytesInQueue == 0 && count <= (len - rateBytes)) {
      do {
        OrgMinimaUtilsDigestKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, data, off + count);
        count += rateBytes;
      }
      while (count <= (len - rateBytes));
    }
    else {
      jint partialBlock = JavaLangMath_minWithInt_withInt_(rateBytes - bytesInQueue, len - count);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, off + count, dataQueue_, bytesInQueue, partialBlock);
      bytesInQueue += partialBlock;
      count += partialBlock;
      if (bytesInQueue == rateBytes) {
        OrgMinimaUtilsDigestKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, dataQueue_, 0);
        bytesInQueue = 0;
      }
    }
  }
  bitsInQueue_ = JreLShift32(bytesInQueue, 3);
}

- (void)absorbBitsWithInt:(jint)data
                  withInt:(jint)bits {
  if (bits < 1 || bits > 7) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'bits' must be in the range 1 to 7");
  }
  if ((bitsInQueue_ % 8) != 0) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb with odd length queue");
  }
  if (squeezing_) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb while squeezing");
  }
  jint mask = (JreLShift32(1, bits)) - 1;
  *IOSByteArray_GetRef(nil_chk(dataQueue_), JreRShift32(bitsInQueue_, 3)) = (jbyte) (data & mask);
  bitsInQueue_ += bits;
}

- (void)padAndSwitchToSqueezingPhase {
  OrgMinimaUtilsDigestKeccakDigest_padAndSwitchToSqueezingPhase(self);
}

- (void)squeezeWithByteArray:(IOSByteArray *)output
                     withInt:(jint)offset
                    withLong:(jlong)outputLength {
  if (!squeezing_) {
    OrgMinimaUtilsDigestKeccakDigest_padAndSwitchToSqueezingPhase(self);
  }
  if ((outputLength % 8) != 0) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"outputLength not a multiple of 8");
  }
  jlong i = 0;
  while (i < outputLength) {
    if (bitsInQueue_ == 0) {
      OrgMinimaUtilsDigestKeccakDigest_KeccakPermutation(self);
      OrgMinimaUtilsDigestKeccakDigest_KeccakExtract(self);
      bitsInQueue_ = rate_;
    }
    jint partialBlock = (jint) JavaLangMath_minWithLong_withLong_((jlong) bitsInQueue_, outputLength - i);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(dataQueue_, (rate_ - bitsInQueue_) / 8, output, offset + (jint) (i / 8), partialBlock / 8);
    bitsInQueue_ -= partialBlock;
    i += partialBlock;
  }
}

- (void)KeccakAbsorbWithByteArray:(IOSByteArray *)data
                          withInt:(jint)off {
  OrgMinimaUtilsDigestKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, data, off);
}

- (void)KeccakExtract {
  OrgMinimaUtilsDigestKeccakDigest_KeccakExtract(self);
}

- (void)KeccakPermutation {
  OrgMinimaUtilsDigestKeccakDigest_KeccakPermutation(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 5, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 10, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 15, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithOrgMinimaUtilsDigestKeccakDigest:);
  methods[3].selector = @selector(getAlgorithmName);
  methods[4].selector = @selector(getDigestSize);
  methods[5].selector = @selector(updateWithByte:);
  methods[6].selector = @selector(updateWithByteArray:withInt:withInt:);
  methods[7].selector = @selector(doFinalWithByteArray:withInt:);
  methods[8].selector = @selector(doFinalWithByteArray:withInt:withByte:withInt:);
  methods[9].selector = @selector(reset);
  methods[10].selector = @selector(getByteLength);
  methods[11].selector = @selector(init__WithInt:);
  methods[12].selector = @selector(initSpongeWithInt:);
  methods[13].selector = @selector(absorbWithByteArray:withInt:withInt:);
  methods[14].selector = @selector(absorbBitsWithInt:withInt:);
  methods[15].selector = @selector(padAndSwitchToSqueezingPhase);
  methods[16].selector = @selector(squeezeWithByteArray:withInt:withLong:);
  methods[17].selector = @selector(KeccakAbsorbWithByteArray:withInt:);
  methods[18].selector = @selector(KeccakExtract);
  methods[19].selector = @selector(KeccakPermutation);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "KeccakRoundConstants", "[J", .constantValue.asLong = 0, 0xa, -1, 16, -1, -1 },
    { "state_", "[J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "dataQueue_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "rate_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "bitsInQueue_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "fixedOutputLength_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "squeezing_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LOrgMinimaUtilsDigestKeccakDigest;", "update", "B", "[BII", "doFinal", "[BI", "[BIBI", "init", "initSponge", "absorb", "absorbBits", "II", "squeeze", "[BIJ", "KeccakAbsorb", &OrgMinimaUtilsDigestKeccakDigest_KeccakRoundConstants };
  static const J2ObjcClassInfo _OrgMinimaUtilsDigestKeccakDigest = { "KeccakDigest", "org.minima.utils.digest", ptrTable, methods, fields, 7, 0x1, 20, 7, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsDigestKeccakDigest;
}

+ (void)initialize {
  if (self == [OrgMinimaUtilsDigestKeccakDigest class]) {
    OrgMinimaUtilsDigestKeccakDigest_KeccakRoundConstants = [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x0000000000000001LL, (jlong) 0x0000000000008082LL, (jlong) 0x800000000000808aLL, (jlong) 0x8000000080008000LL, (jlong) 0x000000000000808bLL, (jlong) 0x0000000080000001LL, (jlong) 0x8000000080008081LL, (jlong) 0x8000000000008009LL, (jlong) 0x000000000000008aLL, (jlong) 0x0000000000000088LL, (jlong) 0x0000000080008009LL, (jlong) 0x000000008000000aLL, (jlong) 0x000000008000808bLL, (jlong) 0x800000000000008bLL, (jlong) 0x8000000000008089LL, (jlong) 0x8000000000008003LL, (jlong) 0x8000000000008002LL, (jlong) 0x8000000000000080LL, (jlong) 0x000000000000800aLL, (jlong) 0x800000008000000aLL, (jlong) 0x8000000080008081LL, (jlong) 0x8000000000008080LL, (jlong) 0x0000000080000001LL, (jlong) 0x8000000080008008LL } count:24];
    J2OBJC_SET_INITIALIZED(OrgMinimaUtilsDigestKeccakDigest)
  }
}

@end

void OrgMinimaUtilsDigestKeccakDigest_init(OrgMinimaUtilsDigestKeccakDigest *self) {
  OrgMinimaUtilsDigestKeccakDigest_initWithInt_(self, 288);
}

OrgMinimaUtilsDigestKeccakDigest *new_OrgMinimaUtilsDigestKeccakDigest_init() {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsDigestKeccakDigest, init)
}

OrgMinimaUtilsDigestKeccakDigest *create_OrgMinimaUtilsDigestKeccakDigest_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsDigestKeccakDigest, init)
}

void OrgMinimaUtilsDigestKeccakDigest_initWithInt_(OrgMinimaUtilsDigestKeccakDigest *self, jint bitLength) {
  NSObject_init(self);
  self->state_ = [IOSLongArray newArrayWithLength:25];
  self->dataQueue_ = [IOSByteArray newArrayWithLength:192];
  OrgMinimaUtilsDigestKeccakDigest_init__WithInt_(self, bitLength);
}

OrgMinimaUtilsDigestKeccakDigest *new_OrgMinimaUtilsDigestKeccakDigest_initWithInt_(jint bitLength) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsDigestKeccakDigest, initWithInt_, bitLength)
}

OrgMinimaUtilsDigestKeccakDigest *create_OrgMinimaUtilsDigestKeccakDigest_initWithInt_(jint bitLength) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsDigestKeccakDigest, initWithInt_, bitLength)
}

void OrgMinimaUtilsDigestKeccakDigest_initWithOrgMinimaUtilsDigestKeccakDigest_(OrgMinimaUtilsDigestKeccakDigest *self, OrgMinimaUtilsDigestKeccakDigest *source) {
  NSObject_init(self);
  self->state_ = [IOSLongArray newArrayWithLength:25];
  self->dataQueue_ = [IOSByteArray newArrayWithLength:192];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(((OrgMinimaUtilsDigestKeccakDigest *) nil_chk(source))->state_, 0, self->state_, 0, source->state_->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(source->dataQueue_, 0, self->dataQueue_, 0, ((IOSByteArray *) nil_chk(source->dataQueue_))->size_);
  self->rate_ = source->rate_;
  self->bitsInQueue_ = source->bitsInQueue_;
  self->fixedOutputLength_ = source->fixedOutputLength_;
  self->squeezing_ = source->squeezing_;
}

OrgMinimaUtilsDigestKeccakDigest *new_OrgMinimaUtilsDigestKeccakDigest_initWithOrgMinimaUtilsDigestKeccakDigest_(OrgMinimaUtilsDigestKeccakDigest *source) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsDigestKeccakDigest, initWithOrgMinimaUtilsDigestKeccakDigest_, source)
}

OrgMinimaUtilsDigestKeccakDigest *create_OrgMinimaUtilsDigestKeccakDigest_initWithOrgMinimaUtilsDigestKeccakDigest_(OrgMinimaUtilsDigestKeccakDigest *source) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsDigestKeccakDigest, initWithOrgMinimaUtilsDigestKeccakDigest_, source)
}

void OrgMinimaUtilsDigestKeccakDigest_init__WithInt_(OrgMinimaUtilsDigestKeccakDigest *self, jint bitLength) {
  switch (bitLength) {
    case 160:
    case 256:
    case 512:
    OrgMinimaUtilsDigestKeccakDigest_initSpongeWithInt_(self, 1600 - (JreLShift32(bitLength, 1)));
    break;
    default:
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"bitLength must be one of 160, 256, or 512.");
  }
}

void OrgMinimaUtilsDigestKeccakDigest_initSpongeWithInt_(OrgMinimaUtilsDigestKeccakDigest *self, jint rate) {
  if ((rate <= 0) || (rate >= 1600) || ((rate % 64) != 0)) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"invalid rate value");
  }
  self->rate_ = rate;
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(self->state_))->size_; ++i) {
    *IOSLongArray_GetRef(self->state_, i) = 0LL;
  }
  OrgMinimaUtilsDigestArrays_fillWithByteArray_withByte_(self->dataQueue_, (jbyte) 0);
  self->bitsInQueue_ = 0;
  self->squeezing_ = false;
  self->fixedOutputLength_ = (1600 - rate) / 2;
}

void OrgMinimaUtilsDigestKeccakDigest_padAndSwitchToSqueezingPhase(OrgMinimaUtilsDigestKeccakDigest *self) {
  *IOSByteArray_GetRef(nil_chk(self->dataQueue_), JreRShift32(self->bitsInQueue_, 3)) |= (jbyte) (JreLShift64(1LL, (self->bitsInQueue_ & 7)));
  if (++self->bitsInQueue_ == self->rate_) {
    OrgMinimaUtilsDigestKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, self->dataQueue_, 0);
    self->bitsInQueue_ = 0;
  }
  {
    jint full = JreRShift32(self->bitsInQueue_, 6);
    jint partial = self->bitsInQueue_ & 63;
    jint off = 0;
    for (jint i = 0; i < full; ++i) {
      *IOSLongArray_GetRef(nil_chk(self->state_), i) ^= OrgMinimaUtilsDigestPack_littleEndianToLongWithByteArray_withInt_(self->dataQueue_, off);
      off += 8;
    }
    if (partial > 0) {
      jlong mask = (JreLShift64(1LL, partial)) - 1LL;
      *IOSLongArray_GetRef(nil_chk(self->state_), full) ^= OrgMinimaUtilsDigestPack_littleEndianToLongWithByteArray_withInt_(self->dataQueue_, off) & mask;
    }
    *IOSLongArray_GetRef(nil_chk(self->state_), JreRShift32((self->rate_ - 1), 6)) ^= (JreLShift64(1LL, 63));
  }
  OrgMinimaUtilsDigestKeccakDigest_KeccakPermutation(self);
  OrgMinimaUtilsDigestKeccakDigest_KeccakExtract(self);
  self->bitsInQueue_ = self->rate_;
  self->squeezing_ = true;
}

void OrgMinimaUtilsDigestKeccakDigest_KeccakAbsorbWithByteArray_withInt_(OrgMinimaUtilsDigestKeccakDigest *self, IOSByteArray *data, jint off) {
  jint count = JreRShift32(self->rate_, 6);
  for (jint i = 0; i < count; ++i) {
    *IOSLongArray_GetRef(nil_chk(self->state_), i) ^= OrgMinimaUtilsDigestPack_littleEndianToLongWithByteArray_withInt_(data, off);
    off += 8;
  }
  OrgMinimaUtilsDigestKeccakDigest_KeccakPermutation(self);
}

void OrgMinimaUtilsDigestKeccakDigest_KeccakExtract(OrgMinimaUtilsDigestKeccakDigest *self) {
  OrgMinimaUtilsDigestPack_longToLittleEndianWithLongArray_withInt_withInt_withByteArray_withInt_(self->state_, 0, JreRShift32(self->rate_, 6), self->dataQueue_, 0);
}

void OrgMinimaUtilsDigestKeccakDigest_KeccakPermutation(OrgMinimaUtilsDigestKeccakDigest *self) {
  IOSLongArray *A = self->state_;
  jlong a00 = IOSLongArray_Get(nil_chk(A), 0);
  jlong a01 = IOSLongArray_Get(A, 1);
  jlong a02 = IOSLongArray_Get(A, 2);
  jlong a03 = IOSLongArray_Get(A, 3);
  jlong a04 = IOSLongArray_Get(A, 4);
  jlong a05 = IOSLongArray_Get(A, 5);
  jlong a06 = IOSLongArray_Get(A, 6);
  jlong a07 = IOSLongArray_Get(A, 7);
  jlong a08 = IOSLongArray_Get(A, 8);
  jlong a09 = IOSLongArray_Get(A, 9);
  jlong a10 = IOSLongArray_Get(A, 10);
  jlong a11 = IOSLongArray_Get(A, 11);
  jlong a12 = IOSLongArray_Get(A, 12);
  jlong a13 = IOSLongArray_Get(A, 13);
  jlong a14 = IOSLongArray_Get(A, 14);
  jlong a15 = IOSLongArray_Get(A, 15);
  jlong a16 = IOSLongArray_Get(A, 16);
  jlong a17 = IOSLongArray_Get(A, 17);
  jlong a18 = IOSLongArray_Get(A, 18);
  jlong a19 = IOSLongArray_Get(A, 19);
  jlong a20 = IOSLongArray_Get(A, 20);
  jlong a21 = IOSLongArray_Get(A, 21);
  jlong a22 = IOSLongArray_Get(A, 22);
  jlong a23 = IOSLongArray_Get(A, 23);
  jlong a24 = IOSLongArray_Get(A, 24);
  for (jint i = 0; i < 24; i++) {
    jlong c0 = a00 ^ a05 ^ a10 ^ a15 ^ a20;
    jlong c1 = a01 ^ a06 ^ a11 ^ a16 ^ a21;
    jlong c2 = a02 ^ a07 ^ a12 ^ a17 ^ a22;
    jlong c3 = a03 ^ a08 ^ a13 ^ a18 ^ a23;
    jlong c4 = a04 ^ a09 ^ a14 ^ a19 ^ a24;
    jlong d1 = ((JreLShift64(c1, 1)) | (JreURShift64(c1, -1))) ^ c4;
    jlong d2 = ((JreLShift64(c2, 1)) | (JreURShift64(c2, -1))) ^ c0;
    jlong d3 = ((JreLShift64(c3, 1)) | (JreURShift64(c3, -1))) ^ c1;
    jlong d4 = ((JreLShift64(c4, 1)) | (JreURShift64(c4, -1))) ^ c2;
    jlong d0 = ((JreLShift64(c0, 1)) | (JreURShift64(c0, -1))) ^ c3;
    a00 ^= d1;
    a05 ^= d1;
    a10 ^= d1;
    a15 ^= d1;
    a20 ^= d1;
    a01 ^= d2;
    a06 ^= d2;
    a11 ^= d2;
    a16 ^= d2;
    a21 ^= d2;
    a02 ^= d3;
    a07 ^= d3;
    a12 ^= d3;
    a17 ^= d3;
    a22 ^= d3;
    a03 ^= d4;
    a08 ^= d4;
    a13 ^= d4;
    a18 ^= d4;
    a23 ^= d4;
    a04 ^= d0;
    a09 ^= d0;
    a14 ^= d0;
    a19 ^= d0;
    a24 ^= d0;
    c1 = (JreLShift64(a01, 1)) | (JreURShift64(a01, 63));
    a01 = (JreLShift64(a06, 44)) | (JreURShift64(a06, 20));
    a06 = (JreLShift64(a09, 20)) | (JreURShift64(a09, 44));
    a09 = (JreLShift64(a22, 61)) | (JreURShift64(a22, 3));
    a22 = (JreLShift64(a14, 39)) | (JreURShift64(a14, 25));
    a14 = (JreLShift64(a20, 18)) | (JreURShift64(a20, 46));
    a20 = (JreLShift64(a02, 62)) | (JreURShift64(a02, 2));
    a02 = (JreLShift64(a12, 43)) | (JreURShift64(a12, 21));
    a12 = (JreLShift64(a13, 25)) | (JreURShift64(a13, 39));
    a13 = (JreLShift64(a19, 8)) | (JreURShift64(a19, 56));
    a19 = (JreLShift64(a23, 56)) | (JreURShift64(a23, 8));
    a23 = (JreLShift64(a15, 41)) | (JreURShift64(a15, 23));
    a15 = (JreLShift64(a04, 27)) | (JreURShift64(a04, 37));
    a04 = (JreLShift64(a24, 14)) | (JreURShift64(a24, 50));
    a24 = (JreLShift64(a21, 2)) | (JreURShift64(a21, 62));
    a21 = (JreLShift64(a08, 55)) | (JreURShift64(a08, 9));
    a08 = (JreLShift64(a16, 45)) | (JreURShift64(a16, 19));
    a16 = (JreLShift64(a05, 36)) | (JreURShift64(a05, 28));
    a05 = (JreLShift64(a03, 28)) | (JreURShift64(a03, 36));
    a03 = (JreLShift64(a18, 21)) | (JreURShift64(a18, 43));
    a18 = (JreLShift64(a17, 15)) | (JreURShift64(a17, 49));
    a17 = (JreLShift64(a11, 10)) | (JreURShift64(a11, 54));
    a11 = (JreLShift64(a07, 6)) | (JreURShift64(a07, 58));
    a07 = (JreLShift64(a10, 3)) | (JreURShift64(a10, 61));
    a10 = c1;
    c0 = a00 ^ (~a01 & a02);
    c1 = a01 ^ (~a02 & a03);
    a02 ^= ~a03 & a04;
    a03 ^= ~a04 & a00;
    a04 ^= ~a00 & a01;
    a00 = c0;
    a01 = c1;
    c0 = a05 ^ (~a06 & a07);
    c1 = a06 ^ (~a07 & a08);
    a07 ^= ~a08 & a09;
    a08 ^= ~a09 & a05;
    a09 ^= ~a05 & a06;
    a05 = c0;
    a06 = c1;
    c0 = a10 ^ (~a11 & a12);
    c1 = a11 ^ (~a12 & a13);
    a12 ^= ~a13 & a14;
    a13 ^= ~a14 & a10;
    a14 ^= ~a10 & a11;
    a10 = c0;
    a11 = c1;
    c0 = a15 ^ (~a16 & a17);
    c1 = a16 ^ (~a17 & a18);
    a17 ^= ~a18 & a19;
    a18 ^= ~a19 & a15;
    a19 ^= ~a15 & a16;
    a15 = c0;
    a16 = c1;
    c0 = a20 ^ (~a21 & a22);
    c1 = a21 ^ (~a22 & a23);
    a22 ^= ~a23 & a24;
    a23 ^= ~a24 & a20;
    a24 ^= ~a20 & a21;
    a20 = c0;
    a21 = c1;
    a00 ^= IOSLongArray_Get(nil_chk(OrgMinimaUtilsDigestKeccakDigest_KeccakRoundConstants), i);
  }
  *IOSLongArray_GetRef(A, 0) = a00;
  *IOSLongArray_GetRef(A, 1) = a01;
  *IOSLongArray_GetRef(A, 2) = a02;
  *IOSLongArray_GetRef(A, 3) = a03;
  *IOSLongArray_GetRef(A, 4) = a04;
  *IOSLongArray_GetRef(A, 5) = a05;
  *IOSLongArray_GetRef(A, 6) = a06;
  *IOSLongArray_GetRef(A, 7) = a07;
  *IOSLongArray_GetRef(A, 8) = a08;
  *IOSLongArray_GetRef(A, 9) = a09;
  *IOSLongArray_GetRef(A, 10) = a10;
  *IOSLongArray_GetRef(A, 11) = a11;
  *IOSLongArray_GetRef(A, 12) = a12;
  *IOSLongArray_GetRef(A, 13) = a13;
  *IOSLongArray_GetRef(A, 14) = a14;
  *IOSLongArray_GetRef(A, 15) = a15;
  *IOSLongArray_GetRef(A, 16) = a16;
  *IOSLongArray_GetRef(A, 17) = a17;
  *IOSLongArray_GetRef(A, 18) = a18;
  *IOSLongArray_GetRef(A, 19) = a19;
  *IOSLongArray_GetRef(A, 20) = a20;
  *IOSLongArray_GetRef(A, 21) = a21;
  *IOSLongArray_GetRef(A, 22) = a22;
  *IOSLongArray_GetRef(A, 23) = a23;
  *IOSLongArray_GetRef(A, 24) = a24;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsDigestKeccakDigest)
