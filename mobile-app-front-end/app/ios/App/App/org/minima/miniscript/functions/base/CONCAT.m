//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/functions/base/CONCAT.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "org/minima/miniscript/Contract.h"
#include "org/minima/miniscript/exceptions/ExecutionException.h"
#include "org/minima/miniscript/expressions/Expression.h"
#include "org/minima/miniscript/functions/MinimaFunction.h"
#include "org/minima/miniscript/functions/base/CONCAT.h"
#include "org/minima/miniscript/values/HEXValue.h"
#include "org/minima/miniscript/values/ScriptValue.h"
#include "org/minima/miniscript/values/Value.h"

@implementation OrgMinimaMiniscriptFunctionsBaseCONCAT

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaMiniscriptFunctionsBaseCONCAT_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaMiniscriptValuesValue *)runFunctionWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract {
  JavaUtilArrayList *params = [self getAllParameters];
  jint paramnum = [((JavaUtilArrayList *) nil_chk(params)) size];
  IOSObjectArray *parambytes = [IOSObjectArray arrayWithLength:paramnum type:IOSClass_byteArray(1)];
  if (paramnum < 1) {
    @throw create_OrgMinimaMiniscriptExceptionsExecutionException_initWithNSString_(JreStrcat("$I", @"Invalid number of Parameters for CONCAT ", paramnum));
  }
  jint type = [((OrgMinimaMiniscriptValuesValue *) nil_chk([((id<OrgMinimaMiniscriptExpressionsExpression>) nil_chk([params getWithInt:0])) getValueWithOrgMinimaMiniscriptContract:zContract])) getValueType];
  jint totlen = 0;
  jint counter = 0;
  for (id<OrgMinimaMiniscriptExpressionsExpression> __strong exp in params) {
    IOSObjectArray_Set(parambytes, counter, [((OrgMinimaMiniscriptValuesValue *) nil_chk([((id<OrgMinimaMiniscriptExpressionsExpression>) nil_chk(exp)) getValueWithOrgMinimaMiniscriptContract:zContract])) getRawData]);
    totlen += ((IOSByteArray *) nil_chk(IOSObjectArray_Get(parambytes, counter)))->size_;
    counter++;
  }
  IOSByteArray *result = [IOSByteArray arrayWithLength:totlen];
  jint pos = 0;
  for (jint i = 0; i < counter; i++) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(parambytes, i), 0, result, pos, ((IOSByteArray *) nil_chk(IOSObjectArray_Get(parambytes, i)))->size_);
    pos += ((IOSByteArray *) nil_chk(IOSObjectArray_Get(parambytes, i)))->size_;
  }
  if (type == OrgMinimaMiniscriptValuesHEXValue_VALUE_HEX) {
    return create_OrgMinimaMiniscriptValuesHEXValue_initWithByteArray_(result);
  }
  else if (type == OrgMinimaMiniscriptValuesScriptValue_VALUE_SCRIPT) {
    return create_OrgMinimaMiniscriptValuesScriptValue_initWithNSString_([NSString java_stringWithBytes:result]);
  }
  else {
    @throw create_OrgMinimaMiniscriptExceptionsExecutionException_initWithNSString_(JreStrcat("$I$$", @"Invaid Value Type in CONCAT ", type, @") ", [((id<OrgMinimaMiniscriptExpressionsExpression>) nil_chk([params getWithInt:0])) description]));
  }
}

- (OrgMinimaMiniscriptFunctionsMinimaFunction *)getNewFunction {
  return create_OrgMinimaMiniscriptFunctionsBaseCONCAT_init();
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
  static const J2ObjcClassInfo _OrgMinimaMiniscriptFunctionsBaseCONCAT = { "CONCAT", "org.minima.miniscript.functions.base", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaMiniscriptFunctionsBaseCONCAT;
}

@end

void OrgMinimaMiniscriptFunctionsBaseCONCAT_init(OrgMinimaMiniscriptFunctionsBaseCONCAT *self) {
  OrgMinimaMiniscriptFunctionsMinimaFunction_initWithNSString_(self, @"CONCAT");
}

OrgMinimaMiniscriptFunctionsBaseCONCAT *new_OrgMinimaMiniscriptFunctionsBaseCONCAT_init() {
  J2OBJC_NEW_IMPL(OrgMinimaMiniscriptFunctionsBaseCONCAT, init)
}

OrgMinimaMiniscriptFunctionsBaseCONCAT *create_OrgMinimaMiniscriptFunctionsBaseCONCAT_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaMiniscriptFunctionsBaseCONCAT, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaMiniscriptFunctionsBaseCONCAT)
