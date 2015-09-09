.class Lcom/hck/zhuanqian/ui/KindActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "KindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/KindActivity;->getKindFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/KindActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/KindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    .line 45
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KindActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/KindActivity;->access$0(Lcom/hck/zhuanqian/ui/KindActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KindActivity;->errorView:Landroid/view/View;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/KindActivity;->access$1(Lcom/hck/zhuanqian/ui/KindActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/hck/zhuanqian/data/KindData;

    invoke-static {v1, v3}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hck/zhuanqian/data/KindData;

    #setter for: Lcom/hck/zhuanqian/ui/KindActivity;->kBean:Lcom/hck/zhuanqian/data/KindData;
    invoke-static {v2, v1}, Lcom/hck/zhuanqian/ui/KindActivity;->access$2(Lcom/hck/zhuanqian/ui/KindActivity;Lcom/hck/zhuanqian/data/KindData;)V

    .line 58
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #calls: Lcom/hck/zhuanqian/ui/KindActivity;->updateUI()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/KindActivity;->access$3(Lcom/hck/zhuanqian/ui/KindActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eee: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KindActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/KindActivity;->access$0(Lcom/hck/zhuanqian/ui/KindActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/KindActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KindActivity;->errorView:Landroid/view/View;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/KindActivity;->access$1(Lcom/hck/zhuanqian/ui/KindActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method
