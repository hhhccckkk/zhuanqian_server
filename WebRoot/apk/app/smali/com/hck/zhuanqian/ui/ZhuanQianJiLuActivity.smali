.class public Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "ZhuanQianJiLuActivity.java"


# instance fields
.field private adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

.field private errorView:Landroid/view/View;

.field private isResh:Z

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mLoadingView:Landroid/view/View;

.field private orderBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I

    .line 36
    new-instance v0, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-direct {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->orderBeans:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->isResh:Z

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->orderBeans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->getDataFromServer()V

    return-void
.end method

.method static synthetic access$5(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I

    return v0
.end method

.method static synthetic access$6(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->updateUI()V

    return-void
.end method

.method private getDataFromServer()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 91
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->params:Lcom/hck/httpserver/RequestParams;

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

    .line 92
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;-><init>(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V

    .line 122
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 93
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->getZhuanQianJiLu(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V

    .line 124
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 53
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 54
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 55
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->mLoadingView:Landroid/view/View;

    .line 56
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->errorView:Landroid/view/View;

    .line 59
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;-><init>(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 84
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->errorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 146
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->isResh:Z

    .line 147
    :goto_1
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->isResh:Z

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-direct {v0, v1, p0}, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;-><init>(Lcom/hck/zhuanqian/data/ZhuanQianJiLu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    .line 136
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    if-nez v0, :cond_3

    .line 140
    new-instance v0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-direct {v0, v1, p0}, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;-><init>(Lcom/hck/zhuanqian/data/ZhuanQianJiLu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    .line 141
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->adapter:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->notifyDataSetChanged(Lcom/hck/zhuanqian/data/ZhuanQianJiLu;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->setContentView(I)V

    .line 45
    const-string v0, "\u8d5a\u94b1\u8bb0\u5f55"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->initTitle(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->initView()V

    .line 47
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->setListener()V

    .line 48
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->getDataFromServer()V

    .line 50
    return-void
.end method
