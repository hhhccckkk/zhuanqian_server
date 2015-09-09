.class public Lcom/hck/zhuanqian/ui/DuiHuanActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DuiHuanActivity.java"


# instance fields
.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/DuiHuanActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getDuiHuanJiLuData()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;-><init>(Lcom/hck/zhuanqian/ui/DuiHuanActivity;)V

    invoke-static {v0}, Lcom/hck/zhuanqian/net/Request;->getDuiHuanJiLu(Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 69
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->listView:Landroid/widget/ListView;

    .line 34
    return-void
.end method


# virtual methods
.method public duihuanQQ(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public duihuanZFB(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->setContentView(I)V

    .line 26
    const-string v0, "\u6700\u65b0\u5151\u6362\u8bb0\u5f55"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->initTitle(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->initView()V

    .line 28
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->getDuiHuanJiLuData()V

    .line 29
    return-void
.end method
