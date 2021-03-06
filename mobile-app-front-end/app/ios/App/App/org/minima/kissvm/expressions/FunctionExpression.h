//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/expressions/FunctionExpression.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaKissvmExpressionsFunctionExpression")
#ifdef RESTRICT_OrgMinimaKissvmExpressionsFunctionExpression
#define INCLUDE_ALL_OrgMinimaKissvmExpressionsFunctionExpression 0
#else
#define INCLUDE_ALL_OrgMinimaKissvmExpressionsFunctionExpression 1
#endif
#undef RESTRICT_OrgMinimaKissvmExpressionsFunctionExpression

#if !defined (OrgMinimaKissvmExpressionsFunctionExpression_) && (INCLUDE_ALL_OrgMinimaKissvmExpressionsFunctionExpression || defined(INCLUDE_OrgMinimaKissvmExpressionsFunctionExpression))
#define OrgMinimaKissvmExpressionsFunctionExpression_

#define RESTRICT_OrgMinimaKissvmExpressionsExpression 1
#define INCLUDE_OrgMinimaKissvmExpressionsExpression 1
#include "org/minima/kissvm/expressions/Expression.h"

@class OrgMinimaKissvmContract;
@class OrgMinimaKissvmFunctionsMinimaFunction;
@class OrgMinimaKissvmValuesValue;

@interface OrgMinimaKissvmExpressionsFunctionExpression : NSObject < OrgMinimaKissvmExpressionsExpression > {
 @public
  OrgMinimaKissvmFunctionsMinimaFunction *mFunction_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaKissvmFunctionsMinimaFunction:(OrgMinimaKissvmFunctionsMinimaFunction *)zFunction;

- (OrgMinimaKissvmValuesValue *)getValueWithOrgMinimaKissvmContract:(OrgMinimaKissvmContract *)zContract;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaKissvmExpressionsFunctionExpression)

J2OBJC_FIELD_SETTER(OrgMinimaKissvmExpressionsFunctionExpression, mFunction_, OrgMinimaKissvmFunctionsMinimaFunction *)

FOUNDATION_EXPORT void OrgMinimaKissvmExpressionsFunctionExpression_initWithOrgMinimaKissvmFunctionsMinimaFunction_(OrgMinimaKissvmExpressionsFunctionExpression *self, OrgMinimaKissvmFunctionsMinimaFunction *zFunction);

FOUNDATION_EXPORT OrgMinimaKissvmExpressionsFunctionExpression *new_OrgMinimaKissvmExpressionsFunctionExpression_initWithOrgMinimaKissvmFunctionsMinimaFunction_(OrgMinimaKissvmFunctionsMinimaFunction *zFunction) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaKissvmExpressionsFunctionExpression *create_OrgMinimaKissvmExpressionsFunctionExpression_initWithOrgMinimaKissvmFunctionsMinimaFunction_(OrgMinimaKissvmFunctionsMinimaFunction *zFunction);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaKissvmExpressionsFunctionExpression)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaKissvmExpressionsFunctionExpression")
