//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/json/parser/ContainerFactory.java
//

#include "J2ObjC_source.h"
#include "org/minima/utils/json/parser/ContainerFactory.h"

@interface OrgMinimaUtilsJsonParserContainerFactory : NSObject

@end

@implementation OrgMinimaUtilsJsonParserContainerFactory

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaUtilMap;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(createObjectContainer);
  methods[1].selector = @selector(creatArrayContainer);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _OrgMinimaUtilsJsonParserContainerFactory = { "ContainerFactory", "org.minima.utils.json.parser", NULL, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsJsonParserContainerFactory;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgMinimaUtilsJsonParserContainerFactory)
