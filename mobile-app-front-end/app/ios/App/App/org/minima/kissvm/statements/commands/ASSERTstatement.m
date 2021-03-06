//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/statements/commands/ASSERTstatement.java
//

#include "J2ObjC_source.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/statements/commands/ASSERTstatement.h"
#include "org/minima/kissvm/values/Value.h"

@implementation OrgMinimaKissvmStatementsCommandsASSERTstatement

- (instancetype)initWithOrgMinimaKissvmExpressionsExpression:(id<OrgMinimaKissvmExpressionsExpression>)zAssertValue {
  OrgMinimaKissvmStatementsCommandsASSERTstatement_initWithOrgMinimaKissvmExpressionsExpression_(self, zAssertValue);
  return self;
}

- (void)executeWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  jboolean success = [((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk(mAssertValue_)) getValueWithOrgMinimaKissvmContract:zContract])) isTrue];
  if (!success) {
    [((OrgMinimaKissvmContract *) nil_chk(zContract)) setRETURNValueWithBoolean:false];
  }
}

- (NSString *)description {
  return JreStrcat("$$", @"ASSERT ", [((id<OrgMinimaKissvmExpressionsExpression>) nil_chk(mAssertValue_)) description]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaKissvmExpressionsExpression:);
  methods[1].selector = @selector(executeWithOrgMinimaKissvmContract:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mAssertValue_", "LOrgMinimaKissvmExpressionsExpression;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaKissvmExpressionsExpression;", "execute", "LOrgMinimaKissvmContract;", "LOrgMinimaKissvmExceptionsExecutionException;", "toString" };
  static const J2ObjcClassInfo _OrgMinimaKissvmStatementsCommandsASSERTstatement = { "ASSERTstatement", "org.minima.kissvm.statements.commands", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmStatementsCommandsASSERTstatement;
}

@end

void OrgMinimaKissvmStatementsCommandsASSERTstatement_initWithOrgMinimaKissvmExpressionsExpression_(OrgMinimaKissvmStatementsCommandsASSERTstatement *self, id<OrgMinimaKissvmExpressionsExpression> zAssertValue) {
  NSObject_init(self);
  self->mAssertValue_ = zAssertValue;
}

OrgMinimaKissvmStatementsCommandsASSERTstatement *new_OrgMinimaKissvmStatementsCommandsASSERTstatement_initWithOrgMinimaKissvmExpressionsExpression_(id<OrgMinimaKissvmExpressionsExpression> zAssertValue) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmStatementsCommandsASSERTstatement, initWithOrgMinimaKissvmExpressionsExpression_, zAssertValue)
}

OrgMinimaKissvmStatementsCommandsASSERTstatement *create_OrgMinimaKissvmStatementsCommandsASSERTstatement_initWithOrgMinimaKissvmExpressionsExpression_(id<OrgMinimaKissvmExpressionsExpression> zAssertValue) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmStatementsCommandsASSERTstatement, initWithOrgMinimaKissvmExpressionsExpression_, zAssertValue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmStatementsCommandsASSERTstatement)
