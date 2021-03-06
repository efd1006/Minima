//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/BaseConverter.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/ArithmeticException.h"
#include "java/lang/Character.h"
#include "java/lang/System.h"
#include "org/minima/utils/BaseConverter.h"

@interface OrgMinimaUtilsBaseConverter ()

+ (jint)findChar32WithChar:(jchar)zChar;

@end

inline IOSCharArray *OrgMinimaUtilsBaseConverter_get_HEX16ARRAY(void);
static IOSCharArray *OrgMinimaUtilsBaseConverter_HEX16ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaUtilsBaseConverter, HEX16ARRAY, IOSCharArray *)

inline NSString *OrgMinimaUtilsBaseConverter_get_HEX32ARRAY(void);
static NSString *OrgMinimaUtilsBaseConverter_HEX32ARRAY = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaUtilsBaseConverter, HEX32ARRAY, NSString *)

__attribute__((unused)) static jint OrgMinimaUtilsBaseConverter_findChar32WithChar_(jchar zChar);

J2OBJC_INITIALIZED_DEFN(OrgMinimaUtilsBaseConverter)

@implementation OrgMinimaUtilsBaseConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaUtilsBaseConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)encode16WithByteArray:(IOSByteArray *)bytes {
  return OrgMinimaUtilsBaseConverter_encode16WithByteArray_(bytes);
}

+ (IOSByteArray *)decode16WithNSString:(NSString *)zHex {
  return OrgMinimaUtilsBaseConverter_decode16WithNSString_(zHex);
}

+ (jint)findChar32WithChar:(jchar)zChar {
  return OrgMinimaUtilsBaseConverter_findChar32WithChar_(zChar);
}

+ (NSString *)encode32WithByteArray:(IOSByteArray *)zData {
  return OrgMinimaUtilsBaseConverter_encode32WithByteArray_(zData);
}

+ (IOSByteArray *)decode32WithNSString:(NSString *)zHex32 {
  return OrgMinimaUtilsBaseConverter_decode32WithNSString_(zHex32);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs {
  OrgMinimaUtilsBaseConverter_mainWithNSStringArray_(zArgs);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 1, 7, -1, -1, -1 },
    { NULL, "[B", 0x9, 8, 3, 7, -1, -1, -1 },
    { NULL, "V", 0x9, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(encode16WithByteArray:);
  methods[2].selector = @selector(decode16WithNSString:);
  methods[3].selector = @selector(findChar32WithChar:);
  methods[4].selector = @selector(encode32WithByteArray:);
  methods[5].selector = @selector(decode32WithNSString:);
  methods[6].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HEX16ARRAY", "[C", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "HEX32ARRAY", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
  };
  static const void *ptrTable[] = { "encode16", "[B", "decode16", "LNSString;", "findChar32", "C", "encode32", "LJavaLangArithmeticException;", "decode32", "main", "[LNSString;", &OrgMinimaUtilsBaseConverter_HEX16ARRAY, &OrgMinimaUtilsBaseConverter_HEX32ARRAY };
  static const J2ObjcClassInfo _OrgMinimaUtilsBaseConverter = { "BaseConverter", "org.minima.utils", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsBaseConverter;
}

+ (void)initialize {
  if (self == [OrgMinimaUtilsBaseConverter class]) {
    OrgMinimaUtilsBaseConverter_HEX16ARRAY = [@"0123456789ABCDEF" java_toCharArray];
    J2OBJC_SET_INITIALIZED(OrgMinimaUtilsBaseConverter)
  }
}

@end

void OrgMinimaUtilsBaseConverter_init(OrgMinimaUtilsBaseConverter *self) {
  NSObject_init(self);
}

OrgMinimaUtilsBaseConverter *new_OrgMinimaUtilsBaseConverter_init() {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsBaseConverter, init)
}

OrgMinimaUtilsBaseConverter *create_OrgMinimaUtilsBaseConverter_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsBaseConverter, init)
}

