//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/bretty/TreeNode.java
//

#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/minima/utils/bretty/TreeNode.h"

@interface OrgMinimaUtilsBrettyTreeNode () {
 @public
  NSString *name_;
  id<JavaUtilList> children_;
}

@end

J2OBJC_FIELD_SETTER(OrgMinimaUtilsBrettyTreeNode, name_, NSString *)
J2OBJC_FIELD_SETTER(OrgMinimaUtilsBrettyTreeNode, children_, id<JavaUtilList>)

@implementation OrgMinimaUtilsBrettyTreeNode

- (instancetype)initWithNSString:(NSString *)name {
  OrgMinimaUtilsBrettyTreeNode_initWithNSString_(self, name);
  return self;
}

- (void)addChildWithOrgMinimaUtilsBrettyTreeNode:(OrgMinimaUtilsBrettyTreeNode *)child {
  [((id<JavaUtilList>) nil_chk(self->children_)) addWithId:child];
}

- (NSString *)name {
  return self->name_;
}

- (id<JavaUtilList>)children {
  return self->children_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(addChildWithOrgMinimaUtilsBrettyTreeNode:);
  methods[2].selector = @selector(name);
  methods[3].selector = @selector(children);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "children_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "addChild", "LOrgMinimaUtilsBrettyTreeNode;", "()Ljava/util/List<Lorg/minima/utils/bretty/TreeNode;>;", "Ljava/util/List<Lorg/minima/utils/bretty/TreeNode;>;" };
  static const J2ObjcClassInfo _OrgMinimaUtilsBrettyTreeNode = { "TreeNode", "org.minima.utils.bretty", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsBrettyTreeNode;
}

@end

void OrgMinimaUtilsBrettyTreeNode_initWithNSString_(OrgMinimaUtilsBrettyTreeNode *self, NSString *name) {
  NSObject_init(self);
  self->name_ = name;
  self->children_ = new_JavaUtilArrayList_init();
}

OrgMinimaUtilsBrettyTreeNode *new_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(NSString *name) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsBrettyTreeNode, initWithNSString_, name)
}

OrgMinimaUtilsBrettyTreeNode *create_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(NSString *name) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsBrettyTreeNode, initWithNSString_, name)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsBrettyTreeNode)
