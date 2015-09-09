.class public Lcn/aow/android/DOWConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REPORT_DEXLOADFAIL:Ljava/lang/String; = "report_dexloadfail"

.field public static final REPORT_DOWNLOADFAIL:Ljava/lang/String; = "report_downloadfail"

.field public static final REPORT_DOWNLOADSUCCESS:Ljava/lang/String; = "report_downloadsuccess"

.field public static final REPORT_MD5FAIL:Ljava/lang/String; = "report_md5fail"

.field public static final REPORT_NODEXCHECKPOINTS:Ljava/lang/String; = "report_nodexcheckpoints"

.field public static final REPORT_NODEXCONSUMEPOINTS:Ljava/lang/String; = "report_nodexconsumepoints"

.field public static final REPORT_NODEXSHOW:Ljava/lang/String; = "report_nodexshow"

.field public static final REPORT_UPDATEFAIL:Ljava/lang/String; = "report_updatefail"

.field public static final REPORT_UPDATEJSON_FAIL:Ljava/lang/String; = "updatejsion_fail"

.field public static final SDK_VERSION:Ljava/lang/String; = "030100"

.field protected static a:Ljava/lang/String; = null

.field protected static final b:Ljava/lang/String; = "dmaow@12*!secrue"

.field protected static final c:Ljava/lang/String; = "dlh@zyjx,ayse.yx"

.field protected static final d:Ljava/lang/String; = "preference_daow"

.field protected static final e:Ljava/lang/String; = "030100"

.field protected static final f:Ljava/lang/String; = "columns_jsv"

.field protected static final g:Ljava/lang/String; = "columns_jfn"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "http://aow.dmaow.com/a/aow/update?"

    sput-object v0, Lcn/aow/android/DOWConstants;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
