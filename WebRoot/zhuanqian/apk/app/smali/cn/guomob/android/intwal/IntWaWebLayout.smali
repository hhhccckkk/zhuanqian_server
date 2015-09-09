.class public Lcn/guomob/android/intwal/IntWaWebLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:I

.field b:Landroid/content/Context;

.field c:Landroid/os/Handler;

.field d:Landroid/graphics/Canvas;

.field e:Landroid/graphics/Paint;

.field f:Ljava/lang/Runnable;

.field g:Ljava/util/ArrayList;

.field h:J

.field i:Ljava/util/HashMap;

.field j:Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;

.field k:Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;

.field l:Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;

.field m:Lcn/guomob/android/intwal/d;

.field public m_androidCallBack:Lcn/guomob/android/intwal/z;

.field public m_webView:Landroid/webkit/WebView;

.field n:Landroid/util/DisplayMetrics;

.field private final o:I

.field private final p:I

.field private q:Landroid/widget/ProgressBar;

.field private r:Landroid/os/Handler;

.field private s:Lcn/guomob/android/intwal/af;

.field private t:Ljava/lang/String;

.field private u:Lcn/guomob/android/intwal/s;

.field private v:I

.field private w:I

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 10

    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xb

    iput v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->o:I

    iput v9, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->p:I

    iput v6, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->h:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->i:Ljava/util/HashMap;

    iput-boolean v8, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->x:Z

    const-string v0, "Create intwabLayout"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    iput-object p1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcn/guomob/android/intwal/IntWaWebLayout;->b()V

    iput-object p3, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->c:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->d:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->e:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->r:Landroid/os/Handler;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcn/guomob/android/intwal/IntWaWebLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v0, v0, -0x42

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->v:I

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v0, v0, -0x96

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->w:I

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setId(I)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->q:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->v:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->w:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setId(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    aput v2, v1, v6

    iget v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->w:I

    int-to-float v2, v2

    aput v2, v1, v8

    new-instance v2, Lcn/guomob/android/intwal/af;

    iget-object v3, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->e:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-direct {v2, p1, v3, v1, v4}, Lcn/guomob/android/intwal/af;-><init>(Landroid/content/Context;Landroid/graphics/Paint;[FF)V

    iput-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->s:Lcn/guomob/android/intwal/af;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v6, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->a:I

    new-instance v2, Lcn/guomob/android/intwal/v;

    invoke-direct {v2, p0}, Lcn/guomob/android/intwal/v;-><init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V

    iput-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->f:Ljava/lang/Runnable;

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->q:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->s:Lcn/guomob/android/intwal/af;

    invoke-virtual {p0, v0, v1}, Lcn/guomob/android/intwal/IntWaWebLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_androidCallBack:Lcn/guomob/android/intwal/z;

    const-string v2, "JavaScriptCallBack"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    const-string v1, "m_androidCallBack"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Lcn/guomob/android/intwal/w;

    invoke-direct {v1, p0}, Lcn/guomob/android/intwal/w;-><init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Lcn/guomob/android/intwal/y;

    invoke-direct {v1, p0}, Lcn/guomob/android/intwal/y;-><init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntwawebLayout.mUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    const-string v1, "this url is null"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcn/guomob/android/intwal/IntWaWebLayout;)Lcn/guomob/android/intwal/af;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->s:Lcn/guomob/android/intwal/af;

    return-object v0
.end method

.method static synthetic a(Lcn/guomob/android/intwal/IntWaWebLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->x:Z

    return-void
.end method

.method static synthetic b(Lcn/guomob/android/intwal/IntWaWebLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;

    invoke-direct {v0, p0}, Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;-><init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->j:Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "guomob.down.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->j:Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;

    invoke-direct {v0, p0}, Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;-><init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->l:Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->l:Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;

    invoke-direct {v0, p0}, Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;-><init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->k:Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "guomob.down.cancel.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->k:Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic c(Lcn/guomob/android/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->q:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string v0, "javascript:webGoBack()"

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public down(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcn/guomob/android/intwal/s;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcn/guomob/android/intwal/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->u:Lcn/guomob/android/intwal/s;

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->u:Lcn/guomob/android/intwal/s;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/s;->a()V

    return-void
.end method

.method public downLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

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

    invoke-virtual {p0, p3, v0, p2}, Lcn/guomob/android/intwal/IntWaWebLayout;->down(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcn/guomob/android/intwal/IntWaWebLayout;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitIntegralwall()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v2, 0x1

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/OpenIntegralWall;->setFirst(Z)V

    :cond_0
    sput-boolean v2, Lcn/guomob/android/intwal/GMUtils;->i:Z

    invoke-virtual {p0}, Lcn/guomob/android/intwal/IntWaWebLayout;->unregistBrocast()V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcn/guomob/android/intwal/IntWaWebLayout;->sendMsg(I)V

    return-void
.end method

.method public getAllDownLoadedPack()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    const-string v1, ".downName.txt"

    const-string v2, "wal.624"

    invoke-static {v0, v1, v2}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAllInstanlledName()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    const-string v1, ""

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getComPrecent(Ljava/lang/String;)F
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPackAndTime()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcn/guomob/android/intwal/Service01;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanlledName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "allAdsIdAndPackName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/k;->a(Landroid/content/Context;)Lcn/guomob/android/intwal/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/guomob/android/intwal/k;->a()V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcn/guomob/android/intwal/k;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goForward()V
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0
.end method

.method public goback()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/OpenIntegralWall;->setFirst(Z)V

    :cond_0
    iget-boolean v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->x:Z

    if-eqz v0, :cond_1

    const-string v0, "can go back"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/guomob/android/intwal/IntWaWebLayout;->a()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "not go back"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    sput-boolean v2, Lcn/guomob/android/intwal/GMUtils;->i:Z

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcn/guomob/android/intwal/IntWaWebLayout;->unregistBrocast()V

    invoke-virtual {p0, v2}, Lcn/guomob/android/intwal/IntWaWebLayout;->sendMsg(I)V

    goto :goto_0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    const-class v2, Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OpenWebUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openInstanlled(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/k;->a(Landroid/content/Context;)Lcn/guomob/android/intwal/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/guomob/android/intwal/k;->a()V

    invoke-virtual {v0, p1}, Lcn/guomob/android/intwal/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pauseLoad(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:setPauseLoad(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:if(typeof(eval(setPauseLoad))==\'function\'){setPauseLoad(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public pauseWebLoad(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m:Lcn/guomob/android/intwal/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/guomob/android/intwal/d;->a()Lcn/guomob/android/intwal/d;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m:Lcn/guomob/android/intwal/d;

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m:Lcn/guomob/android/intwal/d;

    invoke-virtual {v0, p1}, Lcn/guomob/android/intwal/d;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    if-lez v1, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return v1
.end method

.method public razc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

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

    const-string v2, "Intweb.527"

    invoke-static {v0, v1, v2}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fileName="

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

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public razc3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reLoad()V
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method public sendMsg(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public unregistBrocast()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->j:Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->j:Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->k:Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->k:Lcn/guomob/android/intwal/IntWaWebLayout$CancelLoadReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->l:Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->l:Lcn/guomob/android/intwal/IntWaWebLayout$SystemReceiver;

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

    const-string v1, "fileName=."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

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

    invoke-static {v0, v1, p2, v2}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
