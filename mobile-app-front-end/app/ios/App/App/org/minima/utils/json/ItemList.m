//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/json/ItemList.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/StringTokenizer.h"
#include "org/minima/utils/json/ItemList.h"

@interface OrgMinimaUtilsJsonItemList () {
 @public
  NSString *sp_;
}

@end

J2OBJC_FIELD_SETTER(OrgMinimaUtilsJsonItemList, sp_, NSString *)

@implementation OrgMinimaUtilsJsonItemList

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaUtilsJsonItemList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)s {
  OrgMinimaUtilsJsonItemList_initWithNSString_(self, s);
  return self;
}

- (instancetype)initWithNSString:(NSString *)s
                    withNSString:(NSString *)sp {
  OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_(self, s, sp);
  return self;
}

- (instancetype)initWithNSString:(NSString *)s
                    withNSString:(NSString *)sp
                     withBoolean:(jboolean)isMultiToken {
  OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_withBoolean_(self, s, sp, isMultiToken);
  return self;
}

- (id<JavaUtilList>)getItems {
  return self->items_;
}

- (IOSObjectArray *)getArray {
  return (IOSObjectArray *) cast_check([((id<JavaUtilList>) nil_chk(self->items_)) toArray], IOSClass_arrayType(NSString_class_(), 1));
}

- (void)splitWithNSString:(NSString *)s
             withNSString:(NSString *)sp
         withJavaUtilList:(id<JavaUtilList>)append
              withBoolean:(jboolean)isMultiToken {
  if (s == nil || sp == nil) return;
  if (isMultiToken) {
    JavaUtilStringTokenizer *tokens = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(s, sp);
    while ([tokens hasMoreTokens]) {
      [((id<JavaUtilList>) nil_chk(append)) addWithId:[((NSString *) nil_chk([tokens nextToken])) java_trim]];
    }
  }
  else {
    [self splitWithNSString:s withNSString:sp withJavaUtilList:append];
  }
}

- (void)splitWithNSString:(NSString *)s
             withNSString:(NSString *)sp
         withJavaUtilList:(id<JavaUtilList>)append {
  if (s == nil || sp == nil) return;
  jint pos = 0;
  jint prevPos = 0;
  do {
    prevPos = pos;
    pos = [s java_indexOfString:sp fromIndex:pos];
    if (pos == -1) break;
    [((id<JavaUtilList>) nil_chk(append)) addWithId:[((NSString *) nil_chk([s java_substring:prevPos endIndex:pos])) java_trim]];
    pos += [sp java_length];
  }
  while (pos != -1);
  [((id<JavaUtilList>) nil_chk(append)) addWithId:[((NSString *) nil_chk([s java_substring:prevPos])) java_trim]];
}

- (void)setSPWithNSString:(NSString *)sp {
  JreStrongAssign(&self->sp_, sp);
}

- (void)addWithInt:(jint)i
      withNSString:(NSString *)item {
  if (item == nil) return;
  [((id<JavaUtilList>) nil_chk(items_)) addWithInt:i withId:[item java_trim]];
}

- (void)addWithNSString:(NSString *)item {
  if (item == nil) return;
  [((id<JavaUtilList>) nil_chk(items_)) addWithId:[item java_trim]];
}

- (void)addAllWithOrgMinimaUtilsJsonItemList:(OrgMinimaUtilsJsonItemList *)list {
  [((id<JavaUtilList>) nil_chk(items_)) addAllWithJavaUtilCollection:((OrgMinimaUtilsJsonItemList *) nil_chk(list))->items_];
}

- (void)addAllWithNSString:(NSString *)s {
  [self splitWithNSString:s withNSString:sp_ withJavaUtilList:items_];
}

- (void)addAllWithNSString:(NSString *)s
              withNSString:(NSString *)sp {
  [self splitWithNSString:s withNSString:sp withJavaUtilList:items_];
}

- (void)addAllWithNSString:(NSString *)s
              withNSString:(NSString *)sp
               withBoolean:(jboolean)isMultiToken {
  [self splitWithNSString:s withNSString:sp withJavaUtilList:items_ withBoolean:isMultiToken];
}

- (NSString *)getWithInt:(jint)i {
  return (NSString *) cast_chk([((id<JavaUtilList>) nil_chk(items_)) getWithInt:i], [NSString class]);
}

- (jint)size {
  return [((id<JavaUtilList>) nil_chk(items_)) size];
}

- (NSString *)description {
  return [self toStringWithNSString:sp_];
}

- (NSString *)toStringWithNSString:(NSString *)sp {
  JavaLangStringBuffer *sb = create_JavaLangStringBuffer_init();
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(items_)) size]; i++) {
    if (i == 0) [sb appendWithId:[((id<JavaUtilList>) nil_chk(items_)) getWithInt:i]];
    else {
      [sb appendWithNSString:sp];
      [sb appendWithId:[((id<JavaUtilList>) nil_chk(items_)) getWithInt:i]];
    }
  }
  return [sb description];
}

