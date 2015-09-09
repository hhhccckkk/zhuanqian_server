.class Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "ZhuanQianJiLuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->getDataFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    .line 93
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$7(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->errorView:Landroid/view/View;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$8(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$6(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$7(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 100
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    const-string v3, "isok"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->isOK:Z

    .line 111
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    const-class v3, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    .line 111
    invoke-static {v2, v3}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    .line 113
    .local v0, data:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->orderBeans:Ljava/util/List;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$3(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$2(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    move-result-object v2

    iget-object v3, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->orderBeans:Ljava/util/List;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$3(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->setOrderBeans(Ljava/util/List;)V

    .line 115
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #calls: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->updateUI()V
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$9(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0           #data:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u89e3\u6790\u9519\u8bef: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$7(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->errorView:Landroid/view/View;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$8(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method
