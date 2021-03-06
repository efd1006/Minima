//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/functions/maths/BITSET.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/exceptions/ExecutionException.h"
#include "org/minima/kissvm/expressions/Expression.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/functions/maths/BITSET.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/base/MiniNumber.h"

@implementation OrgMinimaKissvmFunctionsMathsBITSET

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmFunctionsMathsBITSET_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgMinimaKissvmValuesValue *)runFunctionWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract {
  IOSByteArray *data = [((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:0])) getValueWithOrgMinimaKissvmContract:zContract])) getRawData];
  jint datalen = ((IOSByteArray *) nil_chk(data))->size_;
  jint bit = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:1])) getValueWithOrgMinimaKissvmContract:zContract])) getNumber])) getAsInt];
  jboolean set = [((OrgMinimaKissvmValuesValue *) nil_chk([((id<OrgMinimaKissvmExpressionsExpression>) nil_chk([self getParameterWithInt:2])) getValueWithOrgMinimaKissvmContract:zContract])) isTrue];
  jint reqbyte = JreFpToInt(JavaLangMath_floorWithDouble_(bit / 8));
  if (reqbyte >= datalen) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I$I", @"Overflow Bit set. Total Bytes ", datalen, @". Requested ", reqbyte));
  }
  jint bitbyte = bit - (reqbyte * 8);
  IOSByteArray *copy_ = [IOSByteArray newArrayWithLength:datalen];
  for (jint i = 0; i < datalen; i++) {
    *IOSByteArray_GetRef(copy_, i) = IOSByteArray_Get(data, i);
    if (i == reqbyte) {
      if (set) {
        *IOSByteArray_GetRef(copy_, i) |= (JreLShift32(1, bitbyte));
      }
      else {
        *IOSByteArray_GetRef(copy_, i) &= ~(JreLShift32(1, bitbyte));
      }
    }
  }
  return new_OrgMinimaKissvmValuesHEXValue_initWithByteArray_(copy_);
}

- (OrgMinimaKissvmFunctionsMinimaFunction *)getNewFunction {
  return new_OrgMinimaKissvmFunctionsMathsBITSET_init();
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
  static const J2ObjcClassInfo _OrgMinimaKissvmFunctionsMathsBITSET = { "BITSET", "org.minima.kissvm.functions.maths", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmFunctionsMathsBITSET;
}

@end

void OrgMinimaKissvmFunctionsMathsBITSET_init(OrgMinimaKissvmFunctionsMathsBITSET *self) {
  OrgMinimaKissvmFunctionsMinimaFunction_initWithNSString_(self, @"BITSET");
}

OrgMinimaKissvmFunctionsMathsBITSET *new_OrgMinimaKissvmFunctionsMathsBITSET_init() {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmFunctionsMathsBITSET, init)
}

OrgMinimaKissvmFunctionsMathsBITSET *create_OrgMinimaKissvmFunctionsMathsBITSET_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmFunctionsMathsBITSET, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmFunctionsMathsBITSET)
