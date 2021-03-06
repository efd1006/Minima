//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/messages/Message.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaUtilsMessagesMessage")
#ifdef RESTRICT_OrgMinimaUtilsMessagesMessage
#define INCLUDE_ALL_OrgMinimaUtilsMessagesMessage 0
#else
#define INCLUDE_ALL_OrgMinimaUtilsMessagesMessage 1
#endif
#undef RESTRICT_OrgMinimaUtilsMessagesMessage

#if !defined (OrgMinimaUtilsMessagesMessage_) && (INCLUDE_ALL_OrgMinimaUtilsMessagesMessage || defined(INCLUDE_OrgMinimaUtilsMessagesMessage))
#define OrgMinimaUtilsMessagesMessage_

@interface OrgMinimaUtilsMessagesMessage : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)zMessageType;

- (OrgMinimaUtilsMessagesMessage *)addBooleanWithNSString:(NSString *)zName
                                              withBoolean:(jboolean)zValue;

- (OrgMinimaUtilsMessagesMessage *)addIntWithNSString:(NSString *)zName
                                              withInt:(jint)zValue;

- (OrgMinimaUtilsMessagesMessage *)addObjectWithNSString:(NSString *)zName
                                                  withId:(id)zObject;

- (OrgMinimaUtilsMessagesMessage *)addStringWithNSString:(NSString *)zName
                                            withNSString:(NSString *)zValue;

- (jboolean)existsWithNSString:(NSString *)zVariable;

- (jboolean)getBooleanWithNSString:(NSString *)zName;

- (jint)getIntegerWithNSString:(NSString *)zName;

- (NSString *)getMessageType;

- (id)getObjectWithNSString:(NSString *)zName;

- (NSString *)getStringWithNSString:(NSString *)zName;

- (jboolean)isMessageTypeWithNSString:(NSString *)zMessageType;

- (void)setMessageTypeWithNSString:(NSString *)zMessageType;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaUtilsMessagesMessage)

FOUNDATION_EXPORT void OrgMinimaUtilsMessagesMessage_initWithNSString_(OrgMinimaUtilsMessagesMessage *self, NSString *zMessageType);

FOUNDATION_EXPORT OrgMinimaUtilsMessagesMessage *new_OrgMinimaUtilsMessagesMessage_initWithNSString_(NSString *zMessageType) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaUtilsMessagesMessage *create_OrgMinimaUtilsMessagesMessage_initWithNSString_(NSString *zMessageType);

FOUNDATION_EXPORT void OrgMinimaUtilsMessagesMessage_init(OrgMinimaUtilsMessagesMessage *self);

FOUNDATION_EXPORT OrgMinimaUtilsMessagesMessage *new_OrgMinimaUtilsMessagesMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaUtilsMessagesMessage *create_OrgMinimaUtilsMessagesMessage_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaUtilsMessagesMessage)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaUtilsMessagesMessage")
