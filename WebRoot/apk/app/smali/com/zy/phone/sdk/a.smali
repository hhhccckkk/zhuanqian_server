.class final Lcom/zy/phone/sdk/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zy/phone/sdk/SDKActivity;


# direct methods
.method constructor <init>(Lcom/zy/phone/sdk/SDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zy/phone/sdk/SDKActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "applist_url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v2}, Lcom/zy/phone/sdk/SDKActivity;->a(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zy/phone/sdk/SDKActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Token"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v2}, Lcom/zy/phone/sdk/SDKActivity;->b(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zy/phone/sdk/SDKActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "AppCode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v2}, Lcom/zy/phone/sdk/SDKActivity;->c(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.0.7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zy/phone/sdk/SDKActivity;->a(Lcom/zy/phone/sdk/SDKActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0}, Lcom/zy/phone/sdk/SDKActivity;->d(Lcom/zy/phone/sdk/SDKActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/zy/phone/sdk/a;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v1}, Lcom/zy/phone/sdk/SDKActivity;->e(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
