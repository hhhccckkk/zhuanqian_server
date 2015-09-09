.class public Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DaTouNiaoActivity.java"


# instance fields
.field private appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

.field handler:Landroid/os/Handler;

.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;-><init>(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I

    return v0
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->huafei(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I

    return-void
.end method

.method private huafei(I)V
    .locals 3
    .parameter "money"

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

    int-to-float v1, p1

    new-instance v2, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$3;

    invoke-direct {v2, p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$3;-><init>(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/AppConnect;->SpendAmount(FLcom/datouniao/AdPublisher/SpendNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initAd()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lcom/datouniao/AdPublisher/AppConfig;

    invoke-direct {v0}, Lcom/datouniao/AdPublisher/AppConfig;-><init>()V

    .line 50
    .local v0, config:Lcom/datouniao/AdPublisher/AppConfig;
    const-string v2, "27a54858-09b4-475c-88eb-6a9673eba60f"

    invoke-virtual {v0, v2}, Lcom/datouniao/AdPublisher/AppConfig;->setAppID(Ljava/lang/String;)V

    .line 51
    const-string v2, "ohvkpunnwsbg"

    invoke-virtual {v0, v2}, Lcom/datouniao/AdPublisher/AppConfig;->setSecretKey(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/datouniao/AdPublisher/AppConfig;->setCtx(Landroid/content/Context;)V

    .line 53
    new-instance v2, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;

    invoke-direct {v2, p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;-><init>(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)V

    invoke-virtual {v0, v2}, Lcom/datouniao/AdPublisher/AppConfig;->setReceiveNotifier(Lcom/datouniao/AdPublisher/ReceiveNotifier;)V

    .line 72
    invoke-static {v0}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Lcom/datouniao/AdPublisher/AppConfig;)Lcom/datouniao/AdPublisher/AppConnect;

    move-result-object v2

    iput-object v2, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #config:Lcom/datouniao/AdPublisher/AppConfig;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "\u672a\u77e5\u9519\u8bef \u8bf7\u91cd\u8bd5"

    invoke-static {v2}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->finish()V

    goto :goto_0
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/datouniao.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "\u5c0f\u9e1f\u8d5a\u94b1\u4e13\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->initTitle(Ljava/lang/String;)V

    .line 39
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->webView:Landroid/webkit/WebView;

    .line 40
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->initDate()V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->initAd()V

    .line 31
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->getAdInitData()V

    .line 33
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->initDownSize(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->initView()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/AppConnect;->close()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

    new-instance v1, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$4;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$4;-><init>(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/AppConnect;->GetAmount(Lcom/datouniao/AdPublisher/GetAmountNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "\u521d\u59cb\u5316\u6570\u636e\u5931\u8d25, \u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->appConnectInstance:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/AppConnect;->ShowAdsOffers()V

    goto :goto_0
.end method
