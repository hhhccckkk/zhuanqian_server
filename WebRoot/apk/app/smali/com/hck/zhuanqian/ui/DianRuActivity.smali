.class public Lcom/hck/zhuanqian/ui/DianRuActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DianRuActivity.java"


# instance fields
.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private getPoint()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/hck/zhuanqian/ui/DianRuActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/DianRuActivity$1;-><init>(Lcom/hck/zhuanqian/ui/DianRuActivity;)V

    invoke-static {p0, v0}, Lcom/yql/sdk/DRSdk;->getScore(Landroid/content/Context;Lcom/yql/sdk/DRScoreInterface;)V

    .line 49
    return-void
.end method

.method private huafei()V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/hck/zhuanqian/ui/DianRuActivity;->point:I

    new-instance v1, Lcom/hck/zhuanqian/ui/DianRuActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/DianRuActivity$2;-><init>(Lcom/hck/zhuanqian/ui/DianRuActivity;)V

    invoke-static {v0, p0, v1}, Lcom/yql/sdk/DRSdk;->spendScore(ILandroid/content/Context;Lcom/yql/sdk/DRScoreInterface;)V

    .line 66
    return-void
.end method

.method private initAD()V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/yql/sdk/DRSdk;->initialize(Landroid/content/Context;ZLjava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DianRuActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DianRuActivity;->initAD()V

    .line 19
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 32
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DianRuActivity;->getPoint()V

    .line 33
    return-void
.end method

.method public showAd(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yql/sdk/DRSdk;->showAdWall(Landroid/content/Context;I)V

    .line 27
    return-void
.end method
