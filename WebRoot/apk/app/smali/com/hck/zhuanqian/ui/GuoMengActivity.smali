.class public Lcom/hck/zhuanqian/ui/GuoMengActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "GuoMengActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initAD()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "ag0j4bfykxe1772"

    invoke-static {p0, v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->setGbKeyCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/hck/zhuanqian/ui/GuoMengActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/GuoMengActivity$1;-><init>(Lcom/hck/zhuanqian/ui/GuoMengActivity;)V

    invoke-static {p0, v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->initInterfaceType(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 34
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

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/GuoMengActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/GuoMengActivity;->initAD()V

    .line 19
    return-void
.end method

.method public showAd(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 22
    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    invoke-virtual {v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->show()V

    .line 23
    return-void
.end method
