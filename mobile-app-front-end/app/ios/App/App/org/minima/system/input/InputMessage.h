//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/input/InputMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemInputInputMessage")
#ifdef RESTRICT_OrgMinimaSystemInputInputMessage
#define INCLUDE_ALL_OrgMinimaSystemInputInputMessage 0
#else
#define INCLUDE_ALL_OrgMinimaSystemInputInputMessage 1
#endif
#undef RESTRICT_OrgMinimaSystemInputInputMessage

#if !defined (OrgMinimaSystemInputInputMessage_) && (INCLUDE_ALL_OrgMinimaSystemInputInputMessage || defined(INCLUDE_OrgMinimaSystemInputInputMessage))
#define OrgMinimaSystemInputInputMessage_

#define RESTRICT_OrgMinimaUtilsMessagesMessage 1
#define INCLUDE_OrgMinimaUtilsMessagesMessage 1
#include "org/minima/utils/messages/Message.h"

@class IOSObjectArray;
@class OrgMinimaUtilsResponseStream;

@interface OrgMinimaSystemInputInputMessage : OrgMinimaUtilsMessagesMessage

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)zInput
withOrgMinimaUtilsResponseStream:(OrgMinimaUtilsResponseStream *)zResponseStream;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

+ (IOSObjectArray *)splitStringWithNSString:(NSString *)zInput;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaSystemInputInputMessage)

FOUNDATION_EXPORT void OrgMinimaSystemInputInputMessage_initWithNSString_withOrgMinimaUtilsResponseStream_(OrgMinimaSystemInputInputMessage *self, NSString *zInput, OrgMinimaUtilsResponseStream *zResponseStream);

FOUNDATION_EXPORT OrgMinimaSystemInputInputMessage *new_OrgMinimaSystemInputInputMessage_initWithNSString_withOrgMinimaUtilsResponseStream_(NSString *zInput, OrgMinimaUtilsResponseStream *zResponseStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemInputInputMessage *create_OrgMinimaSystemInputInputMessage_initWithNSString_withOrgMinimaUtilsResponseStream_(NSString *zInput, OrgMinimaUtilsResponseStream *zResponseStream);

FOUNDATION_EXPORT IOSObjectArray *OrgMinimaSystemInputInputMessage_splitStringWithNSString_(NSString *zInput);

FOUNDATION_EXPORT void OrgMinimaSystemInputInputMessage_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemInputInputMessage)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemInputInputMessage")
