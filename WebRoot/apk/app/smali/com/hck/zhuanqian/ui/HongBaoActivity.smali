.class public Lcom/hck/zhuanqian/ui/HongBaoActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "HongBaoActivity.java"

# interfaces
.implements Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;
.implements Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;


# instance fields
.field private adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

.field private errorView:Landroid/view/View;

.field private hData:Lcom/hck/zhuanqian/data/HongBaoData;

.field private hongbao:Lcom/hck/zhuanqian/bean/Hongbao;

.field private hongbaos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/Hongbao;",
            ">;"
        }
    .end annotation
.end field

.field private isIng:Z

.field private isUpdate:Z

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private nTextView:Landroid/widget/TextView;

.field private page:I

.field private post:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbaos:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/hck/zhuanqian/data/HongBaoData;

    invoke-direct {v0}, Lcom/hck/zhuanqian/data/HongBaoData;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hData:Lcom/hck/zhuanqian/data/HongBaoData;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I

    return-void
.end method

.method static synthetic access$11(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->getHongBao()V

    return-void
.end method

.method static synthetic access$12(Lcom/hck/zhuanqian/ui/HongBaoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I

    return v0
.end method

.method static synthetic access$13(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->savePointHongBao(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/bean/Hongbao;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbao:Lcom/hck/zhuanqian/bean/Hongbao;

    return-object v0
.end method

.method static synthetic access$15(Lcom/hck/zhuanqian/ui/HongBaoActivity;Lcom/hck/zhuanqian/bean/Hongbao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->addTgInfo(Lcom/hck/zhuanqian/bean/Hongbao;)V

    return-void
.end method

.method static synthetic access$16(Lcom/hck/zhuanqian/ui/HongBaoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I

    return v0
.end method

.method static synthetic access$17(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->nTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/HongBaoActivity;Lcom/hck/zhuanqian/data/HongBaoData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hData:Lcom/hck/zhuanqian/data/HongBaoData;

    return-void
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/data/HongBaoData;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hData:Lcom/hck/zhuanqian/data/HongBaoData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hck/zhuanqian/ui/HongBaoActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbaos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$7(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/hck/zhuanqian/ui/HongBaoActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->isUpdate:Z

    return-void
.end method

.method private addTgInfo(Lcom/hck/zhuanqian/bean/Hongbao;)V
    .locals 5
    .parameter "hongbao"

    .prologue
    .line 228
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 229
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

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

    .line 230
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/hck/zhuanqian/bean/Hongbao;->getuName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u62c6\u5f00\u7ea2\u5305\u83b7\u53d6\u63a8\u5e7f\u91d1\u5e01: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hck/zhuanqian/bean/Hongbao;->getPoint()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/HongBaoActivity$5;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity$5;-><init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->addTGInfo(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 251
    return-void
.end method

.method private getHongBao()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 72
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;-><init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->getHongBao(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 113
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 61
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 62
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 63
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->view:Landroid/view/View;

    .line 64
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->errorView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->errorView:Landroid/view/View;

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->nTextView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->nTextView:Landroid/widget/TextView;

    const-string v1, "\u60a8\u8fd8\u6ca1\u6709\u7ea2\u5305 \u63a8\u5e7f\u7528\u6237\u53ef\u4ee5\u65e0\u9650\u83b7\u53d6\u7ea2\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->nTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    return-void
.end method

.method private savePointHongBao(I)V
    .locals 4
    .parameter "point"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbao:Lcom/hck/zhuanqian/bean/Hongbao;

    invoke-virtual {v2}, Lcom/hck/zhuanqian/bean/Hongbao;->getIsXiTong()I

    move-result v1

    .line 180
    .local v1, isXiTong:I
    const/4 v0, 0x1

    .line 181
    .local v0, isTG:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :cond_0
    const-string v2, "\u7ea2\u5305"

    new-instance v3, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;-><init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    invoke-virtual {p0, v2, p1, v0, v3}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->savePoint(Ljava/lang/String;IZLcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 209
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;-><init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 131
    return-void
.end method

.method private updateHongbaoState(JI)V
    .locals 4
    .parameter "id"
    .parameter "point"

    .prologue
    .line 160
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 161
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/HongBaoActivity$3;

    invoke-direct {v1, p0, p3}, Lcom/hck/zhuanqian/ui/HongBaoActivity$3;-><init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->updateHongBao(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 176
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->isUpdate:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbaos:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    .line 139
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->isUpdate:Z

    .line 144
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbaos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->update(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public callBack(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 225
    return-void
.end method

.method public daKai(Lcom/hck/zhuanqian/bean/Hongbao;I)V
    .locals 3
    .parameter "hongbao"
    .parameter "post"

    .prologue
    .line 148
    iput p2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I

    .line 149
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbao:Lcom/hck/zhuanqian/bean/Hongbao;

    .line 150
    iget-boolean v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->isIng:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "\u6b63\u5728\u62c6\u7ea2\u5305\u4e2d"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v0, "\u6b63\u5728\u62c6\u7ea2\u5305\u4e2d..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {p1}, Lcom/hck/zhuanqian/bean/Hongbao;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/hck/zhuanqian/bean/Hongbao;->getPoint()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->updateHongbaoState(JI)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->setContentView(I)V

    .line 52
    const-string v0, "\u6211\u7684\u7ea2\u5305"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->initTitle(Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->type:I

    .line 54
    const v0, 0x5f5e100

    iput v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity;->maxNum:I

    .line 55
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->getHongBao()V

    .line 57
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->setListener()V

    .line 58
    return-void
.end method

.method public updateUserPoint(J)V
    .locals 6
    .parameter "point"

    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/UserBean;->getAllKeDouBi()J

    move-result-wide v1

    .line 214
    .local v1, nowPoint:J
    add-long/2addr v1, p1

    .line 215
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/hck/zhuanqian/bean/UserBean;->setAllKeDouBi(J)V

    .line 216
    const-string v3, "\u606d\u559c"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u62c6\u5f00\u7ea2\u5305\u83b7\u53d6\u91d1\u5e01 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e2a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1           #nowPoint:J
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u589e\u52a0\u91d1\u5e01\u5931\u8d25"

    invoke-static {v3}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
