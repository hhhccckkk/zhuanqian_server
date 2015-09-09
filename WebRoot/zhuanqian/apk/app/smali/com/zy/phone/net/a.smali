.class public final Lcom/zy/phone/net/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/content/SharedPreferences;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zy/phone/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zy/phone/net/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/zy/phone/j;

    invoke-direct {v0, p1}, Lcom/zy/phone/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    const-string v0, "zy_init"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "AdsId"

    aput-object v1, v0, v6

    const-string v1, "AppCode"

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    aput-object p0, v1, v6

    sget-object v2, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "AppCode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FUNC"

    aput-object v2, v1, v6

    const-string v2, "Token"

    aput-object v2, v1, v7

    const-string v2, "PARAM"

    aput-object v2, v1, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "201002"

    aput-object v3, v2, v6

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "Token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "AppCode"

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "AppCode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FUNC"

    aput-object v2, v1, v6

    const-string v2, "Token"

    aput-object v2, v1, v7

    const-string v2, "PARAM"

    aput-object v2, v1, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "101002"

    aput-object v3, v2, v6

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "Token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "AdsId"

    aput-object v1, v0, v6

    const-string v1, "AppCode"

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    aput-object p0, v1, v6

    sget-object v2, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "AppCode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FUNC"

    aput-object v2, v1, v6

    const-string v2, "Token"

    aput-object v2, v1, v7

    const-string v2, "PARAM"

    aput-object v2, v1, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "201001"

    aput-object v3, v2, v6

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "Token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "AppCode"

    aput-object v1, v0, v6

    const-string v1, "Integral"

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    sget-object v2, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "AppCode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FUNC"

    aput-object v2, v1, v6

    const-string v2, "Token"

    aput-object v2, v1, v7

    const-string v2, "PARAM"

    aput-object v2, v1, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "101003"

    aput-object v3, v2, v6

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "Token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "AppCode"

    aput-object v1, v0, v6

    const-string v1, "Integral"

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    sget-object v2, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "AppCode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FUNC"

    aput-object v2, v1, v6

    const-string v2, "Token"

    aput-object v2, v1, v7

    const-string v2, "PARAM"

    aput-object v2, v1, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "101004"

    aput-object v3, v2, v6

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "Token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/16 v0, 0xc

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMEI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMSI"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AndroidId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Phone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NetType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SysVer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Operator"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AppCode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Mac"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-virtual {v3}, Lcom/zy/phone/j;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-virtual {v3}, Lcom/zy/phone/j;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-virtual {v3}, Lcom/zy/phone/j;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "Other"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "1.0.7"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-static {}, Lcom/zy/phone/j;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-virtual {v3}, Lcom/zy/phone/j;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-static {}, Lcom/zy/phone/j;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-virtual {v3}, Lcom/zy/phone/j;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/zy/phone/net/a;->c:Landroid/content/SharedPreferences;

    const-string v4, "AppCode"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/zy/phone/net/a;->b:Lcom/zy/phone/j;

    invoke-virtual {v3}, Lcom/zy/phone/j;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FUNC"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PARAM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "101001"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/zy/phone/g;->a([Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/zy/phone/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/phone/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
