//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/txpowtree/BlockTree.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTree")
#ifdef RESTRICT_OrgMinimaDatabaseTxpowtreeBlockTree
#define INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTree 0
#else
#define INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTree 1
#endif
#undef RESTRICT_OrgMinimaDatabaseTxpowtreeBlockTree

#if !defined (OrgMinimaDatabaseTxpowtreeBlockTree_) && (INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTree || defined(INCLUDE_OrgMinimaDatabaseTxpowtreeBlockTree))
#define OrgMinimaDatabaseTxpowtreeBlockTree_

@class JavaUtilArrayList;
@class OrgMinimaDatabaseTxpowtreeBlockTreeNode;
@class OrgMinimaObjectsBaseMiniData32;
@class OrgMinimaObjectsBaseMiniNumber;

@interface OrgMinimaDatabaseTxpowtreeBlockTree : NSObject {
 @public
  OrgMinimaDatabaseTxpowtreeBlockTreeNode *mRoot_;
  OrgMinimaDatabaseTxpowtreeBlockTreeNode *mTip_;
  OrgMinimaDatabaseTxpowtreeBlockTreeNode *mCascadeNode_;
  OrgMinimaDatabaseTxpowtreeBlockTreeNode *mLastNode_;
}

#pragma mark Public

- (instancetype)init;

- (jboolean)addNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode;

- (OrgMinimaDatabaseTxpowtreeBlockTreeNode *)findNodeWithOrgMinimaObjectsBaseMiniData32:(OrgMinimaObjectsBaseMiniData32 *)zTxPOWID;

- (JavaUtilArrayList *)getAsList;

- (JavaUtilArrayList *)getAsListWithBoolean:(jboolean)zReverse;

- (OrgMinimaObjectsBaseMiniNumber *)getAvgChainDifficulty;

- (OrgMinimaDatabaseTxpowtreeBlockTreeNode *)getCascadeNode;

- (OrgMinimaDatabaseTxpowtreeBlockTreeNode *)getChainRoot;

- (jdouble)getChainSpeed;

- (OrgMinimaDatabaseTxpowtreeBlockTreeNode *)getChainTip;

- (OrgMinimaDatabaseTxpowtreeBlockTreeNode *)getLastNode;

- (void)hardAddNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode
                                                   withBoolean:(jboolean)zLinkAll;

- (void)hardSetCascadeNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode;

- (void)resetWeights;

- (void)setTreeRootWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaDatabaseTxpowtreeBlockTree)

J2OBJC_FIELD_SETTER(OrgMinimaDatabaseTxpowtreeBlockTree, mRoot_, OrgMinimaDatabaseTxpowtreeBlockTreeNode *)
J2OBJC_FIELD_SETTER(OrgMinimaDatabaseTxpowtreeBlockTree, mTip_, OrgMinimaDatabaseTxpowtreeBlockTreeNode *)
J2OBJC_FIELD_SETTER(OrgMinimaDatabaseTxpowtreeBlockTree, mCascadeNode_, OrgMinimaDatabaseTxpowtreeBlockTreeNode *)
J2OBJC_FIELD_SETTER(OrgMinimaDatabaseTxpowtreeBlockTree, mLastNode_, OrgMinimaDatabaseTxpowtreeBlockTreeNode *)

FOUNDATION_EXPORT void OrgMinimaDatabaseTxpowtreeBlockTree_init(OrgMinimaDatabaseTxpowtreeBlockTree *self);

FOUNDATION_EXPORT OrgMinimaDatabaseTxpowtreeBlockTree *new_OrgMinimaDatabaseTxpowtreeBlockTree_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaDatabaseTxpowtreeBlockTree *create_OrgMinimaDatabaseTxpowtreeBlockTree_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaDatabaseTxpowtreeBlockTree)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTree")
