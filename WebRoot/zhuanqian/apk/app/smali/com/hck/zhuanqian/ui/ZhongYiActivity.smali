.class public Lcom/hck/zhuanqian/ui/ZhongYiActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "ZhongYiActivity.java"

# interfaces
.implements Lcom/zy/phone/net/Integral;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initAd()V
    .locals 3

    .prologue
    .line 28
    :try_start_0
    const-string v1, "be30cd52ce0941b8"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/zy/phone/SDKInit;->initAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/ZhongYiActivity;->showErrorToast()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ZhongYiActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ZhongYiActivity;->initAd()V

    .line 24
    return-void
.end method

.method public retAddIntegral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 47
    return-void
.end method

.method public retCheckIntegral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 52
    return-void
.end method

.method public retMinusIntegral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 57
    return-void
.end method

.method public showAd(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/zy/phone/SDKInit;->initAdList(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/zy/phone/SDKInit;->checkIntegral(Lcom/zy/phone/net/Integral;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/ZhongYiActivity;->showErrorToast()V

    goto :goto_0
.end method
