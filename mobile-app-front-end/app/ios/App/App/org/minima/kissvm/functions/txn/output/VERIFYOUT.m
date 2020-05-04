//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/txn/output/VERIFYOUT.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/functions/txn/output/VERIFYOUT.h"
#include "org/minima/kissvm/values/BooleanValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/Coin.h"
#include "org/minima/objects/Transaction.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniNumber.h"

@implementation OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  jint output = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaKissvmContract:zContract])) getNumber])) getAsInt];
  OrgMinimaObjectsBaseMiniData *address = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_([((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:1])) getValueWithOrgMinimaKissvmContract:zContract])) getRawData]);
  OrgMinimaObjectsBaseMiniNumber *amount = [((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:2])) getValueWithOrgMinimaKissvmContract:zContract])) getNumber];
  OrgMinimaObjectsBaseMiniData *tokenid = new_OrgMinimaObjectsBaseMiniData_initWithByteArray_([((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:3])) getValueWithOrgMinimaKissvmContract:zContract])) getRawData]);
  jint amountchecktype = 0;
  if ([self getParameterNum] > 4) {
    amountchecktype = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:4])) getValueWithOrgMinimaKissvmContract:zContract])) getNumber])) getAsInt];
  }
  OrgMinimaObjectsTransaction *trans = [((OrgMinimaKissvmContract *) nil_chk(zContract)) getTransaction];
  JavaUtilArrayList *outs = [((OrgMinimaObjectsTransaction *) nil_chk(trans)) getAllOutputs];
  if ([((JavaUtilArrayList *) nil_chk(outs)) size] <= output) {
    return new_OrgMinimaKissvmValuesBooleanValue_initWithBoolean_(false);
  }
  OrgMinimaObjectsCoin *cc = [outs getWithInt:output];
  jboolean addr = [address isEqualWithOrgMinimaObjectsBaseMiniData:[((OrgMinimaObjectsCoin *) nil_chk(cc)) getAddress]];
  jboolean tok = [tokenid isEqualWithOrgMinimaObjectsBaseMiniData:[cc getTokenID]];
  jboolean amt = false;
  if (amountchecktype == 0) {
    amt = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk(amount)) isEqualWithOrgMinimaObjectsBaseMiniNumber:[cc getAmount]];
  }
  else if (amountchecktype == -1) {
    amt = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([cc getAmount])) isLessEqualWithOrgMinimaObjectsBaseMiniNumber:amount];
  }
  else {
    amt = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([cc getAmount])) isMoreEqualWithOrgMinimaObjectsBaseMiniNumber:amount];
  }
  jboolean ver = addr && amt && tok;
  return new_OrgMinimaKissvmValuesBooleanValue_initWithBoolean_(ver);
}

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction {
  return new_OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT_init();
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
  static const J2ObjcClassInfo _OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT = { "VERIFYOUT", "org.minima.kissvm.functions.txn.output", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT;
}

@end

void OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT_init(OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT *self) {
  OrgMinimaKissvmFunctionsMinimaFunction_initWithNSString_(self, @"VERIFYOUT");
}

OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT *new_OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT_init() {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT, init)
}

OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT *create_OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmFunctionsTxnOutputVERIFYOUT)
