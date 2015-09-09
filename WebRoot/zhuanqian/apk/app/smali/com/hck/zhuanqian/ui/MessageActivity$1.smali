.class Lcom/hck/zhuanqian/ui/MessageActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "MessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MessageActivity;->getMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MessageActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    .line 53
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 57
    const-string v0, "\u83b7\u53d6\u6d88\u606f\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$0(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->errorView:Landroid/view/View;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$1(Lcom/hck/zhuanqian/ui/MessageActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 59
    invoke-static {p2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 87
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/MessageActivity;->isOK:Z

    .line 68
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/MessageActivity;->isOK:Z

    if-eqz v1, :cond_1

    .line 69
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/hck/zhuanqian/data/MessageData;

    invoke-static {v1, v3}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hck/zhuanqian/data/MessageData;

    #setter for: Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;
    invoke-static {v2, v1}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$2(Lcom/hck/zhuanqian/ui/MessageActivity;Lcom/hck/zhuanqian/data/MessageData;)V

    .line 70
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #calls: Lcom/hck/zhuanqian/ui/MessageActivity;->updateMsg()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$3(Lcom/hck/zhuanqian/ui/MessageActivity;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->adpter:Lcom/hck/zhuanqian/adapter/MessageAdpter;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$4(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/hck/zhuanqian/adapter/MessageAdpter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$0(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/MessageActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->errorView:Landroid/view/View;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$1(Lcom/hck/zhuanqian/ui/MessageActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u83b7\u53d6\u6d88\u606f\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
