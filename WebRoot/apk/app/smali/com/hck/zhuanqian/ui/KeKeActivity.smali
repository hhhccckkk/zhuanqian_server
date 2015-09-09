.class public Lcom/hck/zhuanqian/ui/KeKeActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "KeKeActivity.java"


# instance fields
.field handler:Landroid/os/Handler;

.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 110
    new-instance v0, Lcom/hck/zhuanqian/ui/KeKeActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/KeKeActivity$1;-><init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity;->handler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/KeKeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/KeKeActivity;->huafei(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/KeKeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/KeKeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I

    return v0
.end method

.method private huafei(I)V
    .locals 2
    .parameter "point"

    .prologue
    .line 117
    const-string v0, "\u6d88\u8d39"

    .line 118
    new-instance v1, Lcom/hck/zhuanqian/ui/KeKeActivity$5;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/KeKeActivity$5;-><init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V

    .line 117
    invoke-static {p1, v0, v1}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->usePoint(ILjava/lang/String;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    .line 128
    return-void
.end method

.method private initAd()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "e833b225a01321c076e0169b48f18bd5"

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->setPlatformId(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/keke.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "\u5c0f\u53ef\u8d5a\u94b1\u4e13\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->initTitle(Ljava/lang/String;)V

    .line 30
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity;->webView:Landroid/webkit/WebView;

    .line 31
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->initDate()V

    .line 32
    return-void
.end method


# virtual methods
.method public nt2()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->getAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, ""

    .line 38
    const-string v1, "\u53cb\u60c5\u63d0\u793a\uff1a\u8be5\u533a\u5fc5\u9700\u5f00\u542f\u624b\u673a\u98de\u884c\u6a21\u5f0f, \u8fd9\u6837\u53ef\u4ee5\u9632\u6b62\u60a8\u81ea\u5df1\u7684\u8bef\u64cd\u4f5c\uff0c\u8bef\u70b9\u51fb\uff0c\u8d2d\u4e70\u4e0d\u9700\u8981\u7684\u670d\u52a1\u3002"

    const/4 v2, 0x1

    .line 37
    invoke-static {p0, v0, v1, v2}, Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->initAd()V

    .line 22
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->getAdInitData()V

    .line 24
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->initDownSize(Landroid/view/View;)V

    .line 25
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->initView()V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onDestroy()V

    .line 133
    invoke-static {p0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->destroy(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 140
    :try_start_0
    new-instance v0, Lcom/hck/zhuanqian/ui/KeKeActivity$6;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/KeKeActivity$6;-><init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->getPoint(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->getAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->nt2()V

    .line 108
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/hck/zhuanqian/ui/KeKeActivity$2;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/KeKeActivity$2;-><init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->setOnCloseListener(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    .line 71
    new-instance v0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/KeKeActivity$3;-><init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->setOnActivatedListener(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    .line 98
    new-instance v0, Lcom/hck/zhuanqian/ui/KeKeActivity$4;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/KeKeActivity$4;-><init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V

    invoke-static {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->open(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    goto :goto_0
.end method
