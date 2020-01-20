//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/base/LEN.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/minima/miniscript/Contract.h"
#include "org/minima/miniscript/expressions/Expression.h"
#include "org/minima/miniscript/functions/MinimaFunction.h"
#include "org/minima/miniscript/functions/base/LEN.h"
#include "org/minima/miniscript/values/NumberValue.h"
#include "org/minima/miniscript/values/Value.h"

@implementation OrgMinimaMiniscriptFunctionsBaseLEN

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaMiniscriptFunctionsBaseLEN_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract {
  OrgMinimaMiniscriptValuesValue *hex = [((id<OrgMinimaMiniscriptExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaMiniscriptContract:zContract];
  jint len = ((IOSByteArray *) nil_chk([((OrgMinimaMiniscriptValuesValue *) nil_chk(hex)) getRawData]))->size_;
  return create_OrgMinimaMiniscriptValuesNumberValue_initWithInt_(len);
}

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction {
  return create_OrgMinimaMiniscriptFunctionsBaseLEN_init();
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
  static const J2ObjcClassInfo _OrgMinimaMiniscriptFunctionsBaseLEN = { "LEN", "org.minima.miniscript.functions.base", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaMiniscriptFunctionsBaseLEN;
}

@end

void OrgMinimaMiniscriptFunctionsBaseLEN_init(OrgMinimaMiniscriptFunctionsBaseLEN *self) {
  OrgMinimaMiniscriptFunctionsMinimaFunction_initWithNSString_(self, @"LEN");
}

OrgMinimaMiniscriptFunctionsBaseLEN *new_OrgMinimaMiniscriptFunctionsBaseLEN_init() {
  J2OBJC_NEW_IMPL(OrgMinimaMiniscriptFunctionsBaseLEN, init)
}

OrgMinimaMiniscriptFunctionsBaseLEN *create_OrgMinimaMiniscriptFunctionsBaseLEN_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaMiniscriptFunctionsBaseLEN, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaMiniscriptFunctionsBaseLEN)
