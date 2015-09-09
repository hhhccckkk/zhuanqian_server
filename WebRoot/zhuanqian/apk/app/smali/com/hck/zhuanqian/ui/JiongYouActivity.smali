.class public Lcom/hck/zhuanqian/ui/JiongYouActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "JiongYouActivity.java"


# instance fields
.field handler:Landroid/os/Handler;

.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;-><init>(Lcom/hck/zhuanqian/ui/JiongYouActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/JiongYouActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I

    return v0
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->huafei(I)V

    return-void
.end method

.method private huafei(I)V
    .locals 3
    .parameter "point"

    .prologue
    .line 102
    const-string v0, "hck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "huafei : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0}, Lcom/jy/func/JYOfferWall;->getInstance(Landroid/content/Context;)Lcom/jy/func/JYOfferWall;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/hck/zhuanqian/ui/JiongYouActivity$3;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity$3;-><init>(Lcom/hck/zhuanqian/ui/JiongYouActivity;)V

    .line 103
    invoke-virtual {v0, p1, v1}, Lcom/jy/func/JYOfferWall;->consumePoints(ILcom/jy/func/lner/CheckPointListener;)V

    .line 117
    return-void
.end method

.method private initJiongYou()V
    .locals 5

    .prologue
    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/jy/func/JYOfferWall;->getInstance(Landroid/content/Context;)Lcom/jy/func/JYOfferWall;

    move-result-object v1

    const-string v2, "56918"

    .line 35
    const-string v3, "1093"

    const-string v4, "567ce021d27a4c898302a9ee604c997d"

    .line 34
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/jy/func/JYOfferWall;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eee: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->showErrorToast()V

    .line 40
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->finish()V

    goto :goto_0
.end method

.method private showJiongYou()V
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/jy/func/JYOfferWall;->getInstance(Landroid/content/Context;)Lcom/jy/func/JYOfferWall;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jy/func/JYOfferWall;->showOfferWall(Landroid/content/Context;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->initJiongYou()V

    .line 29
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->setContentView(I)V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 75
    invoke-static {p0}, Lcom/jy/func/JYOfferWall;->getInstance(Landroid/content/Context;)Lcom/jy/func/JYOfferWall;

    move-result-object v0

    new-instance v1, Lcom/hck/zhuanqian/ui/JiongYouActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity$2;-><init>(Lcom/hck/zhuanqian/ui/JiongYouActivity;)V

    invoke-virtual {v0, v1}, Lcom/jy/func/JYOfferWall;->checkPoints(Lcom/jy/func/lner/CheckPointListener;)V

    .line 99
    return-void
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->showJiongYou()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->showErrorToast()V

    goto :goto_0
.end method
