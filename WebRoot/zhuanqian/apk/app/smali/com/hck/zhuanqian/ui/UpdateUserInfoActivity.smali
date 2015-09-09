.class public Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "UpdateUserInfoActivity.java"


# instance fields
.field private nichenEditText:Landroid/widget/EditText;

.field private phonEditText:Landroid/widget/EditText;

.field private qqEditText:Landroid/widget/EditText;

.field private userName:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;

.field private userQQ:Ljava/lang/String;

.field private userZhiFuBao:Ljava/lang/String;

.field private zhifubaoEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->updateUser()V

    return-void
.end method

.method private checkData()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 96
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "\u7535\u8bdd\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userQQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "QQ\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userZhiFuBao:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    const-string v1, "\u652f\u4ed8\u5b9d\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 90
    const-string v1, "\u6635\u79f0\u4e0d\u80fd\u5c11\u4e8e2\u4e2a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_5

    .line 93
    const-string v1, "\u6635\u79f0\u4e0d\u80fd\u5927\u4e8e12\u4e2a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getData()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->nichenEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userName:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->phonEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userPhone:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->qqEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userQQ:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->zhifubaoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userZhiFuBao:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getMyData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    .line 34
    .local v0, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    const v1, 0x7f060052

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->nichenEditText:Landroid/widget/EditText;

    .line 35
    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->phonEditText:Landroid/widget/EditText;

    .line 36
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->qqEditText:Landroid/widget/EditText;

    .line 37
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->zhifubaoEditText:Landroid/widget/EditText;

    .line 38
    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->nichenEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->phonEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getQq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->qqEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getQq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getZhifubao()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 48
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->zhifubaoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getZhifubao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_3
    return-void
.end method

.method private updateUser()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userQQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/bean/UserBean;->setQq(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userZhiFuBao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/bean/UserBean;->setZhifubao(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/bean/UserBean;->setName(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/bean/UserBean;->setPhone(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private updateUserInfo()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 102
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

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

    .line 103
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "nicheng"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "phone"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "qq"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userQQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "zhifubao"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->userZhiFuBao:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;-><init>(Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->updateUserInfo(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->setContentView(I)V

    .line 27
    const-string v0, "\u4fee\u6539\u7528\u6237\u4fe1\u606f"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->initTitle(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->initView()V

    .line 30
    return-void
.end method

.method public updateUser(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->getData()V

    .line 54
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->checkData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "\u6b63\u5728\u4fee\u6539\u7528\u6237"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->updateUserInfo()V

    .line 59
    :cond_0
    return-void
.end method
