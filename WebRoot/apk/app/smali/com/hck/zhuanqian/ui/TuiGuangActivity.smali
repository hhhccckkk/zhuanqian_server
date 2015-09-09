.class public Lcom/hck/zhuanqian/ui/TuiGuangActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "TuiGuangActivity.java"


# instance fields
.field private adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

.field private errorView:Landroid/view/View;

.field private isResh:Z

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mLoadingView:Landroid/view/View;

.field private page:I

.field private tData:Lcom/hck/zhuanqian/data/TuiGuangData;

.field private tuiGBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/TuiGBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I

    .line 30
    new-instance v0, Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-direct {v0}, Lcom/hck/zhuanqian/data/TuiGuangData;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tuiGBeans:Ljava/util/List;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/TuiGuangActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isResh:Z

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/TuiGuangActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I

    return-void
.end method

.method static synthetic access$10(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->getTuiGuangData()V

    return-void
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I

    return v0
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/hck/zhuanqian/data/TuiGuangData;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    return-object v0
.end method

.method static synthetic access$8(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isResh:Z

    return v0
.end method

.method static synthetic access$9(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tuiGBeans:Ljava/util/List;

    return-object v0
.end method

.method private getTuiGuangData()V
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->params:Lcom/hck/httpserver/RequestParams;

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

    .line 81
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;-><init>(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V

    .line 118
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 82
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->getTG(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V

    .line 120
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 46
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 47
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 48
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->mLoadingView:Landroid/view/View;

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->errorView:Landroid/view/View;

    .line 52
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;-><init>(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 72
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isResh:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    .line 126
    new-instance v0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-direct {v0, v1, p0}, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;-><init>(Lcom/hck/zhuanqian/data/TuiGuangData;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    .line 127
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    if-nez v0, :cond_2

    .line 131
    new-instance v0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-direct {v0, v1, p0}, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;-><init>(Lcom/hck/zhuanqian/data/TuiGuangData;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    .line 132
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isResh:Z

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->adapter:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->notifyDataSetChanged(Lcom/hck/zhuanqian/data/TuiGuangData;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->setContentView(I)V

    .line 39
    const-string v0, "\u63a8\u5e7f\u8d5a\u94b1\u8bb0\u5f55"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->initTitle(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->initView()V

    .line 41
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->getTuiGuangData()V

    .line 42
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->setListener()V

    .line 43
    return-void
.end method