- (void)clear {
  [((id<JavaUtilList>) nil_chk(items_)) clear];
}

- (void)reset {
  JreStrongAssign(&sp_, @",");
  [((id<JavaUtilList>) nil_chk(items_)) clear];
}

- (void)dealloc {
  RELEASE_(sp_);
  RELEASE_(items_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithNSString:withNSString:);
  methods[3].selector = @selector(initWithNSString:withNSString:withBoolean:);
  methods[4].selector = @selector(getItems);
  methods[5].selector = @selector(getArray);
  methods[6].selector = @selector(splitWithNSString:withNSString:withJavaUtilList:withBoolean:);
  methods[7].selector = @selector(splitWithNSString:withNSString:withJavaUtilList:);
  methods[8].selector = @selector(setSPWithNSString:);
  methods[9].selector = @selector(addWithInt:withNSString:);
  methods[10].selector = @selector(addWithNSString:);
  methods[11].selector = @selector(addAllWithOrgMinimaUtilsJsonItemList:);
  methods[12].selector = @selector(addAllWithNSString:);
  methods[13].selector = @selector(addAllWithNSString:withNSString:);
  methods[14].selector = @selector(addAllWithNSString:withNSString:withBoolean:);
  methods[15].selector = @selector(getWithInt:);
  methods[16].selector = @selector(size);
  methods[17].selector = @selector(description);
  methods[18].selector = @selector(toStringWithNSString:);
  methods[19].selector = @selector(clear);
  methods[20].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sp_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "items_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LNSString;", "LNSString;LNSString;Z", "split", "LNSString;LNSString;LJavaUtilList;Z", "LNSString;LNSString;LJavaUtilList;", "setSP", "add", "ILNSString;", "addAll", "LOrgMinimaUtilsJsonItemList;", "get", "I", "toString" };
  static const J2ObjcClassInfo _OrgMinimaUtilsJsonItemList = { "ItemList", "org.minima.utils.json", ptrTable, methods, fields, 7, 0x1, 21, 2, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsJsonItemList;
}

@end

void OrgMinimaUtilsJsonItemList_init(OrgMinimaUtilsJsonItemList *self) {
  NSObject_init(self);
  JreStrongAssign(&self->sp_, @",");
  JreStrongAssignAndConsume(&self->items_, new_JavaUtilArrayList_init());
}

OrgMinimaUtilsJsonItemList *new_OrgMinimaUtilsJsonItemList_init() {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonItemList, init)
}

OrgMinimaUtilsJsonItemList *create_OrgMinimaUtilsJsonItemList_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonItemList, init)
}

void OrgMinimaUtilsJsonItemList_initWithNSString_(OrgMinimaUtilsJsonItemList *self, NSString *s) {
  NSObject_init(self);
  JreStrongAssign(&self->sp_, @",");
  JreStrongAssignAndConsume(&self->items_, new_JavaUtilArrayList_init());
  [self splitWithNSString:s withNSString:self->sp_ withJavaUtilList:self->items_];
}

OrgMinimaUtilsJsonItemList *new_OrgMinimaUtilsJsonItemList_initWithNSString_(NSString *s) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonItemList, initWithNSString_, s)
}

OrgMinimaUtilsJsonItemList *create_OrgMinimaUtilsJsonItemList_initWithNSString_(NSString *s) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonItemList, initWithNSString_, s)
}

void OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_(OrgMinimaUtilsJsonItemList *self, NSString *s, NSString *sp) {
  NSObject_init(self);
  JreStrongAssign(&self->sp_, @",");
  JreStrongAssignAndConsume(&self->items_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->sp_, s);
  [self splitWithNSString:s withNSString:sp withJavaUtilList:self->items_];
}

OrgMinimaUtilsJsonItemList *new_OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_(NSString *s, NSString *sp) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonItemList, initWithNSString_withNSString_, s, sp)
}

OrgMinimaUtilsJsonItemList *create_OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_(NSString *s, NSString *sp) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonItemList, initWithNSString_withNSString_, s, sp)
}

void OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_withBoolean_(OrgMinimaUtilsJsonItemList *self, NSString *s, NSString *sp, jboolean isMultiToken) {
  NSObject_init(self);
  JreStrongAssign(&self->sp_, @",");
  JreStrongAssignAndConsume(&self->items_, new_JavaUtilArrayList_init());
  [self splitWithNSString:s withNSString:sp withJavaUtilList:self->items_ withBoolean:isMultiToken];
}

OrgMinimaUtilsJsonItemList *new_OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_withBoolean_(NSString *s, NSString *sp, jboolean isMultiToken) {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsJsonItemList, initWithNSString_withNSString_withBoolean_, s, sp, isMultiToken)
}

OrgMinimaUtilsJsonItemList *create_OrgMinimaUtilsJsonItemList_initWithNSString_withNSString_withBoolean_(NSString *s, NSString *sp, jboolean isMultiToken) {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsJsonItemList, initWithNSString_withNSString_withBoolean_, s, sp, isMultiToken)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsJsonItemList)
