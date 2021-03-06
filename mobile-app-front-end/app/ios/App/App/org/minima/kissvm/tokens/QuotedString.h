//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/tokens/QuotedString.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaKissvmTokensQuotedString")
#ifdef RESTRICT_OrgMinimaKissvmTokensQuotedString
#define INCLUDE_ALL_OrgMinimaKissvmTokensQuotedString 0
#else
#define INCLUDE_ALL_OrgMinimaKissvmTokensQuotedString 1
#endif
#undef RESTRICT_OrgMinimaKissvmTokensQuotedString

#if !defined (OrgMinimaKissvmTokensQuotedString_) && (INCLUDE_ALL_OrgMinimaKissvmTokensQuotedString || defined(INCLUDE_OrgMinimaKissvmTokensQuotedString))
#define OrgMinimaKissvmTokensQuotedString_

@class IOSObjectArray;
@class JavaUtilArrayList;

@interface OrgMinimaKissvmTokensQuotedString : NSObject {
 @public
  NSString *mString_;
  NSString *mQuotedString_;
  JavaUtilArrayList *mQuotes_;
  jint mCurrentPos_;
  jint mCurrentQuote_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)zString;

- (NSString *)getDeQuotedString;

- (NSString *)getQuoteWithInt:(jint)zQuote;

- (jint)getQuotesSize;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaKissvmTokensQuotedString)

J2OBJC_FIELD_SETTER(OrgMinimaKissvmTokensQuotedString, mString_, NSString *)
J2OBJC_FIELD_SETTER(OrgMinimaKissvmTokensQuotedString, mQuotedString_, NSString *)
J2OBJC_FIELD_SETTER(OrgMinimaKissvmTokensQuotedString, mQuotes_, JavaUtilArrayList *)

FOUNDATION_EXPORT void OrgMinimaKissvmTokensQuotedString_initWithNSString_(OrgMinimaKissvmTokensQuotedString *self, NSString *zString);

FOUNDATION_EXPORT OrgMinimaKissvmTokensQuotedString *new_OrgMinimaKissvmTokensQuotedString_initWithNSString_(NSString *zString) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaKissvmTokensQuotedString *create_OrgMinimaKissvmTokensQuotedString_initWithNSString_(NSString *zString);

FOUNDATION_EXPORT void OrgMinimaKissvmTokensQuotedString_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaKissvmTokensQuotedString)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaKissvmTokensQuotedString")
