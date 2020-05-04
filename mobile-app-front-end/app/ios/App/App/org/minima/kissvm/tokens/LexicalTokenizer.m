//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/tokens/LexicalTokenizer.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/minima/kissvm/exceptions/MinimaParseException.h"
#include "org/minima/kissvm/tokens/LexicalTokenizer.h"
#include "org/minima/kissvm/tokens/Token.h"

@implementation OrgMinimaKissvmTokensLexicalTokenizer

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)zTokens {
  OrgMinimaKissvmTokensLexicalTokenizer_initWithJavaUtilList_(self, zTokens);
  return self;
}

- (OrgMinimaKissvmTokensToken *)getNextToken {
  if (mPos_ >= mSize_) {
    @throw new_OrgMinimaKissvmExceptionsMinimaParseException_initWithNSString_(@"Run out of tokens!..");
  }
  return [((id<JavaUtilList>) nil_chk(mTokens_)) getWithInt:mPos_++];
}

- (jint)getCurrentPosition {
  return mPos_;
}

- (void)goBackToken {
  mPos_--;
}

- (jboolean)checkAllTokensUsed {
  return mPos_ == mSize_;
}

- (jboolean)hasMoreElements {
  return mPos_ < mSize_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgMinimaKissvmTokensToken;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilList:);
  methods[1].selector = @selector(getNextToken);
  methods[2].selector = @selector(getCurrentPosition);
  methods[3].selector = @selector(goBackToken);
  methods[4].selector = @selector(checkAllTokensUsed);
  methods[5].selector = @selector(hasMoreElements);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mTokens_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 3, -1 },
    { "mPos_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mSize_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilList;", "(Ljava/util/List<Lorg/minima/kissvm/tokens/Token;>;)V", "LOrgMinimaKissvmExceptionsMinimaParseException;", "Ljava/util/List<Lorg/minima/kissvm/tokens/Token;>;" };
  static const J2ObjcClassInfo _OrgMinimaKissvmTokensLexicalTokenizer = { "LexicalTokenizer", "org.minima.kissvm.tokens", ptrTable, methods, fields, 7, 0x1, 6, 3, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmTokensLexicalTokenizer;
}

@end

void OrgMinimaKissvmTokensLexicalTokenizer_initWithJavaUtilList_(OrgMinimaKissvmTokensLexicalTokenizer *self, id<JavaUtilList> zTokens) {
  NSObject_init(self);
  self->mTokens_ = zTokens;
  self->mPos_ = 0;
  self->mSize_ = [((id<JavaUtilList>) nil_chk(zTokens)) size];
}

OrgMinimaKissvmTokensLexicalTokenizer *new_OrgMinimaKissvmTokensLexicalTokenizer_initWithJavaUtilList_(id<JavaUtilList> zTokens) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmTokensLexicalTokenizer, initWithJavaUtilList_, zTokens)
}

OrgMinimaKissvmTokensLexicalTokenizer *create_OrgMinimaKissvmTokensLexicalTokenizer_initWithJavaUtilList_(id<JavaUtilList> zTokens) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmTokensLexicalTokenizer, initWithJavaUtilList_, zTokens)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmTokensLexicalTokenizer)
