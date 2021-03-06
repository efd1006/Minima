//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/expressions/ConstantExpression.java
//

#include "J2ObjC_source.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/expressions/ConstantExpression.h"
#include "org/minima/kissvm/values/Value.h"

@interface OrgMinimaKissvmExpressionsConstantExpression () {
 @public
  OrgMinimaKissvmValuesValue *mValue_;
}

@end

J2OBJC_FIELD_SETTER(OrgMinimaKissvmExpressionsConstantExpression, mValue_, OrgMinimaKissvmValuesValue *)

@implementation OrgMinimaKissvmExpressionsConstantExpression

- (instancetype)initWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  OrgMinimaKissvmExpressionsConstantExpression_initWithOrgMinimaKissvmValuesValue_(self, zValue);
  return self;
}

- (OrgMinimaKissvmValuesValue *)getValueWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  return mValue_;
}

- (NSString *)description {
  return [((OrgMinimaKissvmValuesValue *) nil_chk(mValue_)) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaKissvmValuesValue:);
  methods[1].selector = @selector(getValueWithOrgMinimaKissvmContract:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mValue_", "LOrgMinimaKissvmValuesValue;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaKissvmValuesValue;", "getValue", "LOrgMinimaKissvmContract;", "LOrgMinimaKissvmExceptionsExecutionException;", "toString" };
  static const J2ObjcClassInfo _OrgMinimaKissvmExpressionsConstantExpression = { "ConstantExpression", "org.minima.kissvm.expressions", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmExpressionsConstantExpression;
}

@end

void OrgMinimaKissvmExpressionsConstantExpression_initWithOrgMinimaKissvmValuesValue_(OrgMinimaKissvmExpressionsConstantExpression *self, OrgMinimaKissvmValuesValue *zValue) {
  NSObject_init(self);
  self->mValue_ = zValue;
}

OrgMinimaKissvmExpressionsConstantExpression *new_OrgMinimaKissvmExpressionsConstantExpression_initWithOrgMinimaKissvmValuesValue_(OrgMinimaKissvmValuesValue *zValue) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmExpressionsConstantExpression, initWithOrgMinimaKissvmValuesValue_, zValue)
}

OrgMinimaKissvmExpressionsConstantExpression *create_OrgMinimaKissvmExpressionsConstantExpression_initWithOrgMinimaKissvmValuesValue_(OrgMinimaKissvmValuesValue *zValue) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmExpressionsConstantExpression, initWithOrgMinimaKissvmValuesValue_, zValue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmExpressionsConstantExpression)
