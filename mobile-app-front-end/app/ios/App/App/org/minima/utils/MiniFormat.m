//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./org/minima/utils/MiniFormat.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "org/minima/utils/MiniFormat.h"

@interface OrgMinimaUtilsMiniFormat ()

+ (NSString *)maketabstringWithInt:(jint)zNum;

@end

__attribute__((unused)) static NSString *OrgMinimaUtilsMiniFormat_maketabstringWithInt_(jint zNum);

@implementation OrgMinimaUtilsMiniFormat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgMinimaUtilsMiniFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)PrettyJSONWithNSString:(NSString *)zJSON {
  return OrgMinimaUtilsMiniFormat_PrettyJSONWithNSString_(zJSON);
}

+ (NSString *)maketabstringWithInt:(jint)zNum {
  return OrgMinimaUtilsMiniFormat_maketabstringWithInt_(zNum);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)zArgs {
  OrgMinimaUtilsMiniFormat_mainWithNSStringArray_(zArgs);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(PrettyJSONWithNSString:);
  methods[2].selector = @selector(maketabstringWithInt:);
  methods[3].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "PrettyJSON", "LNSString;", "maketabstring", "I", "main", "[LNSString;" };
  static const J2ObjcClassInfo _OrgMinimaUtilsMiniFormat = { "MiniFormat", "org.minima.utils", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgMinimaUtilsMiniFormat;
}

@end

void OrgMinimaUtilsMiniFormat_init(OrgMinimaUtilsMiniFormat *self) {
  NSObject_init(self);
}

OrgMinimaUtilsMiniFormat *new_OrgMinimaUtilsMiniFormat_init() {
  J2OBJC_NEW_IMPL(OrgMinimaUtilsMiniFormat, init)
}

OrgMinimaUtilsMiniFormat *create_OrgMinimaUtilsMiniFormat_init() {
  J2OBJC_CREATE_IMPL(OrgMinimaUtilsMiniFormat, init)
}

NSString *OrgMinimaUtilsMiniFormat_PrettyJSONWithNSString_(NSString *zJSON) {
  OrgMinimaUtilsMiniFormat_initialize();
  NSString *ret = @"";
  jint len = [((NSString *) nil_chk(zJSON)) java_length];
  jint tabs = 0;
  NSString *tabstring = OrgMinimaUtilsMiniFormat_maketabstringWithInt_(tabs);
  jboolean inquotes = false;
  for (jint i = 0; i < len; i++) {
    jchar cc = [zJSON charAtWithInt:i];
    if (cc == '"') {
      inquotes = !inquotes;
    }
    if (!inquotes) {
      if (cc == '{') {
        tabs++;
        tabstring = OrgMinimaUtilsMiniFormat_maketabstringWithInt_(tabs);
        JreStrAppend(&ret, "$", @"{\n");
        JreStrAppend(&ret, "$", tabstring);
      }
      else if (cc == '}') {
        tabs--;
        tabstring = OrgMinimaUtilsMiniFormat_maketabstringWithInt_(tabs);
        JreStrAppend(&ret, "$", @"\n");
        JreStrAppend(&ret, "$", tabstring);
        JreStrAppend(&ret, "$", @"}");
      }
      else if (cc == ',') {
        JreStrAppend(&ret, "$", @",\n");
        JreStrAppend(&ret, "$", tabstring);
      }
      else {
        JreStrAppend(&ret, "C", cc);
      }
    }
    else {
      JreStrAppend(&ret, "C", cc);
    }
  }
  return ret;
}

NSString *OrgMinimaUtilsMiniFormat_maketabstringWithInt_(jint zNum) {
  OrgMinimaUtilsMiniFormat_initialize();
  NSString *ret = @"";
  for (jint i = 0; i < zNum; i++) {
    JreStrAppend(&ret, "$", @"  ");
  }
  return ret;
}

void OrgMinimaUtilsMiniFormat_mainWithNSStringArray_(IOSObjectArray *zArgs) {
  OrgMinimaUtilsMiniFormat_initialize();
  NSString *test = @"{\"version\":0.4,\"milliuptime\":2450,\"stringuptime\":\"0 Years 0 Months 0 Weeks 0 Days 0 Hours 0 Minutes 2 Seconds 450 Milliseconds\",\"conf\":\"\\/home\\/spartacusrex\\/minima\\/minima\",\"host\":\"0.0.0.0\",\"port\":9001,\"pulse\":true,\"root\":{\"block\":0,\"isblock\":true,\"txpowid\":\"0x8C73A2FF132C3242E83FA2F6AD389884A3170C0D5AE283BDEC89DD08151DD8E8\",\"parent\":\"0x0000000000000000000000000000000000000000000000000000000000000000\",\"blkdiff\":0,\"txndiff\":0,\"txn\":{\"inputs\":[],\"outputs\":[]},\"witness\":params[] pubk[] scripts[],\"txnlist\":[],\"nonce\":256,\"mmr\":\"0x7094AA8139BFBCC37CA832CADD5BB49ECCB2C54C6C1C6FC8DBAB354BA052BF66\",\"timemilli\":1573815008746},\"tip\":{\"block\":7,\"isblock\":true,\"txpowid\":\"0x188CF963491A7ED735CC60217C29598F86631503F4A7BB228AE9CAA3C85EF2EA\",\"parent\":\"0x8F50F40A85EABC440C10AB0781C39C41B3F44DC1A793C176AC4ECEB80F680AFE\",\"blkdiff\":0,\"txndiff\":0,\"txn\":{\"inputs\":[],\"outputs\":[]},\"witness\":params[] pubk[] scripts[],\"txnlist\":[],\"nonce\":-2804983266292932580,\"mmr\":\"0x7094AA8139BFBCC37CA832CADD5BB49ECCB2C54C6C1C6FC8DBAB354BA052BF66\",\"timemilli\":1573815011101},\"chainspeed\":2.9723991507431,\"lastblock\":7,\"totalpow\":8}";
  NSString *pretty = OrgMinimaUtilsMiniFormat_PrettyJSONWithNSString_(test);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:pretty];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgMinimaUtilsMiniFormat)
