//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/statements/StatementBlock.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/minima/miniscript/Contract.h"
#include "org/minima/miniscript/statements/Statement.h"
#include "org/minima/miniscript/statements/StatementBlock.h"

@implementation OrgMinimaMiniscriptStatementsStatementBlock

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)zStatements {
  OrgMinimaMiniscriptStatementsStatementBlock_initWithJavaUtilList_(self, zStatements);
  return self;
}

- (void)runWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract {
  for (id<OrgMinimaMiniscriptStatementsStatement> __strong stat in nil_chk(mStatements_)) {
    if ([((OrgMinimaMiniscriptContract *) nil_chk(zContract)) isSuccessSet]) {
      return;
    }
    [zContract countInstructions];
    [((id<OrgMinimaMiniscriptStatementsStatement>) nil_chk(stat)) executeWithOrgMinimaMiniscriptContract:zContract];
  }
}

- (void)dealloc {
  RELEASE_(mStatements_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilList:);
  methods[1].selector = @selector(runWithOrgMinimaMiniscriptContract:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mStatements_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilList;", "(Ljava/util/List<Lorg/minima/miniscript/statements/Statement;>;)V", "run", "LOrgMinimaMiniscriptContract;", "LOrgMinimaMiniscriptExceptionsExecutionException;", "Ljava/util/List<Lorg/minima/miniscript/statements/Statement;>;" };
  static const J2ObjcClassInfo _OrgMinimaMiniscriptStatementsStatementBlock = { "StatementBlock", "org.minima.miniscript.statements", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgMinimaMiniscriptStatementsStatementBlock;
}

@end

void OrgMinimaMiniscriptStatementsStatementBlock_initWithJavaUtilList_(OrgMinimaMiniscriptStatementsStatementBlock *self, id<JavaUtilList> zStatements) {
  NSObject_init(self);
  JreStrongAssign(&self->mStatements_, zStatements);
}

OrgMinimaMiniscriptStatementsStatementBlock *new_OrgMinimaMiniscriptStatementsStatementBlock_initWithJavaUtilList_(id<JavaUtilList> zStatements) {
  J2OBJC_NEW_IMPL(OrgMinimaMiniscriptStatementsStatementBlock, initWithJavaUtilList_, zStatements)
}

OrgMinimaMiniscriptStatementsStatementBlock *create_OrgMinimaMiniscriptStatementsStatementBlock_initWithJavaUtilList_(id<JavaUtilList> zStatements) {
  J2OBJC_CREATE_IMPL(OrgMinimaMiniscriptStatementsStatementBlock, initWithJavaUtilList_, zStatements)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaMiniscriptStatementsStatementBlock)
