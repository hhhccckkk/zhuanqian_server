.class Lcn/yeeguo/YeeguoFilterUtil;
.super Ljava/lang/Object;
.source "YeeguoFilterUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static filterReceiveHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "url"
    .parameter "result"
    .parameter "flag"

    .prologue
    .line 16
    const-string v2, "initapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 20
    const/4 v2, 0x1

    sput-boolean v2, Lcn/yeeguo/Yeeguo;->hasInit:Z

    .line 21
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v2

    const-string v3, "server_uid"

    const-string v4, "uid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcn/yeeguo/YeeguoHttpRequest;->clientinfo(Landroid/content/Context;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
