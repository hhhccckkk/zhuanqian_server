.class public Lcom/hck/zhuanqian/ui/YouMiActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "YouMiActivity.java"

# interfaces
.implements Lnet/youmi/android/offers/PointsEarnNotify;


# instance fields
.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initAd()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/AdManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/AdManager;

    move-result-object v1

    const-string v2, "d4c658f76cde0ddd"

    .line 59
    const-string v3, "ecf5c1c57518cbef"

    .line 58
    invoke-virtual {v1, v2, v3}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lnet/youmi/android/offers/OffersManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/offers/OffersManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/offers/OffersManager;->onAppLaunch()V

    .line 61
    invoke-static {p0}, Lnet/youmi/android/offers/PointsManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/offers/PointsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/youmi/android/offers/PointsManager;->registerPointsEarnNotify(Lnet/youmi/android/offers/PointsEarnNotify;)V

    .line 62
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/youmi/android/offers/OffersBrowserConfig;->setPointsLayoutVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25 \u8bf7\u91cd\u8bd5"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->finish()V

    goto :goto_0
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/YouMiActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/youmi.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "\u6709\u7c73\u8d5a\u94b1\u4e13\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->initTitle(Ljava/lang/String;)V

    .line 48
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/YouMiActivity;->webView:Landroid/webkit/WebView;

    .line 49
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->initDate()V

    .line 50
    return-void
.end method


# virtual methods
.method public nt2()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->getAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, ""

    .line 39
    const-string v1, "\u53cb\u60c5\u63d0\u793a\uff1a\u8be5\u533a\u5fc5\u9700\u5f00\u542f\u624b\u673a\u98de\u884c\u6a21\u5f0f, \u8fd9\u6837\u53ef\u4ee5\u9632\u6b62\u60a8\u81ea\u5df1\u7684\u8bef\u64cd\u4f5c\uff0c\u8bef\u70b9\u51fb\uff0c\u8d2d\u4e70\u4e0d\u9700\u8981\u7684\u670d\u52a1\u3002"

    const/4 v2, 0x1

    .line 38
    invoke-static {p0, v0, v1, v2}, Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->initAd()V

    .line 28
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->getAdInitData()V

    .line 30
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->initDownSize(Landroid/view/View;)V

    .line 31
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->initView()V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onDestroy()V

    .line 89
    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/offers/OffersManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/offers/OffersManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/offers/OffersManager;->onAppExit()V

    .line 90
    invoke-static {p0}, Lnet/youmi/android/offers/PointsManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/offers/PointsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/youmi/android/offers/PointsManager;->unRegisterPointsEarnNotify(Lnet/youmi/android/offers/PointsEarnNotify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPointEarn(Landroid/content/Context;Lnet/youmi/android/offers/EarnPointsOrderList;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 98
    const-string v0, "\u83b7\u53d6\u91d1\u5e01 \u6709\u7c73: "

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 99
    iput v1, p0, Lcom/hck/zhuanqian/ui/YouMiActivity;->point:I

    .line 100
    invoke-virtual {p2, v1}, Lnet/youmi/android/offers/EarnPointsOrderList;->get(I)Lnet/youmi/android/offers/EarnPointsOrderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/offers/EarnPointsOrderInfo;->getPoints()I

    move-result v0

    iput v0, p0, Lcom/hck/zhuanqian/ui/YouMiActivity;->point:I

    .line 101
    iget v0, p0, Lcom/hck/zhuanqian/ui/YouMiActivity;->point:I

    if-lez v0, :cond_0

    .line 102
    const-string v0, "\u6709\u7c73"

    iget v1, p0, Lcom/hck/zhuanqian/ui/YouMiActivity;->point:I

    invoke-virtual {p0, v0, v1}, Lcom/hck/zhuanqian/ui/YouMiActivity;->savePoint(Ljava/lang/String;I)V

    .line 104
    :cond_0
    return-void
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->getAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YouMiActivity;->nt2()V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/offers/OffersManager;->getInstance(Landroid/content/Context;)Lnet/youmi/android/offers/OffersManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/offers/OffersManager;->showOffersWall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u6253\u5f00\u4efb\u52a1\u5931\u8d25 \u8bf7\u91cd\u8bd5"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
