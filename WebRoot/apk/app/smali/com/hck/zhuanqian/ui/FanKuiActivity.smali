.class public Lcom/hck/zhuanqian/ui/FanKuiActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "FanKuiActivity.java"


# instance fields
.field private yijianEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/FanKuiActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->yijianEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private addYiJian(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 47
    const-string v0, "\u5904\u7406\u4e2d..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 49
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "uid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/FanKuiActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/FanKuiActivity$1;-><init>(Lcom/hck/zhuanqian/ui/FanKuiActivity;)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->addYiJian(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 76
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/FanKuiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->yijianEditText:Landroid/widget/EditText;

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/FanKuiActivity;->setContentView(I)V

    .line 24
    const-string v0, "\u586b\u5199\u610f\u89c1\u53cd\u9988\u4fe1\u606f"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/FanKuiActivity;->initTitle(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/FanKuiActivity;->initView()V

    .line 27
    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity;->yijianEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "\u610f\u89c1\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_1

    .line 38
    const-string v1, "\u5b57\u6570\u4e0d\u80fd\u8d85\u8fc7140\u4e2a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 40
    const-string v1, "\u5b57\u6570\u4e0d\u80fd\u5c0f\u4e8e5\u4e2a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/FanKuiActivity;->addYiJian(Ljava/lang/String;)V

    goto :goto_0
.end method
