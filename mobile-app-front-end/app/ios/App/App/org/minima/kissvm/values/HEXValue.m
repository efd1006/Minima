//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/values/HEXValue.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniNumber.h"

@implementation OrgMinimaKissvmValuesHEXValue

- (instancetype)initWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zData {
  OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniData_(self, zData);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)zData {
  OrgMinimaKissvmValuesHEXValue_initWithByteArray_(self, zData);
  return self;
}

- (instancetype)initWithOrgMinimaObjectsBaseMiniNumber:(OrgMinimaObjectsBaseMiniNumber *)zNumber {
  OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_(self, zNumber);
  return self;
}

- (instancetype)initWithNSString:(NSString *)zHex {
  OrgMinimaKissvmValuesHEXValue_initWithNSString_(self, zHex);
  return self;
}

- (jint)getValueType {
  return OrgMinimaKissvmValuesHEXValue_VALUE_HEX;
}

- (jboolean)isEqualWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk(mData_)) isEqualWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getMiniData]];
}

- (jboolean)isLessWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk(mData_)) isLessWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getMiniData]];
}

- (jboolean)isLessEqualWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk(mData_)) isLessEqualWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getMiniData]];
}

- (jboolean)isMoreWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk(mData_)) isMoreWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getMiniData]];
}

- (jboolean)isMoreEqualWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk(mData_)) isMoreEqualWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getMiniData]];
}

- (OrgMinimaKissvmValuesValue *)addWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return new_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mNumber_)) addWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getNumber]]);
}

- (OrgMinimaKissvmValuesValue *)subWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return new_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mNumber_)) subWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getNumber]]);
}

- (OrgMinimaKissvmValuesValue *)multWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return new_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mNumber_)) multWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getNumber]]);
}

- (OrgMinimaKissvmValuesValue *)divWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  return new_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mNumber_)) divWithOrgMinimaObjectsBaseMiniNumber:[((OrgMinimaKissvmValuesValue *) nil_chk(zValue)) getNumber]]);
}

- (NSString *)description {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk(mData_)) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 5, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 10, 5, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 11, 5, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 12, 5, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 13, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaObjectsBaseMiniData:);
  methods[1].selector = @selector(initWithByteArray:);
  methods[2].selector = @selector(initWithOrgMinimaObjectsBaseMiniNumber:);
  methods[3].selector = @selector(initWithNSString:);
  methods[4].selector = @selector(getValueType);
  methods[5].selector = @selector(isEqualWithOrgMinimaKissvmValuesValue:);
  methods[6].selector = @selector(isLessWithOrgMinimaKissvmValuesValue:);
  methods[7].selector = @selector(isLessEqualWithOrgMinimaKissvmValuesValue:);
  methods[8].selector = @selector(isMoreWithOrgMinimaKissvmValuesValue:);
  methods[9].selector = @selector(isMoreEqualWithOrgMinimaKissvmValuesValue:);
  methods[10].selector = @selector(addWithOrgMinimaKissvmValuesValue:);
  methods[11].selector = @selector(subWithOrgMinimaKissvmValuesValue:);
  methods[12].selector = @selector(multWithOrgMinimaKissvmValuesValue:);
  methods[13].selector = @selector(divWithOrgMinimaKissvmValuesValue:);
  methods[14].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "VALUE_HEX", "I", .constantValue.asInt = OrgMinimaKissvmValuesHEXValue_VALUE_HEX, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaObjectsBaseMiniData;", "[B", "LOrgMinimaObjectsBaseMiniNumber;", "LNSString;", "isEqual", "LOrgMinimaKissvmValuesValue;", "isLess", "isLessEqual", "isMore", "isMoreEqual", "add", "sub", "mult", "div", "toString" };
  static const J2ObjcClassInfo _OrgMinimaKissvmValuesHEXValue = { "HEXValue", "org.minima.kissvm.values", ptrTable, methods, fields, 7, 0x1, 15, 1, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmValuesHEXValue;
}

@end

void OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniData_(OrgMinimaKissvmValuesHEXValue *self, OrgMinimaObjectsBaseMiniData *zData) {
  OrgMinimaKissvmValuesHEXValue_initWithByteArray_(self, [((OrgMinimaObjectsBaseMiniData *) nil_chk(zData)) getData]);
}

OrgMinimaKissvmValuesHEXValue *new_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniData_(OrgMinimaObjectsBaseMiniData *zData) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmValuesHEXValue, initWithOrgMinimaObjectsBaseMiniData_, zData)
}

OrgMinimaKissvmValuesHEXValue *create_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniData_(OrgMinimaObjectsBaseMiniData *zData) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmValuesHEXValue, initWithOrgMinimaObjectsBaseMiniData_, zData)
}

void OrgMinimaKissvmValuesHEXValue_initWithByteArray_(OrgMinimaKissvmValuesHEXValue *self, IOSByteArray *zData) {
  OrgMinimaKissvmValuesValue_init(self);
  self->mData_ = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_(zData);
  self->mNumber_ = new_OrgMinimaObjectsBaseMiniNumber_initWithJavaMathBigInteger_([self->mData_ getDataValue]);
}

OrgMinimaKissvmValuesHEXValue *new_OrgMinimaKissvmValuesHEXValue_initWithByteArray_(IOSByteArray *zData) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmValuesHEXValue, initWithByteArray_, zData)
}

OrgMinimaKissvmValuesHEXValue *create_OrgMinimaKissvmValuesHEXValue_initWithByteArray_(IOSByteArray *zData) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmValuesHEXValue, initWithByteArray_, zData)
}

void OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_(OrgMinimaKissvmValuesHEXValue *self, OrgMinimaObjectsBaseMiniNumber *zNumber) {
  OrgMinimaKissvmValuesHEXValue_initWithNSString_(self, [((NSString *) nil_chk([new_JavaMathBigInteger_initWithNSString_([((OrgMinimaObjectsBaseMiniNumber *) nil_chk(zNumber)) description]) toStringWithInt:16])) uppercaseString]);
}

OrgMinimaKissvmValuesHEXValue *new_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_(OrgMinimaObjectsBaseMiniNumber *zNumber) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmValuesHEXValue, initWithOrgMinimaObjectsBaseMiniNumber_, zNumber)
}

OrgMinimaKissvmValuesHEXValue *create_OrgMinimaKissvmValuesHEXValue_initWithOrgMinimaObjectsBaseMiniNumber_(OrgMinimaObjectsBaseMiniNumber *zNumber) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmValuesHEXValue, initWithOrgMinimaObjectsBaseMiniNumber_, zNumber)
}

void OrgMinimaKissvmValuesHEXValue_initWithNSString_(OrgMinimaKissvmValuesHEXValue *self, NSString *zHex) {
  OrgMinimaKissvmValuesValue_init(self);
  self->mData_ = new_OrgMinimaObjectsBaseMiniData_initWithNSString_(zHex);
  self->mNumber_ = new_OrgMinimaObjectsBaseMiniNumber_initWithJavaMathBigInteger_([self->mData_ getDataValue]);
}

OrgMinimaKissvmValuesHEXValue *new_OrgMinimaKissvmValuesHEXValue_initWithNSString_(NSString *zHex) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmValuesHEXValue, initWithNSString_, zHex)
}

OrgMinimaKissvmValuesHEXValue *create_OrgMinimaKissvmValuesHEXValue_initWithNSString_(NSString *zHex) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmValuesHEXValue, initWithNSString_, zHex)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmValuesHEXValue)
