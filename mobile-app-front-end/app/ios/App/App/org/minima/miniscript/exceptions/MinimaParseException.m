//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/exceptions/MinimaParseException.java
//

#include "J2ObjC_source.h"
#include "org/minima/miniscript/exceptions/MinimaException.h"
#include "org/minima/miniscript/exceptions/MinimaParseException.h"

@implementation OrgMinimaMiniscriptExceptionsMinimaParseException

- (instancetype)initWithNSString:(NSString *)zParseError {
  OrgMinimaMiniscriptExceptionsMinimaParseException_initWithNSString_(self, zParseError);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _OrgMinimaMiniscriptExceptionsMinimaParseException = { "MinimaParseException", "org.minima.miniscript.exceptions", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaMiniscriptExceptionsMinimaParseException;
}

@end

void OrgMinimaMiniscriptExceptionsMinimaParseException_initWithNSString_(OrgMinimaMiniscriptExceptionsMinimaParseException *self, NSString *zParseError) {
  OrgMinimaMiniscriptExceptionsMinimaException_initWithNSString_(self, zParseError);
}

OrgMinimaMiniscriptExceptionsMinimaParseException *new_OrgMinimaMiniscriptExceptionsMinimaParseException_initWithNSString_(NSString *zParseError) {
  J2OBJC_NEW_IMPL(OrgMinimaMiniscriptExceptionsMinimaParseException, initWithNSString_, zParseError)
}

OrgMinimaMiniscriptExceptionsMinimaParseException *create_OrgMinimaMiniscriptExceptionsMinimaParseException_initWithNSString_(NSString *zParseError) {
  J2OBJC_CREATE_IMPL(OrgMinimaMiniscriptExceptionsMinimaParseException, initWithNSString_, zParseError)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaMiniscriptExceptionsMinimaParseException)
