.class Lcom/hck/zhuanqian/ui/SplashActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/SplashActivity;->getConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/SplashActivity$1;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

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
    .line 76
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity$1;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/SplashActivity;->showNetErrorDialog()V

    .line 79
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 84
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, isOK:Z
    :try_start_0
    const-string v3, "isok"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 91
    :goto_0
    if-eqz v2, :cond_0

    .line 94
    :try_start_1
    const-string v3, "data"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/hck/zhuanqian/bean/Config;

    .line 93
    invoke-static {v3, v4}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/bean/Config;

    .line 95
    .local v0, config:Lcom/hck/zhuanqian/bean/Config;
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hck/zhuanqian/data/MyData;->setConfig(Lcom/hck/zhuanqian/bean/Config;)V

    .line 96
    const-string v3, "user"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hck/zhuanqian/util/MyPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .end local v0           #config:Lcom/hck/zhuanqian/bean/Config;
    :goto_1
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/SplashActivity$1;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

    #calls: Lcom/hck/zhuanqian/ui/SplashActivity;->addUser()V
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/SplashActivity;->access$0(Lcom/hck/zhuanqian/ui/SplashActivity;)V

    .line 108
    :goto_2
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConfig: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 99
    const-string v3, "\u670d\u52a1\u5668\u6b63\u5728\u7ef4\u62a4\u4e2d"

    invoke-static {v3}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/SplashActivity$1;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/ui/SplashActivity;->finish()V

    goto :goto_1

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "\u670d\u52a1\u5668\u6b63\u5728\u7ef4\u62a4\u4e2d"

    invoke-static {v3}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/SplashActivity$1;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/ui/SplashActivity;->finish()V

    goto :goto_2

    .line 88
    :catch_1
    move-exception v3

    goto :goto_0
.end method
