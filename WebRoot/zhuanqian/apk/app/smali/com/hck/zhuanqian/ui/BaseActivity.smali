.class public Lcom/hck/zhuanqian/ui/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;
    }
.end annotation


# static fields
.field private static final ADD_MONEY_OUT_SIZE:I = 0x1

.field private static final ADD_MONEY_SUCCESS:I = 0x2


# instance fields
.field public isOK:Z

.field protected mTitleBar:Lcom/hck/zhuanqian/view/TitleBar;

.field public maxNum:I

.field public params:Lcom/hck/httpserver/RequestParams;

.field public type:I

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/BaseActivity;Lorg/json/JSONObject;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/hck/zhuanqian/ui/BaseActivity;->dealResult(Lorg/json/JSONObject;I)V

    return-void
.end method

.method private dealResult(Lorg/json/JSONObject;I)V
    .locals 4
    .parameter "response"
    .parameter "point"

    .prologue
    .line 149
    :try_start_0
    const-string v2, "isok"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->isOK:Z

    .line 150
    iget-boolean v2, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->isOK:Z

    if-eqz v2, :cond_2

    .line 151
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, type:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u589e\u52a0\u91d1\u5e01\u5931\u8d25 \u672c\u533a\u6bcf\u5929\u9650\u5236\u505a\u4efb\u52a1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->maxNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 164
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v1       #type:I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 155
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/hck/zhuanqian/ui/BaseActivity;->updateUserPoint(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1           #type:I
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\u589e\u52a0\u91d1\u5e01\u5931\u8d25"

    invoke-static {v2}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\u589e\u52a0\u91d1\u5e01\u5931\u8d25"

    invoke-static {v2}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getRootView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, localLinearLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    return-object v0
.end method

.method private initTitleBar()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/hck/zhuanqian/view/TitleBar;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/view/TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->mTitleBar:Lcom/hck/zhuanqian/view/TitleBar;

    .line 71
    return-void
.end method


# virtual methods
.method public getAdInitData()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->type:I

    .line 92
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxNum"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->maxNum:I

    .line 93
    return-void
.end method

.method public getAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, isAirplaneMode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getStringData(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBar()Lcom/hck/zhuanqian/view/TitleBar;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->mTitleBar:Lcom/hck/zhuanqian/view/TitleBar;

    return-object v0
.end method

.method public initDownSize(Landroid/view/View;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 97
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8be5\u533a\u6bcf\u5929\u9650\u5236\u4e0b\u8f7dapp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->maxNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public initTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->mTitleBar:Lcom/hck/zhuanqian/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/hck/zhuanqian/view/TitleBar;->setTitleContent(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public savePoint(I)V
    .locals 6
    .parameter "point"

    .prologue
    .line 175
    const/16 v0, 0x65

    const/16 v1, 0x3e8

    const-string v2, "\u62bd\u5956"

    const/4 v4, 0x0

    new-instance v5, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;

    invoke-direct {v5, p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;-><init>(Lcom/hck/zhuanqian/ui/BaseActivity;I)V

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/hck/zhuanqian/net/Request;->addPoint(IILjava/lang/String;IZLcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 176
    return-void
.end method

.method public savePoint(Ljava/lang/String;I)V
    .locals 6
    .parameter "adName"
    .parameter "point"

    .prologue
    .line 167
    iget v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->type:I

    iget v1, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->maxNum:I

    const/4 v4, 0x0

    new-instance v5, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;

    invoke-direct {v5, p0, p2}, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;-><init>(Lcom/hck/zhuanqian/ui/BaseActivity;I)V

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/hck/zhuanqian/net/Request;->addPoint(IILjava/lang/String;IZLcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 168
    return-void
.end method

.method public savePoint(Ljava/lang/String;IZLcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 6
    .parameter "adName"
    .parameter "point"
    .parameter "isTG"
    .parameter "handler"

    .prologue
    .line 171
    iget v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->type:I

    iget v1, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->maxNum:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/hck/zhuanqian/net/Request;->addPoint(IILjava/lang/String;IZLcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 172
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .parameter "layout"

    .prologue
    const/4 v4, -0x1

    .line 54
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hck/zhuanqian/ui/BaseActivity;->setRequestedOrientation(I)V

    .line 55
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->initTitleBar()V

    .line 56
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 57
    .local v1, root:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, paramView:Landroid/view/View;
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/BaseActivity;->mTitleBar:Lcom/hck/zhuanqian/view/TitleBar;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 59
    invoke-virtual {v1, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 60
    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public showErrorToast()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25 \u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public showGetMoneyErrorToast()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "\u83b7\u53d6\u91d1\u5e01\u5931\u8d25 \u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public showNetErrorToast()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25 \u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public updateUserPoint(J)V
    .locals 5
    .parameter "point"

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/UserBean;->getAllKeDouBi()J

    move-result-wide v1

    .line 115
    .local v1, nowPoint:J
    add-long/2addr v1, p1

    .line 116
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/hck/zhuanqian/bean/UserBean;->setAllKeDouBi(J)V

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u5f97\u91d1\u5e01: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #nowPoint:J
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u589e\u52a0\u91d1\u5e01\u5931\u8d25"

    invoke-static {v3}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
