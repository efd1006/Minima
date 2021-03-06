//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/kissvm/Contract.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/util/ArrayList.h"
#include "java/util/Enumeration.h"
#include "java/util/Hashtable.h"
#include "java/util/List.h"
#include "java/util/StringTokenizer.h"
#include "org/minima/kissvm/Contract.h"
#include "org/minima/kissvm/exceptions/ExecutionException.h"
#include "org/minima/kissvm/exceptions/MinimaParseException.h"
#include "org/minima/kissvm/functions/MinimaFunction.h"
#include "org/minima/kissvm/statements/StatementBlock.h"
#include "org/minima/kissvm/statements/StatementParser.h"
#include "org/minima/kissvm/tokens/Token.h"
#include "org/minima/kissvm/values/BooleanValue.h"
#include "org/minima/kissvm/values/HEXValue.h"
#include "org/minima/kissvm/values/NumberValue.h"
#include "org/minima/kissvm/values/ScriptValue.h"
#include "org/minima/kissvm/values/Value.h"
#include "org/minima/objects/StateVariable.h"
#include "org/minima/objects/Transaction.h"
#include "org/minima/objects/Witness.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniNumber.h"
#include "org/minima/objects/base/MiniScript.h"
#include "org/minima/utils/MinimaLogger.h"
#include "org/minima/utils/json/JSONObject.h"

@interface OrgMinimaKissvmContract () {
 @public
  jboolean mSuccess_;
  jboolean mSuccessSet_;
}

@end

@implementation OrgMinimaKissvmContract

- (instancetype)initWithNSString:(NSString *)zRamScript
                    withNSString:(NSString *)zSigs
     withOrgMinimaObjectsWitness:(OrgMinimaObjectsWitness *)zWitness
 withOrgMinimaObjectsTransaction:(OrgMinimaObjectsTransaction *)zTransaction
           withJavaUtilArrayList:(JavaUtilArrayList *)zPrevState {
  OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_(self, zRamScript, zSigs, zWitness, zTransaction, zPrevState);
  return self;
}

- (instancetype)initWithNSString:(NSString *)zRamScript
                    withNSString:(NSString *)zSigs
     withOrgMinimaObjectsWitness:(OrgMinimaObjectsWitness *)zWitness
 withOrgMinimaObjectsTransaction:(OrgMinimaObjectsTransaction *)zTransaction
           withJavaUtilArrayList:(JavaUtilArrayList *)zPrevState
                     withBoolean:(jboolean)zTrace {
  OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_(self, zRamScript, zSigs, zWitness, zTransaction, zPrevState, zTrace);
  return self;
}

- (void)setGlobalVariableWithNSString:(NSString *)zGlobal
       withOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  (void) [((JavaUtilHashtable *) nil_chk(mGlobals_)) putWithId:zGlobal withId:zValue];
  [self traceLogWithNSString:JreStrcat("$$$@", @"Global [", zGlobal, @"] : ", zValue)];
}

- (OrgMinimaKissvmValuesValue *)getPrevStateWithInt:(jint)zPrev {
  for (OrgMinimaObjectsStateVariable * __strong sv in nil_chk(mPrevState_)) {
    if ([((OrgMinimaObjectsStateVariable *) nil_chk(sv)) getPort] == zPrev) {
      NSString *stateval = OrgMinimaKissvmContract_cleanScriptWithNSString_([((OrgMinimaObjectsBaseMiniScript *) nil_chk([sv getData])) description]);
      return OrgMinimaKissvmValuesValue_getValueWithNSString_(stateval);
    }
  }
  @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I", @"PREVSTATE Missing : ", zPrev));
}

- (jboolean)isParseOK {
  return mParseOK_;
}

- (jboolean)isException {
  return mException_;
}

- (NSString *)getException {
  return mExceptionString_;
}

- (jboolean)isTrace {
  return mTraceON_;
}

- (void)traceLogWithNSString:(NSString *)zLog {
  if ([self isTrace]) {
    OrgMinimaUtilsMinimaLogger_logWithNSString_(JreStrcat("$I$$", @"INST[", mNumInstructions_, @"] - ", zLog));
  }
  (void) JreStrAppendStrong(&mCompleteLog_, "$I$$C", @"INST[", mNumInstructions_, @"] - ", zLog, 0x000a);
}

- (NSString *)getCompleteTraceLog {
  return mCompleteLog_;
}

- (void)incrementInstructions {
  mNumInstructions_++;
  if (mNumInstructions_ > OrgMinimaKissvmContract_MAX_INSTRUCTIONS) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I", @"MAX instruction number reached! ", mNumInstructions_));
  }
}

- (jint)getNumberOfInstructions {
  return mNumInstructions_;
}

- (void)run {
  if (!mParseOK_) {
    [self traceLogWithNSString:@"Script parse FAILED. Please fix and retry."];
    return;
  }
  @try {
    [self traceLogWithNSString:@"Start executing the contract"];
    [((OrgMinimaKissvmStatementsStatementBlock *) nil_chk(mBlock_)) runWithOrgMinimaKissvmContract:self];
  }
  @catch (JavaLangException *e) {
    if (mTraceON_) {
      [e printStackTrace];
    }
    mException_ = true;
    mExceptionString_ = [e description];
    [self traceLogWithNSString:JreStrcat("$@", @"Execution Error - ", e)];
    mSuccess_ = false;
    mSuccessSet_ = true;
  }
  [self traceLogWithNSString:JreStrcat("$I", @"Contract instructions : ", mNumInstructions_)];
  [self traceLogWithNSString:JreStrcat("$Z", @"Contract finished     : ", mSuccess_)];
}

- (void)setRETURNValueWithBoolean:(jboolean)zSUCCESS {
  if (!mSuccessSet_) {
    mSuccess_ = zSUCCESS;
    mSuccessSet_ = true;
  }
}

- (jboolean)isSuccess {
  return mSuccess_;
}

- (jboolean)isSuccessSet {
  return mSuccessSet_;
}

- (NSString *)getMiniScript {
  return mRamScript_;
}

- (OrgMinimaObjectsTransaction *)getTransaction {
  return mTransaction_;
}

- (OrgMinimaObjectsWitness *)getWitness {
  return mWitness_;
}

- (OrgMinimaUtilsJsonJSONObject *)getAllVariables {
  OrgMinimaUtilsJsonJSONObject *variables = new_OrgMinimaUtilsJsonJSONObject_init();
  id<JavaUtilEnumeration> keys = [((JavaUtilHashtable *) nil_chk(mVariables_)) keys];
  while ([((id<JavaUtilEnumeration>) nil_chk(keys)) hasMoreElements]) {
    NSString *key = [keys nextElement];
    OrgMinimaKissvmValuesValue *val = [((JavaUtilHashtable *) nil_chk(mVariables_)) getWithId:key];
    if ([((NSString *) nil_chk(key)) java_contains:@","]) {
      key = [key java_replace:@"," withSequence:@" "];
      key = JreStrcat("$$$", @"( ", [((NSString *) nil_chk(key)) java_trim], @" )");
    }
    if ([((OrgMinimaKissvmValuesValue *) nil_chk(val)) getValueType] == OrgMinimaKissvmValuesScriptValue_VALUE_SCRIPT) {
      (void) [variables putWithId:key withId:JreStrcat("$$$", @"[ ", [val description], @" ]")];
    }
    else {
      (void) [variables putWithId:key withId:[val description]];
    }
  }
  return variables;
}

- (OrgMinimaKissvmValuesValue *)getVariableWithNSString:(NSString *)zName {
  OrgMinimaKissvmValuesValue *ret = [((JavaUtilHashtable *) nil_chk(mVariables_)) getWithId:zName];
  return ret;
}

- (void)setVariableWithNSString:(NSString *)zName
 withOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zValue {
  (void) [((JavaUtilHashtable *) nil_chk(mVariables_)) putWithId:zName withId:zValue];
  [self traceVariables];
}

- (void)setFloatingWithBoolean:(jboolean)zFloating {
  mFloatingCoin_ = zFloating;
}

