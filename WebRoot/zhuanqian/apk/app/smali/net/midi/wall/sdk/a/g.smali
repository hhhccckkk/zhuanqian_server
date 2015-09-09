.class Lnet/midi/wall/sdk/a/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lnet/midi/wall/sdk/a/e;


# direct methods
.method constructor <init>(Lnet/midi/wall/sdk/a/e;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/a/g;->a:Lnet/midi/wall/sdk/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/g;->a()Lnet/midi/wall/sdk/b/g;

    move-result-object v1

    const-string v2, "plugin_ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/midi/wall/sdk/b/g;->b(Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/g;->a()Lnet/midi/wall/sdk/b/g;

    move-result-object v1

    const-string v2, "plugin_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/midi/wall/sdk/b/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/midi/wall/sdk/a/g;->a:Lnet/midi/wall/sdk/a/e;

    const-string v2, "plugin_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/midi/wall/sdk/a/e;->a(Lnet/midi/wall/sdk/a/e;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
