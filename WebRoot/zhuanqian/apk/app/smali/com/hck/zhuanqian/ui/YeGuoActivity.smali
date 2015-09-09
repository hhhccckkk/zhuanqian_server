.class public Lcom/hck/zhuanqian/ui/YeGuoActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "YeGuoActivity.java"

# interfaces
.implements Lcn/yeeguo/YeeguoScoreOnListener;


# instance fields
.field handler:Landroid/os/Handler;

.field private point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/hck/zhuanqian/ui/YeGuoActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/YeGuoActivity$1;-><init>(Lcom/hck/zhuanqian/ui/YeGuoActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity;->handler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/YeGuoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity;->point:I

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/YeGuoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity;->point:I

    return v0
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "\u5c0f\u6930\u8d5a\u94b1\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->initTitle(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/yeguo.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private initYeGuo()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    const-string v1, "5573535235e9461d77c962c3ff7f5242"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/yeeguo/Yeeguo;->initYeeguo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->showErrorToast()V

    goto :goto_0
.end method

.method private showYG()V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p0}, Lcn/yeeguo/Yeeguo;->showOffers(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->initYeGuo()V

    .line 26
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->getAdInitData()V

    .line 28
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->initDownSize(Landroid/view/View;)V

    .line 29
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity;->webView:Landroid/webkit/WebView;

    .line 30
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->initDate()V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 82
    return-void
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->showYG()V

    .line 49
    return-void
.end method

.method public yeeguoErrorListener(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 57
    return-void
.end method

.method public yeeguoScoreListener(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"

    .prologue
    .line 62
    if-lez p3, :cond_0

    .line 63
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 64
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->what:I

    .line 65
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method