- (jboolean)setDYNStateWithInt:(jint)zStateNum
                  withNSString:(NSString *)zValue {
  if (IOSBooleanArray_Get(nil_chk(mCheckState_), zStateNum)) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(@"Can only call DYNSTATE before STATE or SAMESTATE");
  }
  if (IOSObjectArray_Get(nil_chk(mDYNState_), zStateNum) != nil) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(@"Can only call DYNSTATE once per state per transaction!");
  }
  (void) IOSObjectArray_Set(mDYNState_, zStateNum, zValue);
  OrgMinimaObjectsStateVariable *sv = [((OrgMinimaObjectsTransaction *) nil_chk(mTransaction_)) getStateValueWithInt:zStateNum];
  if (sv != nil) {
    NSString *oldsv = [((OrgMinimaObjectsBaseMiniScript *) nil_chk([sv getData])) description];
    return [((NSString *) nil_chk(oldsv)) isEqual:zValue];
  }
  return false;
}

- (NSString *)getStateWithInt:(jint)zStateNum {
  *IOSBooleanArray_GetRef(nil_chk(mCheckState_), zStateNum) = true;
  if (IOSObjectArray_Get(nil_chk(mDYNState_), zStateNum) != nil) {
    return IOSObjectArray_Get(mDYNState_, zStateNum);
  }
  if (![((OrgMinimaObjectsTransaction *) nil_chk(mTransaction_)) stateExistsWithInt:zStateNum]) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$I", @"State Variable does not exist ", zStateNum));
  }
  return [((OrgMinimaObjectsBaseMiniScript *) nil_chk([((OrgMinimaObjectsStateVariable *) nil_chk([((OrgMinimaObjectsTransaction *) nil_chk(mTransaction_)) getStateValueWithInt:zStateNum])) getData])) description];
}

- (IOSObjectArray *)getCompleteDYNState {
  return mDYNState_;
}

- (IOSBooleanArray *)getCompleteCheckState {
  return mCheckState_;
}

- (void)setCompleteDYNStateWithNSStringArray:(IOSObjectArray *)zDYNState
                            withBooleanArray:(IOSBooleanArray *)zCheckState {
  mDYNState_ = zDYNState;
  mCheckState_ = zCheckState;
}

- (void)traceVariables {
  NSString *varlist = @"{ ";
  id<JavaUtilEnumeration> keys = [((JavaUtilHashtable *) nil_chk(mVariables_)) keys];
  while ([((id<JavaUtilEnumeration>) nil_chk(keys)) hasMoreElements]) {
    NSString *key = [keys nextElement];
    OrgMinimaKissvmValuesValue *val = [((JavaUtilHashtable *) nil_chk(mVariables_)) getWithId:key];
    if ([((NSString *) nil_chk(key)) java_contains:@","]) {
      key = [key java_replace:@"," withSequence:@" "];
      key = JreStrcat("$$$", @"( ", [((NSString *) nil_chk(key)) java_trim], @" )");
    }
    jint type = [((OrgMinimaKissvmValuesValue *) nil_chk(val)) getValueType];
    switch (type) {
      case OrgMinimaKissvmValuesBooleanValue_VALUE_BOOLEAN:
      (void) JreStrAppendStrong(&varlist, "$$$$", key, @" = ", [((NSString *) nil_chk(JavaLangBoolean_toStringWithBoolean_([val isTrue]))) uppercaseString], @", ");
      break;
      case OrgMinimaKissvmValuesScriptValue_VALUE_SCRIPT:
      (void) JreStrAppendStrong(&varlist, "$$@$", key, @" = [ ", val, @" ], ");
      break;
      default:
      (void) JreStrAppendStrong(&varlist, "$$@$", key, @" = ", val, @", ");
      break;
    }
  }
  [self traceLogWithNSString:JreStrcat("$C", varlist, '}')];
}

- (OrgMinimaKissvmValuesValue *)getGlobalWithNSString:(NSString *)zGlobal {
  OrgMinimaKissvmValuesValue *ret = [((JavaUtilHashtable *) nil_chk(mGlobals_)) getWithId:zGlobal];
  if (ret == nil) {
    @throw new_OrgMinimaKissvmExceptionsExecutionException_initWithNSString_(JreStrcat("$$", @"Global not found - ", zGlobal));
  }
  return ret;
}

- (jboolean)checkSignatureWithOrgMinimaKissvmValuesValue:(OrgMinimaKissvmValuesValue *)zSignature {
  OrgMinimaObjectsBaseMiniData *checksig = [((OrgMinimaKissvmValuesValue *) nil_chk(zSignature)) getMiniData];
  for (OrgMinimaKissvmValuesValue * __strong sig in nil_chk(mSignatures_)) {
    if ([((OrgMinimaObjectsBaseMiniData *) nil_chk([((OrgMinimaKissvmValuesValue *) nil_chk(sig)) getMiniData])) isEqualWithOrgMinimaObjectsBaseMiniData:checksig]) {
      return true;
    }
  }
  return false;
}

+ (NSString *)cleanScriptWithNSString:(NSString *)zScript {
  return OrgMinimaKissvmContract_cleanScriptWithNSString_(zScript);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs {
  OrgMinimaKissvmContract_mainWithNSStringArray_(zArgs);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 6, 7, 8, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 8, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsTransaction;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaObjectsWitness;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaUtilsJsonJSONObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 13, 10, 8, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 16, 17, 8, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, 7, 8, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgMinimaKissvmValuesValue;", 0x1, 21, 10, 8, -1, -1, -1 },
    { NULL, "Z", 0x1, 22, 23, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 24, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 25, 26, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withOrgMinimaObjectsWitness:withOrgMinimaObjectsTransaction:withJavaUtilArrayList:);
  methods[1].selector = @selector(initWithNSString:withNSString:withOrgMinimaObjectsWitness:withOrgMinimaObjectsTransaction:withJavaUtilArrayList:withBoolean:);
  methods[2].selector = @selector(setGlobalVariableWithNSString:withOrgMinimaKissvmValuesValue:);
  methods[3].selector = @selector(getPrevStateWithInt:);
  methods[4].selector = @selector(isParseOK);
  methods[5].selector = @selector(isException);
  methods[6].selector = @selector(getException);
  methods[7].selector = @selector(isTrace);
  methods[8].selector = @selector(traceLogWithNSString:);
  methods[9].selector = @selector(getCompleteTraceLog);
  methods[10].selector = @selector(incrementInstructions);
  methods[11].selector = @selector(getNumberOfInstructions);
  methods[12].selector = @selector(run);
  methods[13].selector = @selector(setRETURNValueWithBoolean:);
  methods[14].selector = @selector(isSuccess);
  methods[15].selector = @selector(isSuccessSet);
  methods[16].selector = @selector(getMiniScript);
  methods[17].selector = @selector(getTransaction);
  methods[18].selector = @selector(getWitness);
  methods[19].selector = @selector(getAllVariables);
  methods[20].selector = @selector(getVariableWithNSString:);
  methods[21].selector = @selector(setVariableWithNSString:withOrgMinimaKissvmValuesValue:);
  methods[22].selector = @selector(setFloatingWithBoolean:);
  methods[23].selector = @selector(setDYNStateWithInt:withNSString:);
  methods[24].selector = @selector(getStateWithInt:);
  methods[25].selector = @selector(getCompleteDYNState);
  methods[26].selector = @selector(getCompleteCheckState);
  methods[27].selector = @selector(setCompleteDYNStateWithNSStringArray:withBooleanArray:);
  methods[28].selector = @selector(traceVariables);
  methods[29].selector = @selector(getGlobalWithNSString:);
  methods[30].selector = @selector(checkSignatureWithOrgMinimaKissvmValuesValue:);
  methods[31].selector = @selector(cleanScriptWithNSString:);
  methods[32].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mTransaction_", "LOrgMinimaObjectsTransaction;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mWitness_", "LOrgMinimaObjectsWitness;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mRamScript_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mBlock_", "LOrgMinimaKissvmStatementsStatementBlock;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mSignatures_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 27, -1 },
    { "mVariables_", "LJavaUtilHashtable;", .constantValue.asLong = 0, 0x0, -1, -1, 28, -1 },
    { "mGlobals_", "LJavaUtilHashtable;", .constantValue.asLong = 0, 0x0, -1, -1, 28, -1 },
    { "mPrevState_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x0, -1, -1, 29, -1 },
    { "mFloatingCoin_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mDYNState_", "[LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCheckState_", "[Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mSuccess_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSuccessSet_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mTraceON_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mParseOK_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mException_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mExceptionString_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mNumInstructions_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "MAX_INSTRUCTIONS", "I", .constantValue.asInt = OrgMinimaKissvmContract_MAX_INSTRUCTIONS, 0x19, -1, -1, -1, -1 },
    { "mCompleteLog_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LOrgMinimaObjectsWitness;LOrgMinimaObjectsTransaction;LJavaUtilArrayList;", "(Ljava/lang/String;Ljava/lang/String;Lorg/minima/objects/Witness;Lorg/minima/objects/Transaction;Ljava/util/ArrayList<Lorg/minima/objects/StateVariable;>;)V", "LNSString;LNSString;LOrgMinimaObjectsWitness;LOrgMinimaObjectsTransaction;LJavaUtilArrayList;Z", "(Ljava/lang/String;Ljava/lang/String;Lorg/minima/objects/Witness;Lorg/minima/objects/Transaction;Ljava/util/ArrayList<Lorg/minima/objects/StateVariable;>;Z)V", "setGlobalVariable", "LNSString;LOrgMinimaKissvmValuesValue;", "getPrevState", "I", "LOrgMinimaKissvmExceptionsExecutionException;", "traceLog", "LNSString;", "setRETURNValue", "Z", "getVariable", "setVariable", "setFloating", "setDYNState", "ILNSString;", "getState", "setCompleteDYNState", "[LNSString;[Z", "getGlobal", "checkSignature", "LOrgMinimaKissvmValuesValue;", "cleanScript", "main", "[LNSString;", "Ljava/util/ArrayList<Lorg/minima/kissvm/values/Value;>;", "Ljava/util/Hashtable<Ljava/lang/String;Lorg/minima/kissvm/values/Value;>;", "Ljava/util/ArrayList<Lorg/minima/objects/StateVariable;>;" };
  static const J2ObjcClassInfo _OrgMinimaKissvmContract = { "Contract", "org.minima.kissvm", ptrTable, methods, fields, 7, 0x1, 33, 20, -1, -1, -1, -1, -1 };
  return &_OrgMinimaKissvmContract;
}

@end

void OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_(OrgMinimaKissvmContract *self, NSString *zRamScript, NSString *zSigs, OrgMinimaObjectsWitness *zWitness, OrgMinimaObjectsTransaction *zTransaction, JavaUtilArrayList *zPrevState) {
  OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_(self, zRamScript, zSigs, zWitness, zTransaction, zPrevState, false);
}

OrgMinimaKissvmContract *new_OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_(NSString *zRamScript, NSString *zSigs, OrgMinimaObjectsWitness *zWitness, OrgMinimaObjectsTransaction *zTransaction, JavaUtilArrayList *zPrevState) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmContract, initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_, zRamScript, zSigs, zWitness, zTransaction, zPrevState)
}

