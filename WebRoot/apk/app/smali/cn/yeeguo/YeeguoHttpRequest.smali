.class public Lcn/yeeguo/YeeguoHttpRequest;
.super Ljava/lang/Object;
.source "YeeguoHttpRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static adcomplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "adid"
    .parameter "token"
    .parameter "expcount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .local v3, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "appkey"

    sget-object v1, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "adid"

    invoke-virtual {v3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "token"

    invoke-virtual {v3, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "param0"

    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v1

    const-string v2, "client_uid"

    invoke-virtual {v1, v2}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "expcount"

    invoke-virtual {v3, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpManage;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoHttpManage;

    move-result-object v0

    const-string v2, "adcomplete"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/yeeguo/YeeguoHttpManage;->synRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static awardscore(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "award"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    .local v3, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "appkey"

    sget-object v1, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "award"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpManage;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoHttpManage;

    move-result-object v0

    const-string v2, "awardscore"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/yeeguo/YeeguoHttpManage;->synRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static clientinfo(Landroid/content/Context;)J
    .locals 7
    .parameter "context"

    .prologue
    .line 68
    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getAppInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, appinfo:Ljava/lang/String;
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v4

    const-string v5, "app_info"

    invoke-virtual {v4, v5}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, localInfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-static {v0}, Lcn/yeeguo/YeeguoCryptoUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, currentInfo:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v4

    const-string v5, "app_info"

    invoke-static {v0}, Lcn/yeeguo/YeeguoCryptoUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    .local v3, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "appkey"

    sget-object v5, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v4, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v4, "clientinfo"

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v4, "clientinfo"

    invoke-static {p0, v4, v3}, Lcn/yeeguo/YeeguoHttpRequest;->post(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)J

    move-result-wide v4

    .line 81
    .end local v1           #currentInfo:Ljava/lang/String;
    .end local v3           #map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method protected static consumescore(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "consume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    .local v3, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "appkey"

    sget-object v1, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "consume"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpManage;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoHttpManage;

    move-result-object v0

    const-string v2, "consumescore"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/yeeguo/YeeguoHttpManage;->synRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "context"
    .parameter "channelId"
    .parameter "param0"

    .prologue
    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "appkey"

    sget-object v2, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "uuid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yeeguo/YeeguoUtil;->checkLocalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "imei"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "imsi"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "immi"

    invoke-static {}, Lcn/yeeguo/YeeguoUtil;->getIMMI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "devicename"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "platform"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "osversion"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "language"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "sdkversion"

    const-string v2, "3.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "lat"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "lng"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "nettype"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "resolution"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "channel"

    sget-object v2, Lcn/yeeguo/Yeeguo;->channelID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "imsi_num"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "phone_num"

    invoke-static {p0}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoPhoneInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/yeeguo/YeeguoPhoneInfoUtil;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "param0"

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "initapp"

    invoke-static {p0, v1, v0}, Lcn/yeeguo/YeeguoHttpRequest;->post(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static post(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)J
    .locals 4
    .parameter "context"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v1, -0x1

    .line 12
    .local v1, flag:J
    :try_start_0
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpManage;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoHttpManage;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcn/yeeguo/YeeguoHttpManage;->asynRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 16
    :goto_0
    return-wide v1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static sensor_xyz(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "xyz"

    .prologue
    .line 156
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 157
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "appkey"

    sget-object v2, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "xyz"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "sensor_xyz"

    invoke-static {p0, v1, v0}, Lcn/yeeguo/YeeguoHttpRequest;->post(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static showWallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "appID"

    .prologue
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appkey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, params:Ljava/lang/String;
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpManage;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoHttpManage;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v0}, Lcn/yeeguo/YeeguoHttpManage;->getSigniture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, sign:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.yeeguo.cn/api.php/Second_4/applist?sign="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, url:Ljava/lang/String;
    return-object v2
.end method

.method protected static totalscore(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    .local v3, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "appkey"

    sget-object v1, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "uid"

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpManage;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoHttpManage;

    move-result-object v0

    const-string v2, "totalscore"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/yeeguo/YeeguoHttpManage;->synRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
