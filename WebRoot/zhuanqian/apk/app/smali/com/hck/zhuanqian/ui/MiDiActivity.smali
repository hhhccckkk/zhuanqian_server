.class public Lcom/hck/zhuanqian/ui/MiDiActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "MiDiActivity.java"

# interfaces
.implements Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;


# instance fields
.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MiDiActivity;->setContentView(I)V

    .line 20
    const-string v0, "21647"

    const-string v1, "978ouu5mtyrsl155 "

    invoke-static {p0, v0, v1}, Lnet/midi/wall/sdk/AdWall;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onEarnPoints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7c73\u8fea: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public showAd(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->showAppOffers(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Z

    .line 25
    invoke-static {p0}, Lnet/midi/wall/sdk/AdWall;->setEarnPointsListener(Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;)V

    .line 26
    return-void
.end method
