//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/database/txpowtree/BlockTreeStore.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTreeStore")
#ifdef RESTRICT_OrgMinimaDatabaseTxpowtreeBlockTreeStore
#define INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTreeStore 0
#else
#define INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTreeStore 1
#endif
#undef RESTRICT_OrgMinimaDatabaseTxpowtreeBlockTreeStore

#if !defined (OrgMinimaDatabaseTxpowtreeBlockTreeStore_) && (INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTreeStore || defined(INCLUDE_OrgMinimaDatabaseTxpowtreeBlockTreeStore))
#define OrgMinimaDatabaseTxpowtreeBlockTreeStore_

#define RESTRICT_OrgMinimaUtilsStreamable 1
#define INCLUDE_OrgMinimaUtilsStreamable 1
#include "org/minima/utils/Streamable.h"

@class JavaIoDataInputStream;
@class JavaIoDataOutputStream;
@class OrgMinimaDatabaseTxpowtreeBlockTree;

@interface OrgMinimaDatabaseTxpowtreeBlockTreeStore : NSObject < OrgMinimaUtilsStreamable > {
 @public
  OrgMinimaDatabaseTxpowtreeBlockTree *mTree_;
}

#pragma mark Public

- (instancetype)initWithOrgMinimaDatabaseTxpowtreeBlockTree:(OrgMinimaDatabaseTxpowtreeBlockTree *)zTree;

- (OrgMinimaDatabaseTxpowtreeBlockTree *)getTree;

- (void)readDataStreamWithJavaIoDataInputStream:(JavaIoDataInputStream *)zIn;

- (void)writeDataStreamWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)zOut;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMinimaDatabaseTxpowtreeBlockTreeStore)

J2OBJC_FIELD_SETTER(OrgMinimaDatabaseTxpowtreeBlockTreeStore, mTree_, OrgMinimaDatabaseTxpowtreeBlockTree *)

FOUNDATION_EXPORT void OrgMinimaDatabaseTxpowtreeBlockTreeStore_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(OrgMinimaDatabaseTxpowtreeBlockTreeStore *self, OrgMinimaDatabaseTxpowtreeBlockTree *zTree);

FOUNDATION_EXPORT OrgMinimaDatabaseTxpowtreeBlockTreeStore *new_OrgMinimaDatabaseTxpowtreeBlockTreeStore_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(OrgMinimaDatabaseTxpowtreeBlockTree *zTree) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaDatabaseTxpowtreeBlockTreeStore *create_OrgMinimaDatabaseTxpowtreeBlockTreeStore_initWithOrgMinimaDatabaseTxpowtreeBlockTree_(OrgMinimaDatabaseTxpowtreeBlockTree *zTree);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaDatabaseTxpowtreeBlockTreeStore)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaDatabaseTxpowtreeBlockTreeStore")
