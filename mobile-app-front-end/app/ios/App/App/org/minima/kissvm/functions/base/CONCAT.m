//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/base/CONCAT.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/nio/charset/Charset.h"
#include "java/util/ArrayList.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/exceptions/ExecutionException.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/functions/base/CONCAT.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/ScriptValue.h"
#include "org/minima/kissvm/values/Value.h"

@implementation OrgMinimaKissvmFunctionsBaseCONCAT

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmFunctionsBaseCONCAT_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  JavaUtilArrayList *params = [self getAllParameters];
  jint paramnum = [((JavaUtilArrayList *) nil_chk(params)) size];
  IOSObjectArray *parambytes = [IOSObjectArray newArrayWithLength:paramnum type:IOSClass_byteArray(1)];
  if (paramnum < 1) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I", @"Invalid number of Parameters for CONCAT ", paramnum));
  }
  jint type = [((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([params getWithInt:0])) getValueWithOrgMinimaKissvmContract:zContract])) getValueType];
  if (type != OrgMinimaKissvmValuesHEXValue_VALUE_HEX && type != OrgMinimaKissvmValuesScriptValue_VALUE_SCRIPT) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I$$", @"Invaid Value Type in CONCAT ", type, @") MUST be HEX or SCRIPT ", [((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([params getWithInt:0])) description]));
  }
  jint totlen = 0;
  jint counter = 0;
  for (id<OrgMinimaKissvmExpressionsExpression> __strong exp in params) {
    jint intype = [((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk(exp)) getValueWithOrgMinimaKissvmContract:zContract])) getValueType];
    if (intype != type) {
      @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I$", @"Invaid Value Type in CONCAT ", intype, @") MUST all be the same"));
    }
    (void) IOSObjectArray_Set(parambytes, counter, [((OrgMinimaKissvmValuesValue *) nil_chk([exp getValueWithOrgMinimaKissvmContract:zContract])) getRawData]);
    totlen += ((IOSByteArray *) nil_chk(IOSObjectArray_Get(parambytes, counter)))->size_;
    counter++;
  }
  IOSByteArray *result = [IOSByteArray newArrayWithLength:totlen];
  NSString *fullstring = @"";
  jint pos = 0;
  for (jint i = 0; i < counter; i++) {
    if (type == OrgMinimaKissvmValuesHEXValue_VALUE_HEX) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(parambytes, i), 0, result, pos, ((IOSByteArray *) nil_chk(IOSObjectArray_Get(parambytes, i)))->size_);
      pos += ((IOSByteArray *) nil_chk(IOSObjectArray_Get(parambytes, i)))->size_;
    }
    else {
      (void) JreStrAppendStrong(&fullstring, "$C", [NSString java_stringWithBytes:IOSObjectArray_Get(parambytes, i) charset:JavaNioCharsetCharset_forNameWithNSString_(@"US-ASCII")], ' ');
    }
  }
  if (type == OrgMinimaKissvmValuesHEXValue_VALUE_HEX) {
    return new_OrgMinimaKissvmValuesHEXValue_initWithByteArray_(result);
  }
  else if (type == OrgMinimaKissvmValuesScriptValue_VALUE_SCRIPT) {
    return new_OrgMinimaKissvmValuesScriptValue_initWithNSString_(fullstring);
  }
  else {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I$$", @"Invaid Value Type in CONCAT ", type, @") ", [((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([params getWithInt:0])) description]));
  }
}

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction {
  return new_OrgMinimaKissvmFunctionsBaseCONCAT_init();
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
  static const J2ObjcClassInfo _OrgMinimaKissvmFunctionsBaseCONCAT = { "CONCAT", "org.minima.kissvm.functions.base", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmFunctionsBaseCONCAT;
}

@end

void OrgMinimaKissvmFunctionsBaseCONCAT_init(OrgMinimaKissvmFunctionsBaseCONCAT *self) {
  OrgMinimaKissvmFunctionsMinimaFunction_initWithNSString_(self, @"CONCAT");
}

OrgMinimaKissvmFunctionsBaseCONCAT *new_OrgMinimaKissvmFunctionsBaseCONCAT_init() {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmFunctionsBaseCONCAT, init)
}

OrgMinimaKissvmFunctionsBaseCONCAT *create_OrgMinimaKissvmFunctionsBaseCONCAT_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmFunctionsBaseCONCAT, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmFunctionsBaseCONCAT)
