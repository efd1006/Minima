//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/json/parser/ContentHandler.java
//

#include "J2ObjC_source.h"
#include "org/minima/utils/json/parser/ContentHandler.h"

@interface OrgMinimaUtilsJsonParserContentHandler : NSObject

@end

@implementation OrgMinimaUtilsJsonParserContentHandler

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, 1, 2, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, 3, 4, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(startJSON);
  methods[1].selector = @selector(endJSON);
  methods[2].selector = @selector(startObject);
  methods[3].selector = @selector(endObject);
  methods[4].selector = @selector(startObjectEntryWithNSString:);
  methods[5].selector = @selector(endObjectEntry);
  methods[6].selector = @selector(startArray);
  methods[7].selector = @selector(endArray);
  methods[8].selector = @selector(primitiveWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgMinimaUtilsJsonParserParseException;LJavaIoIOException;", "startObjectEntry", "LNSString;", "primitive", "LNSObject;" };
  static const J2ObjcClassInfo _OrgMinimaUtilsJsonParserContentHandler = { "ContentHandler", "org.minima.utils.json.parser", ptrTable, methods, NULL, 7, 0x609, 9, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsJsonParserContentHandler;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgMinimaUtilsJsonParserContentHandler)
