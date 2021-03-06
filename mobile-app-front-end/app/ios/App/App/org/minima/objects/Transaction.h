//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/objects/Transaction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaObjectsTransaction")
#ifdef RESTRICT_OrgMinimaObjectsTransaction
#define INCLUDE_ALL_OrgMinimaObjectsTransaction 0
#else
#define INCLUDE_ALL_OrgMinimaObjectsTransaction 1
#endif
#undef RESTRICT_OrgMinimaObjectsTransaction

#if !defined (OrgMinimaObjectsTransaction_) && (INCLUDE_ALL_OrgMinimaObjectsTransaction || defined(INCLUDE_OrgMinimaObjectsTransaction))
#define OrgMinimaObjectsTransaction_

#define RESTRICT_OrgMinimaUtilsStreamable 1
#define INCLUDE_OrgMinimaUtilsStreamable 1
#include "org/minima/utils/Streamable.h"

@class JavaIoDataInputStream;
@class JavaIoDataOutputStream;
@class JavaUtilArrayList;
@class OrgMinimaObjectsBaseMiniData;
@class OrgMinimaObjectsBaseMiniNumber;
@class OrgMinimaObjectsCoin;
@class OrgMinimaObjectsProofsTokenProof;
@class OrgMinimaObjectsStateVariable;
@class OrgMinimaUtilsJsonJSONObject;

@interface OrgMinimaObjectsTransaction : NSObject < OrgMinimaUtilsStreamable > {
 @public
  OrgMinimaObjectsBaseMiniData *mLinkHash_;
  JavaUtilArrayList *mInputs_;
  JavaUtilArrayList *mOutputs_;
  JavaUtilArrayList *mState_;
  OrgMinimaObjectsProofsTokenProof *mTokenGenDetails_;
}

#pragma mark Public

- (instancetype)init;

- (void)addInputWithOrgMinimaObjectsCoin:(OrgMinimaObjectsCoin *)zCoin;

- (void)addInputWithOrgMinimaObjectsCoin:(OrgMinimaObjectsCoin *)zCoin
                                 withInt:(jint)zPosition;

- (void)addOutputWithOrgMinimaObjectsCoin:(OrgMinimaObjectsCoin *)zCoin;

- (void)addOutputWithOrgMinimaObjectsCoin:(OrgMinimaObjectsCoin *)zCoin
                                  withInt:(jint)zPosition;

- (void)addStateVariableWithOrgMinimaObjectsStateVariable:(OrgMinimaObjectsStateVariable *)zValue;

- (jboolean)checkValidInOutPerToken;

- (void)clearState;

- (OrgMinimaObjectsTransaction *)deepCopy;

- (JavaUtilArrayList *)getAllInputs;

- (JavaUtilArrayList *)getAllOutputs;

- (JavaUtilArrayList *)getCompleteState;

- (OrgMinimaObjectsBaseMiniData *)getLinkHash;

- (OrgMinimaObjectsCoin *)getRemainderCoinWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zTokenID;

- (OrgMinimaObjectsStateVariable *)getStateValueWithInt:(jint)zStateNum;

- (OrgMinimaObjectsProofsTokenProof *)getTokenGenerationDetails;

- (jboolean)isEmpty;

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn;

- (void)setTokenGenerationDetailsWithOrgMinimaObjectsProofsTokenProof:(OrgMinimaObjectsProofsTokenProof *)zTokenDetails;

- (jboolean)stateExistsWithInt:(jint)zStateNum;

- (OrgMinimaObjectsBaseMiniNumber *)sumInputs;

- (OrgMinimaObjectsBaseMiniNumber *)sumInputsWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zTokenID;

- (OrgMinimaObjectsBaseMiniNumber *)sumOutputs;

- (OrgMinimaObjectsBaseMiniNumber *)sumOutputsWithOrgMinimaObjectsBaseMiniData:(OrgMinimaObjectsBaseMiniData *)zTokenID;

- (OrgMinimaUtilsJsonJSONObject *)toJSON;

- (NSString *)description;

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaObjectsTransaction)

J2OBJC_FIELD_SETTER(OrgMinimaObjectsTransaction, mLinkHash_, OrgMinimaObjectsBaseMiniData *)
J2OBJC_FIELD_SETTER(OrgMinimaObjectsTransaction, mInputs_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgMinimaObjectsTransaction, mOutputs_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgMinimaObjectsTransaction, mState_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgMinimaObjectsTransaction, mTokenGenDetails_, OrgMinimaObjectsProofsTokenProof *)

FOUNDATION_EXPORT void OrgMinimaObjectsTransaction_init(OrgMinimaObjectsTransaction *self);

FOUNDATION_EXPORT OrgMinimaObjectsTransaction *new_OrgMinimaObjectsTransaction_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaObjectsTransaction *create_OrgMinimaObjectsTransaction_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaObjectsTransaction)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaObjectsTransaction")
