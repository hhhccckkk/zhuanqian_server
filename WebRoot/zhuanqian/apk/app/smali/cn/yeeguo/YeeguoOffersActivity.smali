.class public Lcn/yeeguo/YeeguoOffersActivity;
.super Landroid/app/Activity;
.source "YeeguoOffersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;
    }
.end annotation


# static fields
.field protected static final Yeeguo_OFFER_URL:Ljava/lang/String; = "Yeeguo_offer_url"

.field public static showTips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private offerHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private offersURL:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private webView:Landroid/webkit/WebView;

.field private yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 238
    new-instance v0, Lcn/yeeguo/YeeguoOffersActivity$1;

    invoke-direct {v0, p0}, Lcn/yeeguo/YeeguoOffersActivity$1;-><init>(Lcn/yeeguo/YeeguoOffersActivity;)V

    iput-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->offerHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1(Lcn/yeeguo/YeeguoOffersActivity;)Lcn/yeeguo/YeeguoSensorEventListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;

    return-object v0
.end method

.method static synthetic access$2(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcn/yeeguo/YeeguoOffersActivity;)Lcn/yeeguo/YeeguoCheckPage;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    return-object v0
.end method

.method protected static addShowTips(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 214
    :try_start_0
    sget-object v0, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    .line 217
    :cond_0
    sget-object v0, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showTips()V
    .locals 3

    .prologue
    .line 224
    sget-object v1, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 230
    sget-object v1, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 235
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 227
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lcn/yeeguo/YeeguoOffersActivity;->showTips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private startSenor()V
    .locals 4

    .prologue
    .line 90
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v1

    .line 91
    const-string v2, "sensor_listener"

    .line 90
    invoke-virtual {v1, v2}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 91
    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcn/yeeguo/YeeguoSensorEventListener;

    iget-object v2, p0, Lcn/yeeguo/YeeguoOffersActivity;->offerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcn/yeeguo/YeeguoSensorEventListener;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;

    .line 93
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcn/yeeguo/YeeguoOffersActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 94
    iget-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 96
    .local v0, sensor_accelerometer:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;

    .line 97
    const/4 v3, 0x2

    .line 96
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 99
    .end local v0           #sensor_accelerometer:Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 52
    invoke-virtual {p0, v6}, Lcn/yeeguo/YeeguoOffersActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcn/yeeguo/YeeguoOffersActivity;->mActivity:Landroid/app/Activity;

    .line 55
    invoke-virtual {p0}, Lcn/yeeguo/YeeguoOffersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Yeeguo_offer_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->offersURL:Ljava/lang/String;

    .line 58
    const-string v4, "activity"

    invoke-super {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/app/ActivityManager;

    .line 59
    .local v0, activityManager:Landroid/app/ActivityManager;
    new-instance v4, Lcn/yeeguo/YeeguoCheckPage;

    iget-object v5, p0, Lcn/yeeguo/YeeguoOffersActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5, v0}, Lcn/yeeguo/YeeguoCheckPage;-><init>(Landroid/app/Activity;Landroid/app/ActivityManager;)V

    iput-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    .line 61
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, layout:Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    .line 63
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;

    invoke-direct {v5, p0}, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;-><init>(Lcn/yeeguo/YeeguoOffersActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 65
    .local v3, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 68
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v9}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 69
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 70
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 72
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 73
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4, v8, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 81
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, v1}, Lcn/yeeguo/YeeguoOffersActivity;->setContentView(Landroid/view/View;)V

    .line 83
    const-string v4, "offers"

    iget-object v5, p0, Lcn/yeeguo/YeeguoOffersActivity;->offersURL:Ljava/lang/String;

    invoke-static {v4, v5}, Lcn/yeeguo/YeeguoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcn/yeeguo/YeeguoOffersActivity;->offersURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcn/yeeguo/YeeguoOffersActivity;->startSenor()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    invoke-virtual {v0}, Lcn/yeeguo/YeeguoCheckPage;->stop()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 124
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 125
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 128
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->offersURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity;->offersURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    invoke-virtual {v0}, Lcn/yeeguo/YeeguoCheckPage;->stop()V

    .line 109
    :cond_1
    invoke-direct {p0}, Lcn/yeeguo/YeeguoOffersActivity;->showTips()V

    .line 110
    return-void
.end method
