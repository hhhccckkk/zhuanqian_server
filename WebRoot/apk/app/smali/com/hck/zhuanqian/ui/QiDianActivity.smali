.class public Lcom/hck/zhuanqian/ui/QiDianActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "QiDianActivity.java"


# instance fields
.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/QiDianActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/hck/zhuanqian/ui/QiDianActivity;->point:I

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/QiDianActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/hck/zhuanqian/ui/QiDianActivity;->point:I

    return v0
.end method

.method private initAd()V
    .locals 2

    .prologue
    .line 34
    :try_start_0
    const-string v1, "186"

    invoke-static {p0, v1}, Lcom/qidian/intwal/QDOpenWall;->setAppId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/QiDianActivity;->showErrorToast()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/QiDianActivity;->initAd()V

    .line 29
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/QiDianActivity;->setContentView(I)V

    .line 30
    return-void
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 42
    new-instance v0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/QiDianActivity$1;-><init>(Lcom/hck/zhuanqian/ui/QiDianActivity;)V

    invoke-static {p0, v0}, Lcom/qidian/intwal/QDOpenWall;->initInterfaceType(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qidian/intwal/QDOpenWall;->show()V

    .line 72
    return-void
.end method
