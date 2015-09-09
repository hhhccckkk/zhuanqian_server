.class public Lcn/yeeguo/YeeguoPhoneInfoUtil;
.super Ljava/lang/Object;
.source "YeeguoPhoneInfoUtil.java"


# static fields
.field static phoneinfo:Lcn/yeeguo/YeeguoPhoneInfoUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private infoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 32
    iput-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    iput-object p1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method protected static getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->phoneinfo:Lcn/yeeguo/YeeguoPhoneInfoUtil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcn/yeeguo/YeeguoPhoneInfoUtil;

    invoke-direct {v0, p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->phoneinfo:Lcn/yeeguo/YeeguoPhoneInfoUtil;

    .line 42
    :cond_0
    sget-object v0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->phoneinfo:Lcn/yeeguo/YeeguoPhoneInfoUtil;

    return-object v0
.end method


# virtual methods
.method protected getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 187
    const/4 v4, 0x0

    .line 189
    .local v4, invalidDeviceID:Z
    iget-object v5, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, deviceID:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 191
    const/4 v4, 0x1

    .line 198
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 199
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_1

    .line 201
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 202
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 203
    .local v3, get:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.serialno"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "unknown"

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #get:Ljava/lang/reflect/Method;
    :goto_1
    if-nez v2, :cond_4

    .line 208
    const/4 v4, 0x1

    .line 219
    :cond_1
    :goto_2
    return-object v2

    .line 192
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    const-string v5, "000000000000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 209
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    const-string v5, "000000000000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 211
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 212
    :cond_5
    const/4 v4, 0x1

    .line 213
    goto :goto_2

    .line 214
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected getFramework()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    const-string v0, ""

    .line 98
    .local v0, firewall:Ljava/lang/String;
    iget-object v1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v2, "get_fire_wall"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v2, "get_fire_wall"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #firewall:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 104
    .restart local v0       #firewall:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v2, "get_fire_wall"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getIMSI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    const-string v0, ""

    .line 285
    .local v0, imsi:Ljava/lang/String;
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v3, "imsi"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v3, "imsi"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imsi:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 301
    .restart local v0       #imsi:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, subscriberId:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 290
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    :cond_1
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 299
    :cond_2
    :goto_1
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v3, "imsi"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    :cond_3
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    .line 295
    goto :goto_1

    :cond_4
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_1
.end method

.method protected getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const-string v0, ""

    .line 79
    .local v0, model:Ljava/lang/String;
    iget-object v1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v2, "get_model"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v2, "get_model"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #model:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 85
    .restart local v0       #model:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 82
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v2, "get_model"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getNetType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 152
    const-string v2, ""

    .line 154
    .local v2, netType:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->context:Landroid/content/Context;

    .line 155
    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    move-object v2, v3

    .line 168
    .end local v0           #conn:Landroid/net/ConnectivityManager;
    .end local v3           #type:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 161
    .restart local v0       #conn:Landroid/net/ConnectivityManager;
    .restart local v3       #type:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 164
    .local v1, mobNetInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 166
    .end local v0           #conn:Landroid/net/ConnectivityManager;
    .end local v1           #mobNetInfo:Landroid/net/NetworkInfo;
    .end local v3           #type:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageSign(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 6
    .parameter "context"

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 336
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 338
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 346
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 339
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 340
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 341
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "net.iaround"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method protected getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSettingLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isChinaCarrier()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, isChina:Z
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v3, "is_china_carrier"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v3, "is_china_carrier"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 315
    :cond_0
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 317
    const-string v2, "460"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const/4 v1, 0x1

    .line 324
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v3, "is_china_carrier"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected macAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const-string v1, ""

    .line 54
    .local v1, macAddress:Ljava/lang/String;
    iget-object v3, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v4, "mac_address"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v4, "mac_address"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #macAddress:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 67
    .restart local v1       #macAddress:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->context:Landroid/content/Context;

    .line 59
    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 60
    .local v2, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 61
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #wifi:Landroid/net/wifi/WifiManager;
    :goto_1
    iget-object v3, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->infoMap:Ljava/util/Map;

    const-string v4, "mac_address"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected phoneCarrierCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected phoneCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected phoneManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method protected phoneOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcn/yeeguo/YeeguoPhoneInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
