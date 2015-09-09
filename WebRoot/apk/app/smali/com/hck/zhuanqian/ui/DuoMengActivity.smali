.class public Lcom/hck/zhuanqian/ui/DuoMengActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DuoMengActivity.java"


# instance fields
.field handler:Landroid/os/Handler;

.field private point:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 92
    new-instance v0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;-><init>(Lcom/hck/zhuanqian/ui/DuoMengActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I

    return v0
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->huafei(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity;->size:I

    return v0
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity;->size:I

    return-void
.end method

.method private huafei(I)V
    .locals 2
    .parameter "point"

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lcn/aow/android/DAOW;->getInstance(Landroid/content/Context;)Lcn/aow/android/DAOW;

    move-result-object v0

    new-instance v1, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;-><init>(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    invoke-virtual {v0, p1, v1}, Lcn/aow/android/DAOW;->consumePoints(ILcn/aow/android/DListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initAd()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Lcn/aow/android/DAOW;->getInstance(Landroid/content/Context;)Lcn/aow/android/DAOW;

    move-result-object v1

    const-string v2, "96ZJ39swzexVDwTD7j"

    invoke-virtual {v1, p0, v2}, Lcn/aow/android/DAOW;->init(Landroid/content/Context;Ljava/lang/String;)V
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
    const-string v1, "\u521d\u59cb\u5316\u6570\u636e\u5931\u8d25 \u8bf7\u91cd\u8bd5 "

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->finish()V

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
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->initAd()V

    .line 29
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->getAdInitData()V

    .line 31
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->initDownSize(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 57
    :try_start_0
    invoke-static {p0}, Lcn/aow/android/DAOW;->getInstance(Landroid/content/Context;)Lcn/aow/android/DAOW;

    move-result-object v1

    new-instance v2, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;

    invoke-direct {v2, p0}, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;-><init>(Lcom/hck/zhuanqian/ui/DuoMengActivity;)V

    invoke-virtual {v1, v2}, Lcn/aow/android/DAOW;->checkPoints(Lcn/aow/android/DListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dd:onResume onError222"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Lcn/aow/android/DAOW;->getInstance(Landroid/content/Context;)Lcn/aow/android/DAOW;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/aow/android/DAOW;->show(Landroid/content/Context;)V
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
    const-string v1, "\u521d\u59cb\u5316\u6570\u636e\u5931\u8d25 \u8bf7\u91cd\u8bd5 "

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
