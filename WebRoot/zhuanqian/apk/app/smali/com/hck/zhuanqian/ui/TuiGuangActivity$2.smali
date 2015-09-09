.class Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "TuiGuangActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/TuiGuangActivity;->getTuiGuangData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    .line 82
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$4(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->errorView:Landroid/view/View;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$5(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinish: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$6(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$4(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 92
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    const-string v3, "isok"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isOK:Z

    .line 98
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    iget-boolean v2, v2, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isOK:Z

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$7(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/hck/zhuanqian/data/TuiGuangData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isResh:Z
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$8(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$7(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/hck/zhuanqian/data/TuiGuangData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 101
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tuiGBeans:Ljava/util/List;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$9(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 104
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/hck/zhuanqian/data/TuiGuangData;

    .line 103
    invoke-static {v2, v3}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/data/TuiGuangData;

    .line 105
    .local v0, data:Lcom/hck/zhuanqian/data/TuiGuangData;
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tuiGBeans:Ljava/util/List;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$9(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$7(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/hck/zhuanqian/data/TuiGuangData;

    move-result-object v2

    iget-object v3, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->tuiGBeans:Ljava/util/List;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$9(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hck/zhuanqian/data/TuiGuangData;->setTuiGBeans(Ljava/util/List;)V

    .line 107
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #calls: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->updateUI()V
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$10(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V

    .line 115
    .end local v0           #data:Lcom/hck/zhuanqian/data/TuiGuangData;
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$4(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->errorView:Landroid/view/View;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$5(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$4(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->errorView:Landroid/view/View;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$5(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method