OrgMinimaKissvmContract *create_OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_(NSString *zRamScript, NSString *zSigs, OrgMinimaObjectsWitness *zWitness, OrgMinimaObjectsTransaction *zTransaction, JavaUtilArrayList *zPrevState) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmContract, initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_, zRamScript, zSigs, zWitness, zTransaction, zPrevState)
}

void OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_(OrgMinimaKissvmContract *self, NSString *zRamScript, NSString *zSigs, OrgMinimaObjectsWitness *zWitness, OrgMinimaObjectsTransaction *zTransaction, JavaUtilArrayList *zPrevState, jboolean zTrace) {
  NSObject_init(self);
  self->mPrevState_ = new_JavaUtilArrayList_init();
  self->mFloatingCoin_ = false;
  self->mTraceON_ = false;
  self->mCompleteLog_ = @"";
  self->mCompleteLog_ = @"";
  self->mTraceON_ = zTrace;
  self->mRamScript_ = OrgMinimaKissvmContract_cleanScriptWithNSString_(zRamScript);
  self->mTransaction_ = zTransaction;
  self->mWitness_ = zWitness;
  self->mSignatures_ = new_JavaUtilArrayList_init();
  self->mVariables_ = new_JavaUtilHashtable_init();
  self->mGlobals_ = new_JavaUtilHashtable_init();
  self->mFloatingCoin_ = false;
  self->mDYNState_ = [IOSObjectArray newArrayWithLength:256 type:NSString_class_()];
  for (jint i = 0; i < 256; i++) {
    (void) IOSObjectArray_Set(self->mDYNState_, i, nil);
  }
  self->mCheckState_ = [IOSBooleanArray newArrayWithLength:256];
  for (jint i = 0; i < 256; i++) {
    *IOSBooleanArray_GetRef(self->mCheckState_, i) = false;
  }
  self->mBlock_ = nil;
  self->mSuccess_ = false;
  self->mSuccessSet_ = false;
  self->mParseOK_ = false;
  self->mException_ = false;
  self->mExceptionString_ = @"";
  self->mNumInstructions_ = 0;
  [self traceLogWithNSString:JreStrcat("$$", @"Contract   : ", self->mRamScript_)];
  [self traceLogWithNSString:JreStrcat("$I", @"Size       : ", [((NSString *) nil_chk(self->mRamScript_)) java_length])];
  JavaUtilStringTokenizer *strtok = new_JavaUtilStringTokenizer_initWithNSString_withNSString_(zSigs, @"#");
  while ([strtok hasMoreTokens]) {
    NSString *sig = [((NSString *) nil_chk([strtok nextToken])) java_trim];
    [self traceLogWithNSString:JreStrcat("$$", @"Signature : ", sig)];
    [((JavaUtilArrayList *) nil_chk(self->mSignatures_)) addWithId:OrgMinimaKissvmValuesValue_getValueWithNSString_(sig)];
  }
  [self traceLogWithNSString:JreStrcat("$$", @"Transaction   : ", [((OrgMinimaObjectsTransaction *) nil_chk(self->mTransaction_)) description])];
  [self traceLogWithNSString:JreStrcat("$$", @"Witness       : ", [((OrgMinimaObjectsWitness *) nil_chk(self->mWitness_)) description])];
  JavaUtilArrayList *svs = [((OrgMinimaObjectsTransaction *) nil_chk(self->mTransaction_)) getCompleteState];
  for (OrgMinimaObjectsStateVariable * __strong sv in nil_chk(svs)) {
    [self traceLogWithNSString:JreStrcat("$I$$", @"State[", [((OrgMinimaObjectsStateVariable *) nil_chk(sv)) getPort], @"] : ", [((OrgMinimaObjectsBaseMiniScript *) nil_chk([sv getData])) description])];
  }
  if (zPrevState == nil) {
    self->mPrevState_ = new_JavaUtilArrayList_init();
  }
  else {
    self->mPrevState_ = zPrevState;
    for (OrgMinimaObjectsStateVariable * __strong sv in self->mPrevState_) {
      [self traceLogWithNSString:JreStrcat("$I$$", @"PrevState[", [((OrgMinimaObjectsStateVariable *) nil_chk(sv)) getPort], @"] : ", [((OrgMinimaObjectsBaseMiniScript *) nil_chk([sv getData])) description])];
    }
  }
  @try {
    id<JavaUtilList> tokens = OrgMinimaKissvmTokensToken_tokenizeWithNSString_(self->mRamScript_);
    jint count = 0;
    for (OrgMinimaKissvmTokensToken * __strong tok in nil_chk(tokens)) {
      [self traceLogWithNSString:JreStrcat("I$$$$", (count++), @") Token : [", [((OrgMinimaKissvmTokensToken *) nil_chk(tok)) getTokenTypeString], @"] ", [tok getToken])];
    }
    self->mBlock_ = OrgMinimaKissvmStatementsStatementParser_parseTokensWithJavaUtilList_(tokens);
    [self traceLogWithNSString:@"Script token parse OK."];
    self->mParseOK_ = true;
  }
  @catch (OrgMinimaKissvmExceptionsMinimaParseException *e) {
    self->mException_ = true;
    self->mExceptionString_ = [e getMessage];
    [self traceLogWithNSString:JreStrcat("$$", @"PARSE ERROR : ", self->mExceptionString_)];
  }
}

