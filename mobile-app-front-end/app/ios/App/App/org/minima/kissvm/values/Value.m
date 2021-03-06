//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/values/Value.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "org/minima/kissvm/tokens/Token.h"
#include "org/minima/kissvm/values/BooleanValue.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/NumberValue.h"
#include "org/minima/kissvm/values/ScriptValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniNumber.h"

@implementation OrgMinimaKissvmValuesValue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaKissvmValuesValue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getValueType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgMinimaObjectsBaseMiniNumber *)getNumber {
  return mNumber_;
}

- (OrgMinimaObjectsBaseMiniData *)getMiniData {
  return mData_;
}

- (IOSByteArray *)getRawData {
  return [((OrgMinimaObjectsBaseMiniData *) nil_chk([self getMiniData])) getData];
}

- (jboolean)isEqualWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isLessWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isLessEqualWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isMoreWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isMoreEqualWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isTrue {
  return ![self isFalse];
}

- (jboolean)isFalse {
  return [((OrgMinimaObjectsBaseMiniNumber *) nil_chk(mNumber_)) isEqualWithOrgMinimaObjectsBaseMiniNumber:JreLoadStatic(OrgMinimaObjectsBaseMiniNumber, ZERO)];
}

- (OrgMinimaKissvmValuesValue *)addWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgMinimaKissvmValuesValue *)subWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgMinimaKissvmValuesValue *)multWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgMinimaKissvmValuesValue *)divWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgMinimaKissvmValuesValue *)getValueWithNSString:(NSString *)zValue {
  return OrgMinimaKissvmValuesValue_getValueWithNSString_(zValue);
}

+ (jint)getValueTypeWithNSString:(NSString *)zValue {
  return OrgMinimaKissvmValuesValue_getValueTypeWithNSString_(zValue);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs {
  OrgMinimaKissvmValuesValue_mainWithNSStringArray_(zArgs);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsBaseMiniData;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 3, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 5, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x401, 6, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x401, 7, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x401, 8, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x401, 9, 1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x9, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 12, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 13, 14, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getValueType);
  methods[2].selector = @selector(getNumber);
  methods[3].selector = @selector(getMiniData);
  methods[4].selector = @selector(getRawData);
  methods[5].selector = @selector(isEqualWithOrgMinimaKissvmValuesValue:);
  methods[6].selector = @selector(isLessWithOrgMinimaKissvmValuesValue:);
  methods[7].selector = @selector(isLessEqualWithOrgMinimaKissvmValuesValue:);
  methods[8].selector = @selector(isMoreWithOrgMinimaKissvmValuesValue:);
  methods[9].selector = @selector(isMoreEqualWithOrgMinimaKissvmValuesValue:);
  methods[10].selector = @selector(isTrue);
  methods[11].selector = @selector(isFalse);
  methods[12].selector = @selector(addWithOrgMinimaKissvmValuesValue:);
  methods[13].selector = @selector(subWithOrgMinimaKissvmValuesValue:);
  methods[14].selector = @selector(multWithOrgMinimaKissvmValuesValue:);
  methods[15].selector = @selector(divWithOrgMinimaKissvmValuesValue:);
  methods[16].selector = @selector(getValueWithNSString:);
  methods[17].selector = @selector(getValueTypeWithNSString:);
  methods[18].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mNumber_", "LOrgMinimaObjectsBaseMiniNumber;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mData_", "LOrgMinimaObjectsBaseMiniData;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "isEqual", "LOrgMinimaKissvmValuesValue;", "isLess", "isLessEqual", "isMore", "isMoreEqual", "add", "sub", "mult", "div", "getValue", "LNSString;", "getValueType", "main", "[LNSString;" };
  static const J2ObjcClassInfo _OrgMinimaKissvmValuesValue = { "Value", "org.minima.kissvm.values", ptrTable, methods, fields, 7, 0x401, 19, 2, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmValuesValue;
}

@end

void OrgMinimaKissvmValuesValue_init(OrgMinimaKissvmValuesValue *self) {
  NSObject_init(self);
}

OrgMinimaKissvmValuesValue *OrgMinimaKissvmValuesValue_getValueWithNSString_(NSString *zValue) {
  OrgMinimaKissvmValuesValue_initialize();
  if ([((NSString *) nil_chk(zValue)) java_hasPrefix:@"["]) {
    NSString *sc = [zValue java_substring:1 endIndex:[zValue java_length] - 1];
    return new_OrgMinimaKissvmValuesScriptValue_initWithNSString_(sc);
  }
  else if ([zValue java_hasPrefix:@"0x"]) {
    return new_OrgMinimaKissvmValuesHEXValue_initWithNSString_(zValue);
  }
  else if ([zValue isEqual:@"TRUE"]) {
    return JreLoadStatic(OrgMinimaKissvmValuesBooleanValue, TRUE);
  }
  else if ([zValue isEqual:@"FALSE"]) {
    return JreLoadStatic(OrgMinimaKissvmValuesBooleanValue, FALSE);
  }
  else {
    return new_OrgMinimaKissvmValuesNumberValue_initWithNSString_(zValue);
  }
}

jint OrgMinimaKissvmValuesValue_getValueTypeWithNSString_(NSString *zValue) {
  OrgMinimaKissvmValuesValue_initialize();
  if ([((NSString *) nil_chk(zValue)) java_hasPrefix:@"["]) {
    return OrgMinimaKissvmValuesScriptValue_VALUE_SCRIPT;
  }
  else if ([zValue java_hasPrefix:@"0x"]) {
    return OrgMinimaKissvmValuesHEXValue_VALUE_HEX;
  }
  else if ([zValue isEqual:@"TRUE"]) {
    return OrgMinimaKissvmValuesBooleanValue_VALUE_BOOLEAN;
  }
  else if ([zValue isEqual:@"FALSE"]) {
    return OrgMinimaKissvmValuesBooleanValue_VALUE_BOOLEAN;
  }
  else if (OrgMinimaKissvmTokensToken_isNumericWithNSString_(zValue)) {
    return OrgMinimaKissvmValuesNumberValue_VALUE_NUMBER;
  }
  else {
    return -99;
  }
}

void OrgMinimaKissvmValuesValue_mainWithNSStringArray_(IOSObjectArray *zArgs) {
  OrgMinimaKissvmValuesValue_initialize();
  OrgMinimaKissvmValuesValue *vv = new_OrgMinimaKissvmValuesHEXValue_initWithNSString_(@"0xF184A0A4295AD508CEC610C7430CE328F184A0A4295AD508CEC610C7430CE328");
  OrgMinimaObjectsBaseMiniNumber *q = new_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"1");
  OrgMinimaObjectsBaseMiniNumber *e = new_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"3");
  OrgMinimaObjectsBaseMiniNumber *t = [q divWithOrgMinimaObjectsBaseMiniNumber:e];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithId:vv];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmValuesValue)
