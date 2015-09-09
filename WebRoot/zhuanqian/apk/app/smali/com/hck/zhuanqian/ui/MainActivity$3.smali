.class Lcom/hck/zhuanqian/ui/MainActivity$3;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MainActivity;->updateUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MainActivity$3;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    .line 252
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 257
    const-string v0, "\u5237\u65b0\u5931\u8d25 \u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity$3;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/MainActivity;->access$4(Lcom/hck/zhuanqian/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 285
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 264
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, isok:Z
    :try_start_0
    const-string v3, "isok"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 268
    if-eqz v1, :cond_0

    .line 269
    const-string v3, "user"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/hck/zhuanqian/bean/UserBean;

    invoke-static {v3, v4}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hck/zhuanqian/bean/UserBean;

    .line 270
    .local v2, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hck/zhuanqian/data/MyData;->setUserBean(Lcom/hck/zhuanqian/bean/UserBean;)V

    .line 272
    .end local v2           #userBean:Lcom/hck/zhuanqian/bean/UserBean;
    :cond_0
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity$3;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    #calls: Lcom/hck/zhuanqian/ui/MainActivity;->initUserData()V
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/MainActivity;->access$3(Lcom/hck/zhuanqian/ui/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