OrgMinimaKissvmContract *new_OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_(NSString *zRamScript, NSString *zSigs, OrgMinimaObjectsWitness *zWitness, OrgMinimaObjectsTransaction *zTransaction, JavaUtilArrayList *zPrevState, jboolean zTrace) {
  J2OBJC_NEW_IMPL(OrgMinimaKissvmContract, initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_, zRamScript, zSigs, zWitness, zTransaction, zPrevState, zTrace)
}

OrgMinimaKissvmContract *create_OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_(NSString *zRamScript, NSString *zSigs, OrgMinimaObjectsWitness *zWitness, OrgMinimaObjectsTransaction *zTransaction, JavaUtilArrayList *zPrevState, jboolean zTrace) {
  J2OBJC_CREATE_IMPL(OrgMinimaKissvmContract, initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_, zRamScript, zSigs, zWitness, zTransaction, zPrevState, zTrace)
}

NSString *OrgMinimaKissvmContract_cleanScriptWithNSString_(NSString *zScript) {
  OrgMinimaKissvmContract_initialize();
  if ([((NSString *) nil_chk(zScript)) isEqual:@""]) {
    return @"";
  }
  NSString *script = [NSString stringWithString:JreStrcat("C$C", ' ', [zScript lowercaseString], ' ')];
  script = [script java_replaceAll:@"\\s+" withReplacement:@" "];
  jint comment = [((NSString *) nil_chk(script)) java_indexOfString:@"/*"];
  while (comment != -1) {
    jint endcomment = [script java_indexOfString:@"*/" fromIndex:comment];
    jint len = [script java_length];
    script = JreStrcat("C$C$C", ' ', [script java_substring:0 endIndex:comment], ' ', [script java_substring:endcomment + 2 endIndex:len], ' ');
    comment = [script java_indexOfString:@"/*"];
  }
  script = [script java_replaceAll:@"," withReplacement:@" , "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@";" withReplacement:@" ; "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@":" withReplacement:@" : "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"#" withReplacement:@" # "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" " withReplacement:@"  "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\(" withReplacement:@" ( "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\)" withReplacement:@" ) "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\[" withReplacement:@" [ "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\]" withReplacement:@" ] "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"<<" withReplacement:@" << "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@">>" withReplacement:@" >> "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\&" withReplacement:@" & "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\|" withReplacement:@" | "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\^" withReplacement:@" ^ "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\*" withReplacement:@" * "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\+" withReplacement:@" + "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\=" withReplacement:@" = "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@"\\%" withReplacement:@" % "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" nand " withReplacement:@" NAND "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" nxor " withReplacement:@" NXOR "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" nor " withReplacement:@" NOR "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" and " withReplacement:@" AND "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" xor " withReplacement:@" XOR "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" or " withReplacement:@" OR "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" not " withReplacement:@" NOT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" neg " withReplacement:@" NEG "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" neq " withReplacement:@" NEQ "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" gte " withReplacement:@" GTE "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" lte " withReplacement:@" LTE "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" gt " withReplacement:@" GT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" eq " withReplacement:@" EQ "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" lt " withReplacement:@" LT "];
  IOSObjectArray *allcommands = JreLoadStatic(OrgMinimaKissvmTokensToken, TOKENS_COMMAND);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(allcommands))->size_; i++) {
    NSString *find = JreStrcat("C$C", ' ', [((NSString *) nil_chk(IOSObjectArray_Get(allcommands, i))) lowercaseString], ' ');
    NSString *repl = JreStrcat("C$C", ' ', IOSObjectArray_Get(allcommands, i), ' ');
    script = [((NSString *) nil_chk(script)) java_replaceAll:find withReplacement:repl];
  }
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" true " withReplacement:@" TRUE "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" false " withReplacement:@" FALSE "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @blknum " withReplacement:@" @BLKNUM "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @input " withReplacement:@" @INPUT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @address " withReplacement:@" @ADDRESS "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @amount " withReplacement:@" @AMOUNT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @tokenid " withReplacement:@" @TOKENID "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @coinid " withReplacement:@" @COINID "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @script " withReplacement:@" @SCRIPT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @tokenscript " withReplacement:@" @TOKENSCRIPT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @floating " withReplacement:@" @FLOATING"];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @totin " withReplacement:@" @TOTIN "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @totout " withReplacement:@" @TOTOUT "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @inblknum " withReplacement:@" @INBLKNUM "];
  script = [((NSString *) nil_chk(script)) java_replaceAll:@" @blkdiff " withReplacement:@" @BLKDIFF "];
  {
    IOSObjectArray *a__ = JreLoadStatic(OrgMinimaKissvmFunctionsMinimaFunction, ALL_FUNCTIONS);
    OrgMinimaKissvmFunctionsMinimaFunction * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgMinimaKissvmFunctionsMinimaFunction * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgMinimaKissvmFunctionsMinimaFunction *func = *b__++;
      NSString *name = [((OrgMinimaKissvmFunctionsMinimaFunction *) nil_chk(func)) getName];
      script = [((NSString *) nil_chk(script)) java_replaceAll:JreStrcat("C$C", ' ', [((NSString *) nil_chk(name)) lowercaseString], ' ') withReplacement:JreStrcat("C$C", ' ', name, ' ')];
    }
  }
  NSString *finalstring = @"";
  JavaUtilStringTokenizer *strtok = new_JavaUtilStringTokenizer_initWithNSString_withNSString_(script, @" ");
  while ([strtok hasMoreTokens]) {
    NSString *tok = [strtok nextToken];
    if ([((NSString *) nil_chk(tok)) java_hasPrefix:@"0x"]) {
      finalstring = [((NSString *) nil_chk(finalstring)) java_concat:JreStrcat("$$", @" 0x", [((NSString *) nil_chk([tok java_substring:2])) uppercaseString])];
    }
    else {
      finalstring = [((NSString *) nil_chk(finalstring)) java_concat:JreStrcat("C$", ' ', tok)];
    }
  }
  script = [((NSString *) nil_chk([((NSString *) nil_chk(script)) java_replaceAll:@"\\s+" withReplacement:@" "])) java_trim];
  return [((NSString *) nil_chk(finalstring)) java_trim];
}

