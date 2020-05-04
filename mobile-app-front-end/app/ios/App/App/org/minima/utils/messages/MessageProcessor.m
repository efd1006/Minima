//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/messages/MessageProcessor.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/ArrayList.h"
#include "java/util/Date.h"
#include "java/util/LinkedList.h"
#include "org/minima/system/input/InputHandler.h"
#include "org/minima/utils/MinimaLogger.h"
#include "org/minima/utils/messages/Message.h"
#include "org/minima/utils/messages/MessageProcessor.h"
#include "org/minima/utils/messages/MessageStack.h"
#include "org/minima/utils/messages/TimerMessage.h"

@interface OrgMinimaUtilsMessagesMessageProcessor () {
 @public
  JavaLangThread *mMainThread_;
  jboolean mRunning_;
}

- (void)checkTimerMessages;

@end

J2OBJC_FIELD_SETTER(OrgMinimaUtilsMessagesMessageProcessor, mMainThread_, JavaLangThread *)

__attribute__((unused)) static void OrgMinimaUtilsMessagesMessageProcessor_checkTimerMessages(OrgMinimaUtilsMessagesMessageProcessor *self);

@implementation OrgMinimaUtilsMessagesMessageProcessor

- (instancetype)initWithNSString:(NSString *)zName {
  OrgMinimaUtilsMessagesMessageProcessor_initWithNSString_(self, zName);
  return self;
}

- (void)setLOGWithBoolean:(jboolean)zLogON {
  mLogON_ = zLogON;
}

- (jboolean)isRunning {
  return mRunning_;
}

- (void)stopMessageProcessor {
  mRunning_ = false;
}

- (void)PostTimerMessageWithOrgMinimaUtilsMessagesTimerMessage:(OrgMinimaUtilsMessagesTimerMessage *)zMessage {
  @synchronized(self) {
    [((JavaUtilLinkedList *) nil_chk(mTimerMessages_)) addWithId:zMessage];
  }
}

- (void)run {
  JavaTextSimpleDateFormat *sdf = new_JavaTextSimpleDateFormat_initWithNSString_(@"HH:mm:ss.SSS");
  while (mRunning_) {
    OrgMinimaUtilsMessagesMessage *msg = [self getNextMessage];
    while (msg != nil && mRunning_) {
      @try {
        if (mLogON_) {
          OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("CI$$$$$@", '[', [self getSize], @"] ", [sdf formatWithJavaUtilDate:new_JavaUtilDate_init()], @" [ ", [((JavaLangThread *) nil_chk(mMainThread_)) getName], @" ] \t", msg));
        }
        [self processMessageWithOrgMinimaUtilsMessagesMessage:msg];
      }
      @catch (JavaLangException *exc) {
        [exc printStackTrace];
        OrgMinimaSystemInputInputHandler_endResponseWithOrgMinimaUtilsMessagesMessage_withBoolean_withNSString_(msg, false, JreStrcat("$@$@", @"SYSTEM ERROR PROCESSING : ", msg, @" exception:", exc));
      }
      OrgMinimaUtilsMessagesMessageProcessor_checkTimerMessages(self);
      msg = [self getNextMessage];
    }
    OrgMinimaUtilsMessagesMessageProcessor_checkTimerMessages(self);
    @try {
      JavaLangThread_sleepWithLong_(20);
    }
    @catch (JavaLangInterruptedException *ex) {
    }
  }
}

- (void)checkTimerMessages {
  OrgMinimaUtilsMessagesMessageProcessor_checkTimerMessages(self);
}

- (void)processMessageWithOrgMinimaUtilsMessagesMessage:(OrgMinimaUtilsMessagesMessage *)zMessage {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x22, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 5, 6, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(setLOGWithBoolean:);
  methods[2].selector = @selector(isRunning);
  methods[3].selector = @selector(stopMessageProcessor);
  methods[4].selector = @selector(PostTimerMessageWithOrgMinimaUtilsMessagesTimerMessage:);
  methods[5].selector = @selector(run);
  methods[6].selector = @selector(checkTimerMessages);
  methods[7].selector = @selector(processMessageWithOrgMinimaUtilsMessagesMessage:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mMainThread_", "LJavaLangThread;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mRunning_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTimerMessages_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x0, -1, -1, 8, -1 },
    { "mLogON_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mName_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "setLOG", "Z", "PostTimerMessage", "LOrgMinimaUtilsMessagesTimerMessage;", "processMessage", "LOrgMinimaUtilsMessagesMessage;", "LJavaLangException;", "Ljava/util/LinkedList<Lorg/minima/utils/messages/TimerMessage;>;" };
  static const J2ObjcClassInfo _OrgMinimaUtilsMessagesMessageProcessor = { "MessageProcessor", "org.minima.utils.messages", ptrTable, methods, fields, 7, 0x401, 8, 5, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsMessagesMessageProcessor;
}

@end

void OrgMinimaUtilsMessagesMessageProcessor_initWithNSString_(OrgMinimaUtilsMessagesMessageProcessor *self, NSString *zName) {
  OrgMinimaUtilsMessagesMessageStack_init(self);
  self->mLogON_ = false;
  self->mName_ = zName;
  self->mRunning_ = true;
  self->mTimerMessages_ = new_JavaUtilLinkedList_init();
  self->mMainThread_ = new_JavaLangThread_initWithJavaLangRunnable_withNSString_(self, zName);
  [self->mMainThread_ start];
}

void OrgMinimaUtilsMessagesMessageProcessor_checkTimerMessages(OrgMinimaUtilsMessagesMessageProcessor *self) {
  @synchronized(self) {
    jlong timenow = JavaLangSystem_currentTimeMillis();
    JavaUtilArrayList *remove = new_JavaUtilArrayList_init();
    for (OrgMinimaUtilsMessagesTimerMessage * __strong tm in nil_chk(self->mTimerMessages_)) {
      if (timenow > [((OrgMinimaUtilsMessagesTimerMessage *) nil_chk(tm)) getTimer]) {
        [self PostMessageWithOrgMinimaUtilsMessagesMessage:tm];
        [remove addWithId:tm];
      }
    }
    for (OrgMinimaUtilsMessagesTimerMessage * __strong rem in remove) {
      [((JavaUtilLinkedList *) nil_chk(self->mTimerMessages_)) removeWithId:rem];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsMessagesMessageProcessor)
