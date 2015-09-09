.class public final Lcom/yql/sdk/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/yql/sdk/a/d;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/yql/sdk/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yql/sdk/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/yql/sdk/a/d;->b:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/yql/sdk/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/yql/sdk/e;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.android.dianru.com/active/android_apk.do?"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yql/sdk/a/e;

    invoke-direct {v1, p0, p2}, Lcom/yql/sdk/a/e;-><init>(Ljava/lang/String;Lcom/yql/sdk/e;)V

    invoke-static {v0, v1}, Lcom/yql/sdk/b/d;->a(Ljava/lang/String;Lcom/yql/sdk/b/c;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yql/sdk/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/yql/sdk/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yql/sdk/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/yql/sdk/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/yql/sdk/a/d;->b:Ljava/lang/Boolean;

    return-object v0
.end method
