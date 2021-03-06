//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/json/parser/Yytoken.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "org/minima/utils/json/parser/Yytoken.h"

@implementation OrgMinimaUtilsJsonParserYytoken

- (instancetype)initWithInt:(jint)type
                     withId:(id)value {
  OrgMinimaUtilsJsonParserYytoken_initWithInt_withId_(self, type, value);
  return self;
}

- (NSString *)description {
  JavaLangStringBuffer *sb = new_JavaLangStringBuffer_init();
  switch (type_) {
    case OrgMinimaUtilsJsonParserYytoken_TYPE_VALUE:
    (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([sb appendWithNSString:@"VALUE("])) appendWithId:value_])) appendWithNSString:@")"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_LEFT_BRACE:
    (void) [sb appendWithNSString:@"LEFT BRACE({)"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_RIGHT_BRACE:
    (void) [sb appendWithNSString:@"RIGHT BRACE(})"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_LEFT_SQUARE:
    (void) [sb appendWithNSString:@"LEFT SQUARE([)"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_RIGHT_SQUARE:
    (void) [sb appendWithNSString:@"RIGHT SQUARE(])"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_COMMA:
    (void) [sb appendWithNSString:@"COMMA(,)"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_COLON:
    (void) [sb appendWithNSString:@"COLON(:)"];
    break;
    case OrgMinimaUtilsJsonParserYytoken_TYPE_EOF:
    (void) [sb appendWithNSString:@"END OF FILE"];
    break;
  }
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withId:);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_VALUE", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_VALUE, 0x19, -1, -1, -1, -1 },
    { "TYPE_LEFT_BRACE", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_LEFT_BRACE, 0x19, -1, -1, -1, -1 },
    { "TYPE_RIGHT_BRACE", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_RIGHT_BRACE, 0x19, -1, -1, -1, -1 },
    { "TYPE_LEFT_SQUARE", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_LEFT_SQUARE, 0x19, -1, -1, -1, -1 },
    { "TYPE_RIGHT_SQUARE", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_RIGHT_SQUARE, 0x19, -1, -1, -1, -1 },
    { "TYPE_COMMA", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_COMMA, 0x19, -1, -1, -1, -1 },
    { "TYPE_COLON", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_COLON, 0x19, -1, -1, -1, -1 },
    { "TYPE_EOF", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserYytoken_TYPE_EOF, 0x19, -1, -1, -1, -1 },
    { "type_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILNSObject;", "toString" };
  static const J2ObjcClassInfo _OrgMinimaUtilsJsonParserYytoken = { "Yytoken", "org.minima.utils.json.parser", ptrTable, methods, fields, 7, 0x1, 2, 10, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsJsonParserYytoken;
}

@end

void OrgMinimaUtilsJsonParserYytoken_initWithInt_withId_(OrgMinimaUtilsJsonParserYytoken *self, jint type, id value) {
  NSObject_init(self);
  self->type_ = 0;
  self->value_ = nil;
  self->type_ = type;
  self->value_ = value;
}

OrgMinimaUtilsJsonParserYytoken *new_OrgMinimaUtilsJsonParserYytoken_initWithInt_withId_(jint type, id value) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonParserYytoken, initWithInt_withId_, type, value)
}

OrgMinimaUtilsJsonParserYytoken *create_OrgMinimaUtilsJsonParserYytoken_initWithInt_withId_(jint type, id value) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonParserYytoken, initWithInt_withId_, type, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsJsonParserYytoken)