NSString *OrgMinimaUtilsBaseConverter_encode16WithByteArray_(IOSByteArray *bytes) {
  OrgMinimaUtilsBaseConverter_initialize();
  IOSCharArray *hexChars = [IOSCharArray newArrayWithLength:((IOSByteArray *) nil_chk(bytes))->size_ * 2];
  for (jint j = 0; j < bytes->size_; j++) {
    jint v = IOSByteArray_Get(bytes, j) & (jint) 0xFF;
    *IOSCharArray_GetRef(hexChars, j * 2) = IOSCharArray_Get(nil_chk(OrgMinimaUtilsBaseConverter_HEX16ARRAY), JreURShift32(v, 4));
    *IOSCharArray_GetRef(hexChars, j * 2 + 1) = IOSCharArray_Get(OrgMinimaUtilsBaseConverter_HEX16ARRAY, v & (jint) 0x0F);
  }
  return JreStrcat("$$", @"0x", [NSString java_stringWithCharacters:hexChars]);
}

IOSByteArray *OrgMinimaUtilsBaseConverter_decode16WithNSString_(NSString *zHex) {
  OrgMinimaUtilsBaseConverter_initialize();
  NSString *hex = zHex;
  if ([((NSString *) nil_chk(hex)) java_hasPrefix:@"0x"]) {
    hex = [((NSString *) nil_chk(zHex)) java_substring:2];
  }
  hex = [((NSString *) nil_chk(hex)) uppercaseString];
  jint len = [((NSString *) nil_chk(hex)) java_length];
  if (len % 2 != 0) {
    hex = JreStrcat("C$", '0', hex);
    len = [hex java_length];
  }
  IOSByteArray *data = [IOSByteArray newArrayWithLength:len / 2];
  for (jint i = 0; i < len; i += 2) {
    *IOSByteArray_GetRef(data, i / 2) = (jbyte) ((JreLShift32(JavaLangCharacter_digitWithChar_withInt_([hex charAtWithInt:i], 16), 4)) + JavaLangCharacter_digitWithChar_withInt_([hex charAtWithInt:i + 1], 16));
  }
  return data;
}

jint OrgMinimaUtilsBaseConverter_findChar32WithChar_(jchar zChar) {
  OrgMinimaUtilsBaseConverter_initialize();
  return [((NSString *) nil_chk(OrgMinimaUtilsBaseConverter_HEX32ARRAY)) java_indexOf:zChar];
}

NSString *OrgMinimaUtilsBaseConverter_encode32WithByteArray_(IOSByteArray *zData) {
  OrgMinimaUtilsBaseConverter_initialize();
  if (((IOSByteArray *) nil_chk(zData))->size_ % 5 != 0) {
    @throw new_JavaLangArithmeticException_initWithNSString_(@"Minima Address Encode32 data MUST be multiples of 5 in length");
  }
  jint rounds = zData->size_ / 5;
  jint len = rounds * 8;
  IOSIntArray *data32 = [IOSIntArray newArrayWithLength:len];
  NSString *hex32 = @"";
  jint counter = 0;
  jint currByte;
  jint digit;
  for (jint i = 0; i < rounds; i++) {
    jint start = i * 8;
    currByte = IOSByteArray_Get(zData, counter++) & 255;
    *IOSIntArray_GetRef(data32, start) = JreRShift32(currByte, 3);
    digit = JreLShift32((currByte & 7), 2);
    currByte = IOSByteArray_Get(zData, counter++) & 255;
    *IOSIntArray_GetRef(data32, start + 1) = digit | (JreRShift32(currByte, 6));
    *IOSIntArray_GetRef(data32, start + 2) = (JreRShift32(currByte, 1)) & 31;
    digit = JreLShift32((currByte & 1), 4);
    currByte = IOSByteArray_Get(zData, counter++) & 255;
    *IOSIntArray_GetRef(data32, start + 3) = digit | (JreRShift32(currByte, 4));
    digit = JreLShift32((currByte & 15), 1);
    currByte = IOSByteArray_Get(zData, counter++) & 255;
    *IOSIntArray_GetRef(data32, start + 4) = digit | (JreRShift32(currByte, 7));
    *IOSIntArray_GetRef(data32, start + 5) = (JreRShift32(currByte, 2)) & 31;
    digit = JreLShift32((currByte & 3), 3);
    currByte = IOSByteArray_Get(zData, counter++) & 255;
    *IOSIntArray_GetRef(data32, start + 6) = digit | (JreRShift32(currByte, 5));
    *IOSIntArray_GetRef(data32, start + 7) = currByte & 31;
  }
  for (jint i = 0; i < len; i++) {
    *IOSIntArray_GetRef(data32, i) = IOSIntArray_Get(data32, i) & 255;
    (void) JreStrAppendStrong(&hex32, "C", [((NSString *) nil_chk(OrgMinimaUtilsBaseConverter_HEX32ARRAY)) charAtWithInt:IOSIntArray_Get(data32, i)]);
  }
  return hex32;
}

