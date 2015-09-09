.class Lcn/aow/android/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/aow/android/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/aow/android/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/aow/android/a;


# direct methods
.method constructor <init>(Lcn/aow/android/a;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a;Z)Z

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "dmaow@12*!secrue"

    invoke-static {v2, v0}, Lcn/aow/android/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DExecutor==>>UpdataResponse"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    .line 255
    const-string v0, "needupdate"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 256
    const-string v2, "md5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const-string v0, "jarurl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v3, "DownLoadUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DExecutor==>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "jsv"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v3, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    invoke-static {v3, v0, v1, v2}, Lcn/aow/android/a;->a(Lcn/aow/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    iget-object v1, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/aow/android/a;->a(Z)V

    .line 265
    iget-object v1, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    const-string v2, "updatejsion_fail"

    invoke-virtual {v1, v2}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DExecutor==>>Update exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a;Z)Z

    .line 274
    iget-object v0, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->a(Z)V

    .line 275
    iget-object v0, p0, Lcn/aow/android/a$2;->a:Lcn/aow/android/a;

    const-string v1, "report_updatefail"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DExecutor==>>Update req error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    .line 277
    return-void
.end method
