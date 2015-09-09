.class public Lcom/hck/zhuanqian/ui/DianCaiActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DianCaiActivity.java"


# instance fields
.field handler:Landroid/os/Handler;

.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;-><init>(Lcom/hck/zhuanqian/ui/DianCaiActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/DianCaiActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/DianCaiActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I

    return v0
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/DianCaiActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->huafei(I)V

    return-void
.end method

.method private huafei(I)V
    .locals 2
    .parameter "point"

    .prologue
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/hck/zhuanqian/ui/DianCaiActivity$3;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity$3;-><init>(Lcom/hck/zhuanqian/ui/DianCaiActivity;)V

    invoke-static {v0, v1}, Lcom/dc/wall/DianCai;->reduceMoney(Ljava/lang/Integer;Lcom/dc/wall/IReduceMoneyNotifier;)V

    .line 102
    return-void
.end method

.method private initAd()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "11033"

    const-string v1, "0380d21f6ca24f30838b77e416decb2c"

    invoke-static {p0, v0, v1}, Lcom/dc/wall/DianCai;->initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/hck/zhuanqian/ui/DianCaiActivity$2;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity$2;-><init>(Lcom/hck/zhuanqian/ui/DianCaiActivity;)V

    invoke-static {v0}, Lcom/dc/wall/DianCai;->setEarnMoneyListener(Lcom/dc/wall/IEarnMoneyNotifier;)V

    .line 65
    return-void
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/xiaocai.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "\u5c0f\u8d22\u8d5a\u94b1\u4e13\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->initTitle(Ljava/lang/String;)V

    .line 40
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity;->webView:Landroid/webkit/WebView;

    .line 41
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->initDate()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->initAd()V

    .line 33
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->getAdInitData()V

    .line 35
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->initDownSize(Landroid/view/View;)V

    .line 36
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->initView()V

    .line 37
    return-void
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 68
    invoke-static {}, Lcom/dc/wall/DianCai;->showOfferWall()V

    .line 70
    return-void
.end method
