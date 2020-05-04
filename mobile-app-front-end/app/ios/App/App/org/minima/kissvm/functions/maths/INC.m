//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/maths/INC.java
//

#include "J2ObjC_source.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/functions/maths/INC.h"
#include "org/minima/kissvm/values/NumberValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/base/MiniNumber.h"

@implementation OrgMinimaKissvmFunctionsMathsINC

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmFunctionsMathsINC_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  OrgMinimaKissvmValuesNumberValue *number = (OrgMinimaKissvmValuesNumberValue *) cast_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaKissvmContract:zContract], [OrgMinimaKissvmValuesNumberValue class]);
  return new_OrgMinimaKissvmValuesNumberValue_initWithOrgMinimaObjectsBaseMiniNumber_([((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaKissvmValuesNumberValue *) nil_chk(number)) getNumber])) increment]);
}

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction {
  return new_OrgMinimaKissvmFunctionsMathsINC_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmFunctionsMinimaFunction;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(runFunctionWithOrgMinimaKissvmContract:);
  methods[2].selector = @selector(getNewFunction);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "runFunction", "LOrgMinimaKissvmContract;", "LOrgMinimaKissvmExceptionsExecutionException;" };
  static const J2ObjcClassInfo _OrgMinimaKissvmFunctionsMathsINC = { "INC", "org.minima.kissvm.functions.maths", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmFunctionsMathsINC;
}

@end

void OrgMinimaKissvmFunctionsMathsINC_init(OrgMinimaKissvmFunctionsMathsINC *self) {
  OrgMinimaKissvmFunctionsMinimaFunction_initWithNSString_(self, @"INC");
}

OrgMinimaKissvmFunctionsMathsINC *new_OrgMinimaKissvmFunctionsMathsINC_init() {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmFunctionsMathsINC, init)
}

OrgMinimaKissvmFunctionsMathsINC *create_OrgMinimaKissvmFunctionsMathsINC_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmFunctionsMathsINC, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmFunctionsMathsINC)