IOSByteArray *OrgMinimaUtilsBaseConverter_decode32WithNSString_(NSString *zHex32) {
  OrgMinimaUtilsBaseConverter_initialize();
  NSString *hex = [((NSString *) nil_chk(zHex32)) uppercaseString];
  jint strlen = [((NSString *) nil_chk(hex)) java_length];
  if (strlen % 8 != 0) {
    @throw new_JavaLangArithmeticException_initWithNSString_(@"Minima Address Base 32 String must be multiple of 8 in length");
  }
  jint rounds = strlen / 8;
  jint bytelen = rounds * 5;
  IOSIntArray *digits = [IOSIntArray newArrayWithLength:strlen];
  for (jint i = 0; i < strlen; i++) {
    *IOSIntArray_GetRef(digits, i) = OrgMinimaUtilsBaseConverter_findChar32WithChar_([hex charAtWithInt:i]);
  }
  IOSByteArray *redata = [IOSByteArray newArrayWithLength:bytelen];
  for (jint i = 0; i < rounds; i++) {
    jint sdata = i * 5;
    jint sdigi = i * 8;
    *IOSByteArray_GetRef(redata, sdata) = (jbyte) (((JreLShift32(IOSIntArray_Get(digits, sdigi), 3)) | (JreRShift32(IOSIntArray_Get(digits, sdigi + 1), 2))) & 255);
    *IOSByteArray_GetRef(redata, sdata + 1) = (jbyte) (((JreLShift32(IOSIntArray_Get(digits, sdigi + 1), 6)) | (JreLShift32(IOSIntArray_Get(digits, sdigi + 2), 1)) | (JreRShift32(IOSIntArray_Get(digits, sdigi + 3), 4))) & 255);
    *IOSByteArray_GetRef(redata, sdata + 2) = (jbyte) (((JreLShift32(IOSIntArray_Get(digits, sdigi + 3), 4)) | (JreRShift32(IOSIntArray_Get(digits, sdigi + 4), 1))) & 255);
    *IOSByteArray_GetRef(redata, sdata + 3) = (jbyte) (((JreLShift32(IOSIntArray_Get(digits, sdigi + 4), 7)) | (JreLShift32(IOSIntArray_Get(digits, sdigi + 5), 2)) | (JreRShift32(IOSIntArray_Get(digits, sdigi + 6), 3))) & 255);
    *IOSByteArray_GetRef(redata, sdata + 4) = (jbyte) (((JreLShift32(IOSIntArray_Get(digits, sdigi + 6), 5)) | IOSIntArray_Get(digits, sdigi + 7)) & 255);
  }
  return redata;
}

void OrgMinimaUtilsBaseConverter_mainWithNSStringArray_(IOSObjectArray *zArgs) {
  OrgMinimaUtilsBaseConverter_initialize();
  IOSByteArray *data = [IOSByteArray newArrayWithLength:10];
  *IOSByteArray_GetRef(data, 0) = (jbyte) 1;
  *IOSByteArray_GetRef(data, 1) = (jbyte) 13;
  *IOSByteArray_GetRef(data, 2) = (jbyte) 34;
  *IOSByteArray_GetRef(data, 3) = (jbyte) 44;
  *IOSByteArray_GetRef(data, 4) = (jbyte) 33;
  *IOSByteArray_GetRef(data, 5) = (jbyte) 56;
  *IOSByteArray_GetRef(data, 6) = (jbyte) 99;
  *IOSByteArray_GetRef(data, 7) = (jbyte) 76;
  *IOSByteArray_GetRef(data, 8) = (jbyte) 9;
  *IOSByteArray_GetRef(data, 9) = (jbyte) 12;
  NSString *tt = OrgMinimaUtilsBaseConverter_encode32WithByteArray_(data);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"32 ", tt)];
  IOSByteArray *reda = OrgMinimaUtilsBaseConverter_decode32WithNSString_(tt);
  for (jint i = 0; i < 10; i++) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("I$I", i, @") ", (IOSByteArray_Get(nil_chk(reda), i) & 255))];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsBaseConverter)
