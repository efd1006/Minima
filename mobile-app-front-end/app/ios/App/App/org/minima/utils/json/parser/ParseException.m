//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/json/parser/ParseException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/StringBuffer.h"
#include "org/minima/utils/json/parser/ParseException.h"

@interface OrgMinimaUtilsJsonParserParseException () {
 @public
  jint errorType_;
  id unexpectedObject_;
  jint position_;
}

@end

J2OBJC_FIELD_SETTER(OrgMinimaUtilsJsonParserParseException, unexpectedObject_, id)

inline jlong OrgMinimaUtilsJsonParserParseException_get_serialVersionUID(void);
#define OrgMinimaUtilsJsonParserParseException_serialVersionUID -7880698968187728547LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgMinimaUtilsJsonParserParseException, serialVersionUID, jlong)

@implementation OrgMinimaUtilsJsonParserParseException

- (instancetype)initWithInt:(jint)errorType {
  OrgMinimaUtilsJsonParserParseException_initWithInt_(self, errorType);
  return self;
}

- (instancetype)initWithInt:(jint)errorType
                     withId:(id)unexpectedObject {
  OrgMinimaUtilsJsonParserParseException_initWithInt_withId_(self, errorType, unexpectedObject);
  return self;
}

- (instancetype)initWithInt:(jint)position
                    withInt:(jint)errorType
                     withId:(id)unexpectedObject {
  OrgMinimaUtilsJsonParserParseException_initWithInt_withInt_withId_(self, position, errorType, unexpectedObject);
  return self;
}

- (jint)getErrorType {
  return errorType_;
}

- (void)setErrorTypeWithInt:(jint)errorType {
  self->errorType_ = errorType;
}

- (jint)getPosition {
  return position_;
}

- (void)setPositionWithInt:(jint)position {
  self->position_ = position;
}

- (id)getUnexpectedObject {
  return unexpectedObject_;
}

- (void)setUnexpectedObjectWithId:(id)unexpectedObject {
  self->unexpectedObject_ = unexpectedObject;
}

- (NSString *)getMessage {
  JavaLangStringBuffer *sb = new_JavaLangStringBuffer_init();
  switch (errorType_) {
    case OrgMinimaUtilsJsonParserParseException_ERROR_UNEXPECTED_CHAR:
    (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([sb appendWithNSString:@"Unexpected character ("])) appendWithId:unexpectedObject_])) appendWithNSString:@") at position "])) appendWithInt:position_])) appendWithNSString:@"."];
    break;
    case OrgMinimaUtilsJsonParserParseException_ERROR_UNEXPECTED_TOKEN:
    (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([sb appendWithNSString:@"Unexpected token "])) appendWithId:unexpectedObject_])) appendWithNSString:@" at position "])) appendWithInt:position_])) appendWithNSString:@"."];
    break;
    case OrgMinimaUtilsJsonParserParseException_ERROR_UNEXPECTED_EXCEPTION:
    (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([sb appendWithNSString:@"Unexpected exception at position "])) appendWithInt:position_])) appendWithNSString:@": "])) appendWithId:unexpectedObject_];
    break;
    default:
    (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([sb appendWithNSString:@"Unkown error at position "])) appendWithInt:position_])) appendWithNSString:@"."];
    break;
  }
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(initWithInt:withId:);
  methods[2].selector = @selector(initWithInt:withInt:withId:);
  methods[3].selector = @selector(getErrorType);
  methods[4].selector = @selector(setErrorTypeWithInt:);
  methods[5].selector = @selector(getPosition);
  methods[6].selector = @selector(setPositionWithInt:);
  methods[7].selector = @selector(getUnexpectedObject);
  methods[8].selector = @selector(setUnexpectedObjectWithId:);
  methods[9].selector = @selector(getMessage);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgMinimaUtilsJsonParserParseException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "ERROR_UNEXPECTED_CHAR", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserParseException_ERROR_UNEXPECTED_CHAR, 0x19, -1, -1, -1, -1 },
    { "ERROR_UNEXPECTED_TOKEN", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserParseException_ERROR_UNEXPECTED_TOKEN, 0x19, -1, -1, -1, -1 },
    { "ERROR_UNEXPECTED_EXCEPTION", "I", .constantValue.asInt = OrgMinimaUtilsJsonParserParseException_ERROR_UNEXPECTED_EXCEPTION, 0x19, -1, -1, -1, -1 },
    { "errorType_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "unexpectedObject_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "position_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "ILNSObject;", "IILNSObject;", "setErrorType", "setPosition", "setUnexpectedObject", "LNSObject;" };
  static const J2ObjcClassInfo _OrgMinimaUtilsJsonParserParseException = { "ParseException", "org.minima.utils.json.parser", ptrTable, methods, fields, 7, 0x1, 10, 7, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsJsonParserParseException;
}

@end

void OrgMinimaUtilsJsonParserParseException_initWithInt_(OrgMinimaUtilsJsonParserParseException *self, jint errorType) {
  OrgMinimaUtilsJsonParserParseException_initWithInt_withInt_withId_(self, -1, errorType, nil);
}

OrgMinimaUtilsJsonParserParseException *new_OrgMinimaUtilsJsonParserParseException_initWithInt_(jint errorType) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonParserParseException, initWithInt_, errorType)
}

OrgMinimaUtilsJsonParserParseException *create_OrgMinimaUtilsJsonParserParseException_initWithInt_(jint errorType) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonParserParseException, initWithInt_, errorType)
}

void OrgMinimaUtilsJsonParserParseException_initWithInt_withId_(OrgMinimaUtilsJsonParserParseException *self, jint errorType, id unexpectedObject) {
  OrgMinimaUtilsJsonParserParseException_initWithInt_withInt_withId_(self, -1, errorType, unexpectedObject);
}

OrgMinimaUtilsJsonParserParseException *new_OrgMinimaUtilsJsonParserParseException_initWithInt_withId_(jint errorType, id unexpectedObject) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonParserParseException, initWithInt_withId_, errorType, unexpectedObject)
}

OrgMinimaUtilsJsonParserParseException *create_OrgMinimaUtilsJsonParserParseException_initWithInt_withId_(jint errorType, id unexpectedObject) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonParserParseException, initWithInt_withId_, errorType, unexpectedObject)
}

void OrgMinimaUtilsJsonParserParseException_initWithInt_withInt_withId_(OrgMinimaUtilsJsonParserParseException *self, jint position, jint errorType, id unexpectedObject) {
  JavaLangException_init(self);
  self->position_ = position;
  self->errorType_ = errorType;
  self->unexpectedObject_ = unexpectedObject;
}

OrgMinimaUtilsJsonParserParseException *new_OrgMinimaUtilsJsonParserParseException_initWithInt_withInt_withId_(jint position, jint errorType, id unexpectedObject) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonParserParseException, initWithInt_withInt_withId_, position, errorType, unexpectedObject)
}

OrgMinimaUtilsJsonParserParseException *create_OrgMinimaUtilsJsonParserParseException_initWithInt_withInt_withId_(jint position, jint errorType, id unexpectedObject) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonParserParseException, initWithInt_withInt_withId_, position, errorType, unexpectedObject)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsJsonParserParseException)
