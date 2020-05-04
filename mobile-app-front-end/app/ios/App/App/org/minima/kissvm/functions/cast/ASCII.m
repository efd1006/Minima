//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/cast/ASCII.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/nio/charset/Charset.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/functions/cast/ASCII.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/ScriptValue.h"
#include "org/minima/kissvm/values/Value.h"

@implementation OrgMinimaKissvmFunctionsCastASCII

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmFunctionsCastASCII_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  OrgMinimaKissvmValuesHEXValue *ascii = (OrgMinimaKissvmValuesHEXValue *) cast_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaKissvmContract:zContract], [OrgMinimaKissvmValuesHEXValue class]);
  NSString *script = [NSString java_stringWithBytes:[((OrgMinimaKissvmValuesHEXValue *) nil_chk(ascii)) getRawData] charset:JavaNioCharsetCharset_forNameWithNSString_(@"US-ASCII")];
  return new_OrgMinimaKissvmValuesScriptValue_initWithNSString_(script);
}

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction {
  return new_OrgMinimaKissvmFunctionsCastASCII_init();
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
  static const J2ObjcClassInfo _OrgMinimaKissvmFunctionsCastASCII = { "ASCII", "org.minima.kissvm.functions.cast", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmFunctionsCastASCII;
}

@end

void OrgMinimaKissvmFunctionsCastASCII_init(OrgMinimaKissvmFunctionsCastASCII *self) {
  OrgMinimaKissvmFunctionsMinimaFunction_initWithNSString_(self, @"ASCII");
}

OrgMinimaKissvmFunctionsCastASCII *new_OrgMinimaKissvmFunctionsCastASCII_init() {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmFunctionsCastASCII, init)
}

OrgMinimaKissvmFunctionsCastASCII *create_OrgMinimaKissvmFunctionsCastASCII_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmFunctionsCastASCII, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmFunctionsCastASCII)
