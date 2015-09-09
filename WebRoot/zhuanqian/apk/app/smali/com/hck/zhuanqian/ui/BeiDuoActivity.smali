.class public Lcom/hck/zhuanqian/ui/BeiDuoActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "BeiDuoActivity.java"


# instance fields
.field handler:Landroid/os/Handler;

.field private isFirst:Z

.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity$1;-><init>(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->handler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/BeiDuoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->huafei(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/BeiDuoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I

    return v0
.end method

.method private huafei(I)V
    .locals 2
    .parameter "point"

    .prologue
    .line 103
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/hck/zhuanqian/ui/BeiDuoActivity$4;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity$4;-><init>(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)V

    invoke-static {v0, v1}, Lcom/bb/dd/BeiduoPlatform;->reduceMoney(Ljava/lang/Integer;Lcom/bb/dd/listener/IReduceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initAd()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    const-string v0, "13856"

    .line 33
    const-string v1, "14ee88ef0bb1112"

    .line 32
    invoke-static {p0, v0, v1}, Lcom/bb/dd/BeiduoPlatform;->setAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;-><init>(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)V

    invoke-static {v0}, Lcom/bb/dd/BeiduoPlatform;->setActiveAppListener(Lcom/bb/dd/listener/IActiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->initAd()V

    .line 27
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->setContentView(I)V

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onDestroy()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 73
    :try_start_0
    iget-boolean v1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->isFirst:Z

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Lcom/hck/zhuanqian/ui/BeiDuoActivity$3;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity$3;-><init>(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)V

    invoke-static {v1}, Lcom/bb/dd/BeiduoPlatform;->getMoney(Lcom/bb/dd/listener/IGetListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->showErrorToast()V

    goto :goto_0
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->isFirst:Z

    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/bb/dd/BeiduoPlatform;->showOfferWall(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method
