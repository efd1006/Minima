//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/SeedPhrase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaUtilsSeedPhrase")
#ifdef RESTRICT_OrgMinimaUtilsSeedPhrase
#define INCLUDE_ALL_OrgMinimaUtilsSeedPhrase 0
#else
#define INCLUDE_ALL_OrgMinimaUtilsSeedPhrase 1
#endif
#undef RESTRICT_OrgMinimaUtilsSeedPhrase

#if !defined (OrgMinimaUtilsSeedPhrase_) && (INCLUDE_ALL_OrgMinimaUtilsSeedPhrase || defined(INCLUDE_OrgMinimaUtilsSeedPhrase))
#define OrgMinimaUtilsSeedPhrase_

@class IOSObjectArray;

@interface OrgMinimaUtilsSeedPhrase : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs;

@end

J2OBJC_STATIC_INIT(OrgMinimaUtilsSeedPhrase)

inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_get_ARTICLE(void);
inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_set_ARTICLE(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaUtilsSeedPhrase_ARTICLE;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsSeedPhrase, ARTICLE, IOSObjectArray *)

inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_get_ADJS(void);
inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_set_ADJS(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaUtilsSeedPhrase_ADJS;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsSeedPhrase, ADJS, IOSObjectArray *)

inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_get_COLOUR(void);
inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_set_COLOUR(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaUtilsSeedPhrase_COLOUR;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsSeedPhrase, COLOUR, IOSObjectArray *)

inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_get_NOUNS(void);
inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_set_NOUNS(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaUtilsSeedPhrase_NOUNS;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsSeedPhrase, NOUNS, IOSObjectArray *)

inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_get_VERB(void);
inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_set_VERB(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaUtilsSeedPhrase_VERB;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsSeedPhrase, VERB, IOSObjectArray *)

inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_get_CONJ(void);
inline IOSObjectArray *OrgMinimaUtilsSeedPhrase_set_CONJ(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaUtilsSeedPhrase_CONJ;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaUtilsSeedPhrase, CONJ, IOSObjectArray *)

FOUNDATION_EXPORT void OrgMinimaUtilsSeedPhrase_init(OrgMinimaUtilsSeedPhrase *self);

FOUNDATION_EXPORT OrgMinimaUtilsSeedPhrase *new_OrgMinimaUtilsSeedPhrase_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaUtilsSeedPhrase *create_OrgMinimaUtilsSeedPhrase_init(void);

FOUNDATION_EXPORT void OrgMinimaUtilsSeedPhrase_mainWithNSStringArray_(IOSObjectArray *zArgs);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaUtilsSeedPhrase)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaUtilsSeedPhrase")
