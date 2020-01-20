//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/txn/input/GETINID.java
//

#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "org/minima/miniscript/Contract.h"
#include "org/minima/miniscript/exceptions/ExecutionException.h"
#include "org/minima/miniscript/expressions/Expression.h"
#include "org/minima/miniscript/functions/MinimaFunction.h"
#include "org/minima/miniscript/functions/txn/input/GETINID.h"
#include "org/minima/miniscript/values/HEXValue.h"
#include "org/minima/miniscript/values/Value.h"
#include "org/minima/objects/Coin.h"
#include "org/minima/objects/Transaction.h"
#include "org/minima/objects/base/MiniData32.h"
#include "org/minima/objects/base/MiniNumber.h"

@implementation OrgMinimaMiniscriptFunctionsTxnInputGETINID

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaMiniscriptFunctionsTxnInputGETINID_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract {
  jint input = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaMiniscriptValuesValue *) nil_chk([((id<OrgMinimaMiniscriptExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaMiniscriptContract:zContract])) getNumber])) getAsInt];
  OrgMinimaObjectsTransaction *trans = [((OrgMinimaMiniscriptContract *) nil_chk(zContract)) getTransaction];
  JavaUtilArrayList *ins = [((OrgMinimaObjectsTransaction *) nil_chk(trans)) getAllInputs];
  if ([((JavaUtilArrayList *) nil_chk(ins)) size] <= input) {
    @throw create_OrgMinimaMiniscriptExceptionsExecutionException_initWithNSString_(JreStrcat("$ICI", @"Input number too high ", input, '/', [ins size]));
  }
  OrgMinimaObjectsCoin *cc = [ins getWithInt:input];
  return create_OrgMinimaMiniscriptValuesHEXValue_initWithOrgMinimaObjectsBaseMiniData_([((OrgMinimaObjectsCoin *) nil_chk(cc)) getCoinID]);
}

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction {
  return create_OrgMinimaMiniscriptFunctionsTxnInputGETINID_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaMiniscriptValuesValue;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgMinimaMiniscriptFunctionsMinimaFunction;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(runFunctionWithOrgMinimaMiniscriptContract:);
  methods[2].selector = @selector(getNewFunction);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "runFunction", "LOrgMinimaMiniscriptContract;", "LOrgMinimaMiniscriptExceptionsExecutionException;" };
  static const J2ObjcClassInfo _OrgMinimaMiniscriptFunctionsTxnInputGETINID = { "GETINID", "org.minima.miniscript.functions.txn.input", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaMiniscriptFunctionsTxnInputGETINID;
}

@end

void OrgMinimaMiniscriptFunctionsTxnInputGETINID_init(OrgMinimaMiniscriptFunctionsTxnInputGETINID *self) {
  OrgMinimaMiniscriptFunctionsMinimaFunction_initWithNSString_(self, @"GETINID");
}

OrgMinimaMiniscriptFunctionsTxnInputGETINID *new_OrgMinimaMiniscriptFunctionsTxnInputGETINID_init() {
  J2OBJC_NEW_IMPL(OrgMinimaMiniscriptFunctionsTxnInputGETINID, init)
}

OrgMinimaMiniscriptFunctionsTxnInputGETINID *create_OrgMinimaMiniscriptFunctionsTxnInputGETINID_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaMiniscriptFunctionsTxnInputGETINID, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaMiniscriptFunctionsTxnInputGETINID)
