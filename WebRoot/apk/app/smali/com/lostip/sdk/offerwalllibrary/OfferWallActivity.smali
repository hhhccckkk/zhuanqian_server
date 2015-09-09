.class public Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/lostip/sdk/offerwalllibrary/other/bo;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/lostip/sdk/offerwalllibrary/manager/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/a;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/a;-><init>(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->d:Lcom/lostip/sdk/offerwalllibrary/manager/v;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bo;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/bo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b:Lcom/lostip/sdk/offerwalllibrary/other/bo;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/b;

    invoke-direct {v1, p0}, Lcom/lostip/sdk/offerwalllibrary/b;-><init>(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/manager/PlatformJsManager;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/PlatformJsManager;-><init>(Landroid/webkit/WebView;)V

    const-string v2, "SmaugBattle"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/ai;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "act"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "em"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b(B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b(B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    invoke-static {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a()Lcom/lostip/sdk/offerwalllibrary/manager/d;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Lcom/lostip/sdk/offerwalllibrary/other/bo;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b:Lcom/lostip/sdk/offerwalllibrary/other/bo;

    return-object v0
.end method

.method private b()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/c;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/c;-><init>(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lostip.offerwall.action.close"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a()V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->d:Lcom/lostip/sdk/offerwalllibrary/manager/v;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/manager/v;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u79ef\u5206\u5899\u8fd8\u6ca1\u51c6\u5907\u597d~"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->d:Lcom/lostip/sdk/offerwalllibrary/manager/v;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b(Lcom/lostip/sdk/offerwalllibrary/manager/v;)V

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->c()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->b()Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;->onSucceed(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b:Lcom/lostip/sdk/offerwalllibrary/other/bo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b:Lcom/lostip/sdk/offerwalllibrary/other/bo;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bo;->c()V

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b:Lcom/lostip/sdk/offerwalllibrary/other/bo;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_0
.end method
