.class public Lcom/hck/zhuanqian/ui/DLActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DLActivity.java"

# interfaces
.implements Lcom/dlnetwork/GetTotalMoneyListener;
.implements Lcom/dlnetwork/SetTotalMoneyListener;
.implements Lcom/dlnetwork/SpendMoneyListener;


# instance fields
.field private cishu:I

.field private point:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->cishu:I

    .line 26
    return-void
.end method

.method private getMoney()V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    invoke-static {p0, p0}, Lcom/dlnetwork/DevInit;->getTotalMoney(Landroid/content/Context;Lcom/dlnetwork/GetTotalMoneyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u83b7\u53d6\u91d1\u5e01\u5931\u8d25 \u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDL()V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    const-string v1, "cc9a4da8ffb4aa8d5a031779cf542f0c"

    invoke-static {p0, v1}, Lcom/dlnetwork/DevInit;->initGoogleContext(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25 \u8bf7\u91cd\u8bd5"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/dianle.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "\u70b9\u4e50\u8d5a\u94b1\u4e13\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DLActivity;->initTitle(Ljava/lang/String;)V

    .line 45
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->webView:Landroid/webkit/WebView;

    .line 46
    return-void
.end method

.method private showDL()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/dlnetwork/DevInit;->showOffers(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u6253\u5f00\u4efb\u52a1\u5931\u8d25 \u8bf7\u91cd\u8bd5"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getTotalMoneyFailed(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 87
    return-void
.end method

.method public getTotalMoneySuccessed(Ljava/lang/String;J)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 92
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->point:I

    .line 93
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 94
    long-to-int v0, p2

    iput v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->point:I

    .line 95
    const-string v0, "\u70b9\u4e50"

    iget v1, p0, Lcom/hck/zhuanqian/ui/DLActivity;->point:I

    invoke-virtual {p0, v0, v1}, Lcom/hck/zhuanqian/ui/DLActivity;->savePoint(Ljava/lang/String;I)V

    .line 96
    long-to-int v0, p2

    invoke-static {p0, v0, p0}, Lcom/dlnetwork/DevInit;->spendMoney(Landroid/content/Context;ILcom/dlnetwork/SpendMoneyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DLActivity;->initDL()V

    .line 36
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DLActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DLActivity;->initView()V

    .line 38
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/DLActivity;->getAdInitData()V

    .line 39
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DLActivity;->initDownSize(Landroid/view/View;)V

    .line 40
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DLActivity;->initDate()V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onResume()V

    .line 115
    const-string v0, "onResumeonResumeonResume111"

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DLActivity;->getMoney()V

    .line 117
    return-void
.end method

.method public setTotalMoneyFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 105
    const-string v0, "\u521d\u59cb\u5316\u6570\u636e\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setTotalMoneySuccessed(Ljava/lang/String;J)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 110
    return-void
.end method

.method public spendMoneyFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 122
    :try_start_0
    iget v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->cishu:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    iget v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->point:I

    invoke-static {p0, v0, p0}, Lcom/dlnetwork/DevInit;->spendMoney(Landroid/content/Context;ILcom/dlnetwork/SpendMoneyListener;)V

    .line 126
    iget v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->cishu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hck/zhuanqian/ui/DLActivity;->cishu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public spendMoneySuccess(J)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 134
    return-void
.end method

.method public startGetMoney(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DLActivity;->showDL()V

    .line 65
    return-void
.end method
