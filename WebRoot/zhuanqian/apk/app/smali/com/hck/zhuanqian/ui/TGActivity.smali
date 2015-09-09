.class public Lcom/hck/zhuanqian/ui/TGActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "TGActivity.java"


# instance fields
.field private contentWebView:Landroid/webkit/WebView;

.field private downAppurlTextView:Landroid/widget/TextView;

.field private getUrlButton:Landroid/widget/Button;

.field private showMyTGUrLayout:Landroid/widget/LinearLayout;

.field private tgLianJieTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->getUrlButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->showMyTGUrLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/TGActivity;Lcom/hck/zhuanqian/bean/TgAppBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/TGActivity;->updateView(Lcom/hck/zhuanqian/bean/TgAppBean;)V

    return-void
.end method

.method private getDownUrl()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "\u83b7\u53d6\u6570\u636e\u4e2d"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 108
    new-instance v0, Lcom/hck/zhuanqian/ui/TGActivity$3;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/TGActivity$3;-><init>(Lcom/hck/zhuanqian/ui/TGActivity;)V

    invoke-static {v0}, Lcom/hck/zhuanqian/net/Request;->getMyTgAppUrl(Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 136
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->contentWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/tuiguang.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 91
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->getUrlButton:Landroid/widget/Button;

    .line 92
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->contentWebView:Landroid/webkit/WebView;

    .line 93
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->downAppurlTextView:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->showMyTGUrLayout:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->tgLianJieTextView:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->getUrlButton:Landroid/widget/Button;

    new-instance v1, Lcom/hck/zhuanqian/ui/TGActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/TGActivity$2;-><init>(Lcom/hck/zhuanqian/ui/TGActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private updateView(Lcom/hck/zhuanqian/bean/TgAppBean;)V
    .locals 3
    .parameter "appBean"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->downAppurlTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://115.159.78.151:8080/MyMoney/zhuanqian/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hck/zhuanqian/bean/TgAppBean;->getDownUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity;->tgLianJieTextView:Landroid/widget/TextView;

    const-string v1, "http://kedouzq.com/index.html"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method


# virtual methods
.method public daBao()V
    .locals 6

    .prologue
    .line 145
    const-string v1, "\u5904\u7406\u4e2d"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 146
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    .line 147
    .local v0, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    new-instance v1, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v1}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 148
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "uid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "uid1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia1()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "uid2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia2()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "uid3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia3()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "uid4"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia4()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcom/hck/zhuanqian/ui/TGActivity$4;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/TGActivity$4;-><init>(Lcom/hck/zhuanqian/ui/TGActivity;)V

    .line 186
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TGActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 153
    invoke-static {v1, v2}, Lcom/hck/zhuanqian/net/Request;->daBao(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->setContentView(I)V

    .line 45
    const-string v0, "\u63a8\u5e7f\u8d5a\u94b1(\u5fc5\u770b)"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->initTitle(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TGActivity;->initView()V

    .line 47
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TGActivity;->getDownUrl()V

    .line 48
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TGActivity;->initData()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onDestroy()V

    .line 192
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 193
    return-void
.end method

.method public share(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 52
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 54
    .local v0, oks:Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 55
    new-instance v1, Lcom/hck/zhuanqian/ui/TGActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/TGActivity$1;-><init>(Lcom/hck/zhuanqian/ui/TGActivity;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 74
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 75
    const-string v1, "\u6211\u662f\u5206\u4eab\u6587\u672c"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 76
    const-string v1, "\u6700\u597d\u7684\u624b\u673a\u8d5a\u94b1\u8f6f\u4ef6"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 77
    const-string v1, "http://kedouzq.com"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 78
    const-string v1, "http://f1.sharesdk.cn/imgs/2014/05/21/oESpJ78_533x800.jpg"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 79
    const-string v1, "http://f1.sharesdk.cn/imgs/2014/05/21/oESpJ78_533x800.jpg"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 83
    return-void
.end method
