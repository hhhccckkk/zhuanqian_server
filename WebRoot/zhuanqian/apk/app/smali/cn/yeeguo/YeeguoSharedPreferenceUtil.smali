.class public Lcn/yeeguo/YeeguoSharedPreferenceUtil;
.super Ljava/lang/Object;
.source "YeeguoSharedPreferenceUtil.java"


# static fields
.field protected static final APP_INFO:Ljava/lang/String; = "app_info"

.field protected static final CLIENT_UID:Ljava/lang/String; = "client_uid"

.field protected static final DEVICEID:Ljava/lang/String; = "deviceid"

.field protected static final EXP_PAGE:Ljava/lang/String; = "exp_page"

.field private static final KEY:Ljava/lang/String; = "yeeguo_sharepreference"

.field protected static final SENSOR_LISTENER:Ljava/lang/String; = "sensor_listener"

.field protected static final SERVER_UID:Ljava/lang/String; = "server_uid"

.field private static sharedPreferenceUtil:Lcn/yeeguo/YeeguoSharedPreferenceUtil;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "yeeguo_sharepreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method protected static getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferenceUtil:Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    invoke-direct {v0, p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferenceUtil:Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    .line 35
    :cond_0
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferenceUtil:Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    return-object v0
.end method


# virtual methods
.method protected getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 128
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .locals 2
    .parameter "key"

    .prologue
    .line 164
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 140
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 152
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 116
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 169
    sget-object v0, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 89
    sget-object v1, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method protected putFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 103
    sget-object v1, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method protected putInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 75
    sget-object v1, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method protected putLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 61
    sget-object v1, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method protected putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    sget-object v1, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method