void OrgMinimaKissvmContract_mainWithNSStringArray_(IOSObjectArray *zArgs) {
  OrgMinimaKissvmContract_initialize();
  NSString *RamScript = @"return true";
  OrgMinimaObjectsTransaction *tt = new_OrgMinimaObjectsTransaction_init();
  [tt addStateVariableWithOrgMinimaObjectsStateVariable:new_OrgMinimaObjectsStateVariable_initWithInt_withNSString_(0, @"987")];
  OrgMinimaKissvmContract *ctr = new_OrgMinimaKissvmContract_initWithNSString_withNSString_withOrgMinimaObjectsWitness_withOrgMinimaObjectsTransaction_withJavaUtilArrayList_withBoolean_(RamScript, @"0x74A2222436C592046A6F576F67200C75DB3D9051BE31262BD0A0BF0DB30137C4", new_OrgMinimaObjectsWitness_init(), tt, nil, true);
  [ctr setFloatingWithBoolean:true];
  [ctr setGlobalVariableWithNSString:@"@SCRIPT" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesScriptValue_initWithNSString_(RamScript)];
  [ctr setGlobalVariableWithNSString:@"@BLKNUM" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesNumberValue_initWithOrgMinimaObjectsBaseMiniNumber_(new_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"31"))];
  [ctr setGlobalVariableWithNSString:@"@INBLKNUM" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesNumberValue_initWithOrgMinimaObjectsBaseMiniNumber_(new_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"10"))];
  [ctr setGlobalVariableWithNSString:@"@INPUT" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesNumberValue_initWithOrgMinimaObjectsBaseMiniNumber_(new_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"1"))];
  [ctr setGlobalVariableWithNSString:@"@ADDRESS" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesHEXValue_initWithNSString_(@"0x67876AB")];
  [ctr setGlobalVariableWithNSString:@"@TOKENID" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesHEXValue_initWithNSString_(@"0x00")];
  [ctr setGlobalVariableWithNSString:@"@AMOUNT" withOrgMinimaKissvmValuesValue:new_OrgMinimaKissvmValuesNumberValue_initWithOrgMinimaObjectsBaseMiniNumber_(new_OrgMinimaObjectsBaseMiniNumber_initWithNSString_(@"1"))];
  [ctr run];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaKissvmContract)
