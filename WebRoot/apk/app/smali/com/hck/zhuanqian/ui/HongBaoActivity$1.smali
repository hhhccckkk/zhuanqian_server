.class Lcom/hck/zhuanqian/ui/HongBaoActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "HongBaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/HongBaoActivity;->getHongBao()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    .line 73
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 75
    const-string v0, "\u7f51\u8def\u5f02\u5e38 \u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$0(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->errorView:Landroid/view/View;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$1(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->nTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$2(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u60a8\u8fd8\u6ca1\u6709\u7ea2\u5305 \u63a8\u5e7fapp\u800c\u5df2\u83b7\u53d6\u5927\u91cf\u7ea2\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$8(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$0(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 111
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 83
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 85
    :try_start_0
    const-string v1, "size"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, size:I
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/HongBaoActivity;->isOK:Z

    .line 87
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/HongBaoActivity;->isOK:Z

    if-eqz v1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/hck/zhuanqian/data/HongBaoData;

    invoke-static {v1, v3}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hck/zhuanqian/data/HongBaoData;

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->hData:Lcom/hck/zhuanqian/data/HongBaoData;
    invoke-static {v2, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$3(Lcom/hck/zhuanqian/ui/HongBaoActivity;Lcom/hck/zhuanqian/data/HongBaoData;)V

    .line 89
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->hData:Lcom/hck/zhuanqian/data/HongBaoData;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$4(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/data/HongBaoData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/HongBaoData;->getHongbao()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbaos:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$5(Lcom/hck/zhuanqian/ui/HongBaoActivity;Ljava/util/List;)V

    .line 90
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #calls: Lcom/hck/zhuanqian/ui/HongBaoActivity;->updateUI()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$6(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V

    .line 104
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0       #size:I
    :cond_1
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$7(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$0(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->errorView:Landroid/view/View;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$1(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 100
    .end local v0           #size:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 96
    .restart local v0       #size:I
    :cond_2
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$7(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    move-result-object v1

    iget-object v1, v1, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 97
    const-string v1, "\u6ca1\u6709\u6570\u636e\u4e86"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
