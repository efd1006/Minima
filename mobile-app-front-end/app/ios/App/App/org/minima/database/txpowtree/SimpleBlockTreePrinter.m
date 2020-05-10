//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/txpowtree/SimpleBlockTreePrinter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "java/math/BigInteger.h"
#include "java/util/ArrayList.h"
#include "org/minima/GlobalParams.h"
#include "org/minima/database/txpowtree/BlockTree.h"
#include "org/minima/database/txpowtree/BlockTreeNode.h"
#include "org/minima/database/txpowtree/SimpleBlockTreePrinter.h"
#include "org/minima/objects/TxPOW.h"
#include "org/minima/objects/base/MiniData.h"
#include "org/minima/objects/base/MiniNumber.h"
#include "org/minima/utils/bretty/TreeNode.h"
#include "org/minima/utils/bretty/TreePrinter.h"

@interface OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter ()

- (NSString *)convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode;

- (NSString *)getStarStringWithInt:(jint)zLen;

- (void)drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode
                            withOrgMinimaUtilsBrettyTreeNode:(OrgMinimaUtilsBrettyTreeNode *)zTreeNode
                                                     withInt:(jint)zLevel;

@end

__attribute__((unused)) static NSString *OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, OrgMinimaDatabaseTxpowtreeBlockTreeNode *zNode);

__attribute__((unused)) static NSString *OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_getStarStringWithInt_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, jint zLen);

__attribute__((unused)) static void OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_withOrgMinimaUtilsBrettyTreeNode_withInt_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, OrgMinimaDatabaseTxpowtreeBlockTreeNode *zNode, OrgMinimaUtilsBrettyTreeNode *zTreeNode, jint zLevel);

@implementation OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter

- (instancetype)initWithOrgMinimaDatabaseTxpowtreeBlockTree:(OrgMinimaDatabaseTxpowtreeBlockTree *)zTree {
  OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(self, zTree);
  return self;
}

- (NSString *)printtree {
  OrgMinimaDatabaseTxpowtreeBlockTreeNode *root = [((OrgMinimaDatabaseTxpowtreeBlockTree *) nil_chk(mTree_)) getChainRoot];
  if (root == nil) {
    return @"No tree root..";
  }
  mCascadeNode_ = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaObjectsTxPOW *) nil_chk([((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk([((OrgMinimaDatabaseTxpowtreeBlockTree *) nil_chk(mTree_)) getCascadeNode])) getTxPow])) getBlockNumber])) getAsLong];
  mTipID_ = [((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk([((OrgMinimaDatabaseTxpowtreeBlockTree *) nil_chk(mTree_)) getChainTip])) getTxPowID];
  OrgMinimaObjectsBaseMiniNumber *tip = [((OrgMinimaObjectsTxPOW *) nil_chk([((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk([((OrgMinimaDatabaseTxpowtreeBlockTree *) nil_chk(mTree_)) getChainTip])) getTxPow])) getBlockNumber];
  OrgMinimaObjectsBaseMiniNumber *starttree = [((OrgMinimaObjectsBaseMiniNumber *) nil_chk(tip)) subWithOrgMinimaObjectsBaseMiniNumber:JreLoadStatic(OrgMinimaObjectsBaseMiniNumber, THIRTYTWO)];
  if ([((OrgMinimaObjectsBaseMiniNumber *) nil_chk(starttree)) isLessWithOrgMinimaObjectsBaseMiniNumber:JreLoadStatic(OrgMinimaObjectsBaseMiniNumber, ZERO)]) {
    starttree = JreLoadStatic(OrgMinimaObjectsBaseMiniNumber, ZERO);
  }
  IOSIntArray *alltots = [IOSIntArray newArrayWithLength:OrgMinimaGlobalParams_MINIMA_CASCADE_LEVELS];
  OrgMinimaUtilsBrettyTreeNode *rootnode = new_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_(self, root));
  OrgMinimaUtilsBrettyTreeNode *treenode = rootnode;
  OrgMinimaUtilsBrettyTreeNode *newnode = nil;
  OrgMinimaDatabaseTxpowtreeBlockTreeNode *current = root;
  jint currentlev = [current getCurrentLevel];
  jint tot = 1;
  (*IOSIntArray_GetRef(alltots, [current getSuperBlockLevel]))++;
  while ([((OrgMinimaObjectsBaseMiniNumber *) nil_chk([((OrgMinimaObjectsTxPOW *) nil_chk([current getTxPow])) getBlockNumber])) isLessWithOrgMinimaObjectsBaseMiniNumber:starttree]) {
    if ([((JavaUtilArrayList *) nil_chk([current getChildren])) size] < 1) {
      break;
    }
    OrgMinimaDatabaseTxpowtreeBlockTreeNode *child = [current getChildWithInt:0];
    jint clev = [((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk(child)) getCurrentLevel];
    if (clev == currentlev) {
      tot++;
      (*IOSIntArray_GetRef(alltots, [child getSuperBlockLevel]))++;
    }
    else {
      NSString *all = @"";
      for (jint i = 0; i < OrgMinimaGlobalParams_MINIMA_CASCADE_LEVELS; i++) {
        if (IOSIntArray_Get(alltots, i) != 0) {
          (void) JreStrAppendStrong(&all, "ICIC", IOSIntArray_Get(alltots, i), '@', i, ' ');
        }
        *IOSIntArray_GetRef(alltots, i) = 0;
      }
      newnode = new_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(JreStrcat("I$I$$", tot, @" @ ", currentlev, @" Super:", all));
      [treenode addChildWithOrgMinimaUtilsBrettyTreeNode:newnode];
      treenode = newnode;
      newnode = new_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_(self, child));
      [treenode addChildWithOrgMinimaUtilsBrettyTreeNode:newnode];
      treenode = newnode;
      (*IOSIntArray_GetRef(alltots, [child getSuperBlockLevel]))++;
      tot = 1;
    }
    currentlev = clev;
    current = child;
  }
  NSString *all = @"";
  for (jint i = 0; i < OrgMinimaGlobalParams_MINIMA_CASCADE_LEVELS; i++) {
    if (IOSIntArray_Get(alltots, i) != 0) {
      (void) JreStrAppendStrong(&all, "ICIC", IOSIntArray_Get(alltots, i), '@', i, ' ');
    }
    *IOSIntArray_GetRef(alltots, i) = 0;
  }
  newnode = new_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(JreStrcat("I$I$$", tot, @" @ ", currentlev, @" Super:", all));
  [treenode addChildWithOrgMinimaUtilsBrettyTreeNode:newnode];
  treenode = newnode;
  OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_withOrgMinimaUtilsBrettyTreeNode_withInt_(self, current, treenode, 1);
  NSString *output = JreStrcat("C$", 0x000a, OrgMinimaUtilsBrettyTreePrinter_toStringWithOrgMinimaUtilsBrettyPrintableTreeNode_(rootnode));
  return output;
}

- (NSString *)convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode {
  return OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_(self, zNode);
}

- (NSString *)getStarStringWithInt:(jint)zLen {
  return OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_getStarStringWithInt_(self, zLen);
}

- (void)drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:(OrgMinimaDatabaseTxpowtreeBlockTreeNode *)zNode
                            withOrgMinimaUtilsBrettyTreeNode:(OrgMinimaUtilsBrettyTreeNode *)zTreeNode
                                                     withInt:(jint)zLevel {
  OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_withOrgMinimaUtilsBrettyTreeNode_withInt_(self, zNode, zTreeNode, zLevel);
}

+ (void)clearScreen {
  OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_clearScreen();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgMinimaDatabaseTxpowtreeBlockTree:);
  methods[1].selector = @selector(printtree);
  methods[2].selector = @selector(convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:);
  methods[3].selector = @selector(getStarStringWithInt:);
  methods[4].selector = @selector(drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode:withOrgMinimaUtilsBrettyTreeNode:withInt:);
  methods[5].selector = @selector(clearScreen);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mTree_", "LOrgMinimaDatabaseTxpowtreeBlockTree;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCascadeNode_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mTipID_", "LOrgMinimaObjectsBaseMiniData;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgMinimaDatabaseTxpowtreeBlockTree;", "convertNodeToString", "LOrgMinimaDatabaseTxpowtreeBlockTreeNode;", "getStarString", "I", "drillNode", "LOrgMinimaDatabaseTxpowtreeBlockTreeNode;LOrgMinimaUtilsBrettyTreeNode;I" };
  static const J2ObjcClassInfo _OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter = { "SimpleBlockTreePrinter", "org.minima.database.txpowtree", ptrTable, methods, fields, 7, 0x1, 6, 3, -1, -1, -1, -1, -1 };
  return &_OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter;
}

@end

void OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, OrgMinimaDatabaseTxpowtreeBlockTree *zTree) {
  NSObject_init(self);
  self->mCascadeNode_ = 0;
  self->mTree_ = zTree;
}

OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *new_OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(OrgMinimaDatabaseTxpowtreeBlockTree *zTree) {
  J2OBJC_NEW_IMPL(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter, initWithOrgMinimaDatabaseTxpowtreeBlockTree_, zTree)
}

OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *create_OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(OrgMinimaDatabaseTxpowtreeBlockTree *zTree) {
  J2OBJC_CREATE_IMPL(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter, initWithOrgMinimaDatabaseTxpowtreeBlockTree_, zTree)
}

NSString *OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, OrgMinimaDatabaseTxpowtreeBlockTreeNode *zNode) {
  jint slev = [((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk(zNode)) getSuperBlockLevel];
  jint clev = [zNode getCurrentLevel];
  NSString *weight = JreStrcat("$@C@C", @"WEIGHT:", [zNode getWeight], '/', [zNode getTotalWeight], ' ');
  OrgMinimaObjectsTxPOW *txpow = [zNode getTxPow];
  OrgMinimaObjectsBaseMiniData *parent = [((OrgMinimaObjectsTxPOW *) nil_chk(txpow)) getSuperParentWithInt:clev];
  OrgMinimaObjectsBaseMiniData *parent2 = [txpow getSuperParentWithInt:clev + 1];
  NSString *parents = JreStrcat("$@$$$IC$$IC$$IC", @"[blk:", [txpow getBlockNumber], @"] txpowid:", [((OrgMinimaObjectsBaseMiniData *) nil_chk([zNode getTxPowID])) to0xStringWithInt:16], @" [parent:", clev, ']', [((OrgMinimaObjectsBaseMiniData *) nil_chk(parent)) to0xStringWithInt:16], @" [parent:", (clev + 1), ']', [((OrgMinimaObjectsBaseMiniData *) nil_chk(parent2)) to0xStringWithInt:16], @"[txns:", [((JavaUtilArrayList *) nil_chk([txpow getBlockTransactions])) size], ']');
  NSString *add = JreStrcat("$$$$$", parents, @" [", OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_getStarStringWithInt_(self, slev), @"] - ", OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_getStarStringWithInt_(self, clev));
  return JreStrcat("$CI$I$$", weight, '[', clev, @" / ", slev, @"] ", add);
}

NSString *OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_getStarStringWithInt_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, jint zLen) {
  NSString *ret = @"";
  for (jint i = 0; i < zLen; i++) {
    (void) JreStrAppendStrong(&ret, "$", @"*");
  }
  return ret;
}

void OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_withOrgMinimaUtilsBrettyTreeNode_withInt_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter *self, OrgMinimaDatabaseTxpowtreeBlockTreeNode *zNode, OrgMinimaUtilsBrettyTreeNode *zTreeNode, jint zLevel) {
  JavaUtilArrayList *children = [((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk(zNode)) getChildren];
  for (OrgMinimaDatabaseTxpowtreeBlockTreeNode * __strong child in nil_chk(children)) {
    OrgMinimaUtilsBrettyTreeNode *chilnode = new_OrgMinimaUtilsBrettyTreeNode_initWithNSString_(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_convertNodeToStringWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_(self, child));
    [((OrgMinimaUtilsBrettyTreeNode *) nil_chk(zTreeNode)) addChildWithOrgMinimaUtilsBrettyTreeNode:chilnode];
    OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_drillNodeWithOrgMinimaDatabaseTxpowtreeBlockTreeNode_withOrgMinimaUtilsBrettyTreeNode_withInt_(self, child, chilnode, [((OrgMinimaDatabaseTxpowtreeBlockTreeNode *) nil_chk(child)) getCurrentLevel]);
  }
}

void OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_clearScreen() {
  OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printWithNSString:@"\x1b[H\x1b[2J"];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) flush];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaDatabaseTxpowtreeSimpleBlockTreePrinter)
