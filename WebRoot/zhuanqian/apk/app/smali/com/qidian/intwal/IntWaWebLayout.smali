.class public Lcom/qidian/intwal/IntWaWebLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/HashMap;

.field e:Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;

.field f:Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;

.field g:Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;

.field h:J

.field private final i:I

.field private final j:I

.field private k:Landroid/widget/ProgressBar;

.field private l:Ljava/lang/String;

.field private m:Lcom/qidian/intwal/j;

.field public m_webView:Landroid/webkit/WebView;

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v8, p0, Lcom/qidian/intwal/IntWaWebLayout;->i:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->j:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->h:J

    iput-boolean v6, p0, Lcom/qidian/intwal/IntWaWebLayout;->p:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-object p2, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/qidian/intwal/IntWaWebLayout;->b:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/qidian/intwal/IntWaWebLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/qidian/intwal/IntWaWebLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0x42

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->n:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v2, v2, -0x96

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->o:I

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v8}, Landroid/webkit/WebView;->setId(I)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v3, v2}, Lcom/qidian/intwal/IntWaWebLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->k:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->n:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->o:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->k:Landroid/widget/ProgressBar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v2}, Lcom/qidian/intwal/IntWaWebLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    const-string v3, "m_androidCallBack"

    invoke-virtual {v2, p0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/qidian/intwal/k;

    invoke-direct {v3, p0}, Lcom/qidian/intwal/k;-><init>(Lcom/qidian/intwal/IntWaWebLayout;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/qidian/intwal/m;

    invoke-direct {v3, p0}, Lcom/qidian/intwal/m;-><init>(Lcom/qidian/intwal/IntWaWebLayout;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IntWaWebLayout.187.m_strUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;

    invoke-direct {v2, p0}, Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;-><init>(Lcom/qidian/intwal/IntWaWebLayout;)V

    iput-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->e:Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "qidian.down.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/qidian/intwal/IntWaWebLayout;->e:Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;

    invoke-direct {v2, p0}, Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;-><init>(Lcom/qidian/intwal/IntWaWebLayout;)V

    iput-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->f:Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/qidian/intwal/IntWaWebLayout;->f:Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;

    invoke-direct {v2, p0}, Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;-><init>(Lcom/qidian/intwal/IntWaWebLayout;)V

    iput-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->g:Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "qidian.down.cancel.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/qidian/intwal/IntWaWebLayout;->g:Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this waweblayout loadUseTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    const-string v3, "this url is null"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/qidian/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/qidian/intwal/IntWaWebLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qidian/intwal/IntWaWebLayout;->p:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string v0, "javascript:webGoBack()"

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public down(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntwAL.227_____strDownUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/qidian/intwal/j;

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/qidian/intwal/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->m:Lcom/qidian/intwal/j;

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->m:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->a()V

    return-void
.end method

.method public downLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "___url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__adsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, p3, v0, p2}, Lcom/qidian/intwal/IntWaWebLayout;->down(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    const-string v1, "\u4e0d\u662f\u5408\u6cd5\u7684apk\u4e0b\u8f7d\u5730\u5740\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public exitIntegralwall()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/qidian/intwal/Utils;->l:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/qidian/intwal/IntWaWebLayout;->unregistBrocast()V

    invoke-virtual {p0, v1}, Lcom/qidian/intwal/IntWaWebLayout;->sendMsg(I)V

    return-void
.end method

.method public getComPrecent(Ljava/lang/String;)F
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "precentValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentPackAndTime()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/qidian/intwal/Service01;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanlledName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/qidian/intwal/g;->a(Landroid/content/Context;)Lcom/qidian/intwal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qidian/intwal/g;->a()V

    invoke-virtual {v0, p1}, Lcom/qidian/intwal/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getdownLoaded()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/qidian/intwal/Utils;->c:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    const-string v1, ".downName.txt"

    const-string v2, "LoadIng.50"

    invoke-static {v0, v1, v2}, Lcom/qidian/intwal/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qidian/intwal/Utils;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/qidian/intwal/Utils;->c:Ljava/lang/String;

    return-object v0
.end method

.method public goForward()V
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0
.end method

.method public goback()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/QDOpenWall;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "can go back"

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qidian/intwal/IntWaWebLayout;->a()V

    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/qidian/intwal/Utils;->l:Ljava/lang/Boolean;

    const-string v0, "not go back"

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qidian/intwal/IntWaWebLayout;->unregistBrocast()V

    invoke-virtual {p0, v2}, Lcom/qidian/intwal/IntWaWebLayout;->sendMsg(I)V

    goto :goto_0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    const-class v2, Lcom/qidian/intwal/QDIntWaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OpenWebUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openInstanlled(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Guomob123packName.IntWeb.333="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/qidian/intwal/g;->a(Landroid/content/Context;)Lcom/qidian/intwal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qidian/intwal/g;->a()V

    invoke-virtual {v0, p1}, Lcom/qidian/intwal/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public razc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntWaweblayout.js.save.375"

    invoke-static {v0, v1, v2}, Lcom/qidian/intwal/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "razcfileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public razc3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qidian/intwal/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reLoad()V
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntWaWebLayout.reload.247.m_strUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method public sendMsg(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showBefore="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/qidian/intwal/IntWaWebLayout;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showafter="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public unregistBrocast()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->e:Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->e:Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->g:Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->g:Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->f:Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout;->f:Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wazc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wazcfileName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntWaweblayout.js.save.371"

    invoke-static {v0, v1, p2, v2}, Lcom/qidian/intwal/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
