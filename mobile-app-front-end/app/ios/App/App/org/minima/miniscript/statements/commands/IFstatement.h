//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/statements/commands/IFstatement.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptStatementsCommandsIFstatement")
#ifdef RESTRICT_OrgMinimaMiniscriptStatementsCommandsIFstatement
#define INCLUDE_ALL_OrgMinimaMiniscriptStatementsCommandsIFstatement 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptStatementsCommandsIFstatement 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptStatementsCommandsIFstatement

#if !defined (OrgMinimaMiniscriptStatementsCommandsIFstatement_) && (INCLUDE_ALL_OrgMinimaMiniscriptStatementsCommandsIFstatement || defined(INCLUDE_OrgMinimaMiniscriptStatementsCommandsIFstatement))
#define OrgMinimaMiniscriptStatementsCommandsIFstatement_

#define RESTRICT_OrgMinimaMiniscriptStatementsStatement 1
#define INCLUDE_OrgMinimaMiniscriptStatementsStatement 1
#include "org/minima/miniscript/statements/Statement.h"

@class JavaUtilArrayList;
@class OrgMinimaMiniscriptContract;
@class OrgMinimaMiniscriptStatementsStatementBlock;
@protocol OrgMinimaMiniscriptExpressionsExpression;

@interface OrgMinimaMiniscriptStatementsCommandsIFstatement : NSObject < OrgMinimaMiniscriptStatementsStatement > {
 @public
  JavaUtilArrayList *mConditions_;
  JavaUtilArrayList *mActions_;
}

#pragma mark Public

- (instancetype)init;

- (void)addConditionWithOrgMinimaMiniscriptExpressionsExpression:(id<OrgMinimaMiniscriptExpressionsExpression>)zCondition
                 withOrgMinimaMiniscriptStatementsStatementBlock:(OrgMinimaMiniscriptStatementsStatementBlock *)zCodeBlock;

- (void)executeWithOrgMinimaMiniscriptContract:(OrgMinimaMiniscriptContract *)zContract;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptStatementsCommandsIFstatement)

J2OBJC_FIELD_SETTER(OrgMinimaMiniscriptStatementsCommandsIFstatement, mConditions_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgMinimaMiniscriptStatementsCommandsIFstatement, mActions_, JavaUtilArrayList *)

FOUNDATION_EXPORT void OrgMinimaMiniscriptStatementsCommandsIFstatement_init(OrgMinimaMiniscriptStatementsCommandsIFstatement *self);

FOUNDATION_EXPORT OrgMinimaMiniscriptStatementsCommandsIFstatement *new_OrgMinimaMiniscriptStatementsCommandsIFstatement_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptStatementsCommandsIFstatement *create_OrgMinimaMiniscriptStatementsCommandsIFstatement_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptStatementsCommandsIFstatement)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptStatementsCommandsIFstatement")
