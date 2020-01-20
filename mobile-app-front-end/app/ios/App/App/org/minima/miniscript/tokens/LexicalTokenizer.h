//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/miniscript/tokens/LexicalTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaMiniscriptTokensLexicalTokenizer")
#ifdef RESTRICT_OrgMinimaMiniscriptTokensLexicalTokenizer
#define INCLUDE_ALL_OrgMinimaMiniscriptTokensLexicalTokenizer 0
#else
#define INCLUDE_ALL_OrgMinimaMiniscriptTokensLexicalTokenizer 1
#endif
#undef RESTRICT_OrgMinimaMiniscriptTokensLexicalTokenizer

#if !defined (OrgMinimaMiniscriptTokensLexicalTokenizer_) && (INCLUDE_ALL_OrgMinimaMiniscriptTokensLexicalTokenizer || defined(INCLUDE_OrgMinimaMiniscriptTokensLexicalTokenizer))
#define OrgMinimaMiniscriptTokensLexicalTokenizer_

@class OrgMinimaMiniscriptTokensToken;
@protocol JavaUtilList;

@interface OrgMinimaMiniscriptTokensLexicalTokenizer : NSObject {
 @public
  id<JavaUtilList> mTokens_;
  jint mPos_;
  jint mSize_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)zTokens;

- (OrgMinimaMiniscriptTokensToken *)getNextToken;

- (void)goBackToken;

- (jboolean)hasMoreElements;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaMiniscriptTokensLexicalTokenizer)

J2OBJC_FIELD_SETTER(OrgMinimaMiniscriptTokensLexicalTokenizer, mTokens_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgMinimaMiniscriptTokensLexicalTokenizer_initWithJavaUtilList_(OrgMinimaMiniscriptTokensLexicalTokenizer *self, id<JavaUtilList> zTokens);

FOUNDATION_EXPORT OrgMinimaMiniscriptTokensLexicalTokenizer *new_OrgMinimaMiniscriptTokensLexicalTokenizer_initWithJavaUtilList_(id<JavaUtilList> zTokens) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaMiniscriptTokensLexicalTokenizer *create_OrgMinimaMiniscriptTokensLexicalTokenizer_initWithJavaUtilList_(id<JavaUtilList> zTokens);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaMiniscriptTokensLexicalTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaMiniscriptTokensLexicalTokenizer")
