//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/system/network/minidapps/hexdata/minidappscss.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss")
#ifdef RESTRICT_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss
#define INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss 0
#else
#define INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss 1
#endif
#undef RESTRICT_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss

#if !defined (OrgMinimaSystemNetworkMinidappsHexdataminidappscss_) && (INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss || defined(INCLUDE_OrgMinimaSystemNetworkMinidappsHexdataminidappscss))
#define OrgMinimaSystemNetworkMinidappsHexdataminidappscss_

@class IOSByteArray;
@class IOSObjectArray;

@interface OrgMinimaSystemNetworkMinidappsHexdataminidappscss : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSByteArray *)returnData;

@end

J2OBJC_STATIC_INIT(OrgMinimaSystemNetworkMinidappsHexdataminidappscss)

inline jint OrgMinimaSystemNetworkMinidappsHexdataminidappscss_get_HEXNUM(void);
#define OrgMinimaSystemNetworkMinidappsHexdataminidappscss_HEXNUM 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgMinimaSystemNetworkMinidappsHexdataminidappscss, HEXNUM, jint)

inline IOSObjectArray *OrgMinimaSystemNetworkMinidappsHexdataminidappscss_get_HEXDATA(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgMinimaSystemNetworkMinidappsHexdataminidappscss_HEXDATA;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgMinimaSystemNetworkMinidappsHexdataminidappscss, HEXDATA, IOSObjectArray *)

inline IOSByteArray *OrgMinimaSystemNetworkMinidappsHexdataminidappscss_get_FINAL_ARRAY(void);
inline IOSByteArray *OrgMinimaSystemNetworkMinidappsHexdataminidappscss_set_FINAL_ARRAY(IOSByteArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *OrgMinimaSystemNetworkMinidappsHexdataminidappscss_FINAL_ARRAY;
J2OBJC_STATIC_FIELD_OBJ(OrgMinimaSystemNetworkMinidappsHexdataminidappscss, FINAL_ARRAY, IOSByteArray *)

FOUNDATION_EXPORT void OrgMinimaSystemNetworkMinidappsHexdataminidappscss_init(OrgMinimaSystemNetworkMinidappsHexdataminidappscss *self);

FOUNDATION_EXPORT OrgMinimaSystemNetworkMinidappsHexdataminidappscss *new_OrgMinimaSystemNetworkMinidappsHexdataminidappscss_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgMinimaSystemNetworkMinidappsHexdataminidappscss *create_OrgMinimaSystemNetworkMinidappsHexdataminidappscss_init(void);

FOUNDATION_EXPORT IOSByteArray *OrgMinimaSystemNetworkMinidappsHexdataminidappscss_returnData(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgMinimaSystemNetworkMinidappsHexdataminidappscss)

@compatibility_alias OrgMinimaSystemNetworkMinidappsHexdataMinidappscss OrgMinimaSystemNetworkMinidappsHexdataminidappscss;

#endif

#pragma pop_macro("INCLUDE_ALL_OrgMinimaSystemNetworkMinidappsHexdataMinidappscss")
