//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/sigs/CHECKSIG.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/functions/sigs/CHECKSIG.h"
#include "org/minima/kissvm/values/BooleanValue.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/PubPrivKey.h"
#include "org/minima/objects/base/MiniData.h"

@implementation OrgMinimaKissvmFunctionsSigsCHECKSIG

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmFunctionsSigsCHECKSIG_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  OrgMinimaKissvmValuesHEXValue *pubkey = (OrgMinimaKissvmValuesHEXValue *) cast_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaKissvmContract:zContract], [OrgMinimaKissvmValuesHEXValue class]);
  OrgMinimaKissvmValuesHEXValue *data = (OrgMinimaKissvmValuesHEXValue *) cast_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:1])) getValueWithOrgMinimaKissvmContract:zContract], [OrgMinimaKissvmValuesHEXValue class]);
  OrgMinimaKissvmValuesHEXValue *sig = (OrgMinimaKissvmValuesHEXValue *) cast_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:2])) getValueWithOrgMinimaKissvmContract:zContract], [OrgMinimaKissvmValuesHEXValue class]);
  OrgMinimaObjectsBaseMiniData *pubk = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_([((OrgMinimaObjectsBaseMiniData *) nil_chk([((OrgMinimaKissvmValuesHEXValue *) nil_chk(pubkey)) getMiniData])) getData]);
  jboolean ok = OrgMinimaObjectsPubPrivKey_verifyWithOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMiniData_withOrgMinimaObjectsBaseMiniData_(pubk, new_OrgMinimaObjectsBaseMiniData_initWithByteArray_([((OrgMinimaKissvmValuesHEXValue *) nil_chk(data)) getRawData]), [((OrgMinimaKissvmValuesHEXValue *) nil_chk(sig)) getMiniData]);
  return new_OrgMinimaKissvmValuesBooleanValue_initWithBoolean_(ok);
}

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction {
  return new_OrgMinimaKissvmFunctionsSigsCHECKSIG_init();
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
  static const J2ObjcClassInfo _OrgMinimaKissvmFunctionsSigsCHECKSIG = { "CHECKSIG", "org.minima.kissvm.functions.sigs", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmFunctionsSigsCHECKSIG;
}

@end

void OrgMinimaKissvmFunctionsSigsCHECKSIG_init(OrgMinimaKissvmFunctionsSigsCHECKSIG *self) {
  OrgMinimaKissvmFunctionsMinimaFunction_initWithNSString_(self, @"CHECKSIG");
}

OrgMinimaKissvmFunctionsSigsCHECKSIG *new_OrgMinimaKissvmFunctionsSigsCHECKSIG_init() {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmFunctionsSigsCHECKSIG, init)
}

OrgMinimaKissvmFunctionsSigsCHECKSIG *create_OrgMinimaKissvmFunctionsSigsCHECKSIG_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmFunctionsSigsCHECKSIG, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmFunctionsSigsCHECKSIG)
