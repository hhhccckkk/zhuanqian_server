.class public Lcom/hck/zhuanqian/ui/MessageActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "MessageActivity.java"


# instance fields
.field private adpter:Lcom/hck/zhuanqian/adapter/MessageAdpter;

.field private errorView:Landroid/view/View;

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private msgData:Lcom/hck/zhuanqian/data/MessageData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/MessageActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/MessageActivity;Lcom/hck/zhuanqian/data/MessageData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;

    return-void
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/MessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MessageActivity;->updateMsg()V

    return-void
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/hck/zhuanqian/adapter/MessageAdpter;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->adpter:Lcom/hck/zhuanqian/adapter/MessageAdpter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/hck/zhuanqian/data/MessageData;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;

    return-object v0
.end method

.method static synthetic access$6(Lcom/hck/zhuanqian/ui/MessageActivity;Ljava/lang/Long;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/hck/zhuanqian/ui/MessageActivity;->deleteMsg(Ljava/lang/Long;I)V

    return-void
.end method

.method private deleteMsg(Ljava/lang/Long;I)V
    .locals 3
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 136
    const-string v0, "\u5220\u9664\u4e2d..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 137
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 138
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "mid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/MessageActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/hck/zhuanqian/ui/MessageActivity$4;-><init>(Lcom/hck/zhuanqian/ui/MessageActivity;I)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->deleteMsg(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 168
    return-void
.end method

.method private getMsg()V
    .locals 5

    .prologue
    .line 50
    const-string v0, "\u83b7\u53d6\u6d88\u606f\u4e2d"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 51
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 52
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v1, "id"

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

    .line 53
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v1, Lcom/hck/zhuanqian/ui/MessageActivity$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/MessageActivity$1;-><init>(Lcom/hck/zhuanqian/ui/MessageActivity;)V

    invoke-static {v0, v1}, Lcom/hck/zhuanqian/net/Request;->getMsg(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 89
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 45
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->errorView:Landroid/view/View;

    .line 47
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/hck/zhuanqian/ui/MessageActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/MessageActivity$2;-><init>(Lcom/hck/zhuanqian/ui/MessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method

.method private updateMsg()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MessageData;->getMsgBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/hck/zhuanqian/adapter/MessageAdpter;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MessageData;->getMsgBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hck/zhuanqian/adapter/MessageAdpter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->adpter:Lcom/hck/zhuanqian/adapter/MessageAdpter;

    .line 94
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity;->adpter:Lcom/hck/zhuanqian/adapter/MessageAdpter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MessageActivity;->setContentView(I)V

    .line 38
    const-string v0, "\u6211\u7684\u6d88\u606f"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MessageActivity;->initTitle(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MessageActivity;->initView()V

    .line 40
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MessageActivity;->getMsg()V

    .line 41
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MessageActivity;->setListener()V

    .line 42
    return-void
.end method

.method public showDialog(JI)V
    .locals 3
    .parameter "id"
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MessageActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;
    invoke-virtual {v0, v2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCancelable(Z)V

    .line 117
    invoke-virtual {v0, v2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setLeftText(Ljava/lang/String;)V

    .line 119
    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setRightText(Ljava/lang/String;)V

    .line 120
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 121
    const-string v1, "\u5220\u9664\u8be5\u6d88\u606f\u5417?"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/hck/zhuanqian/ui/MessageActivity$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hck/zhuanqian/ui/MessageActivity$3;-><init>(Lcom/hck/zhuanqian/ui/MessageActivity;JI)V

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setOnRightListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MessageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->show()V

    goto :goto_0
.end method
