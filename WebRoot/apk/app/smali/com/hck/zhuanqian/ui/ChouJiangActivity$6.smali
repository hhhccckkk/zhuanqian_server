.class Lcom/hck/zhuanqian/ui/ChouJiangActivity$6;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "ChouJiangActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/ChouJiangActivity;->reduceChouJiangSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$6;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    .line 282
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 287
    const-string v0, "\u7f51\u7edc\u5f02\u5e38 \u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 302
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 2
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$6;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #calls: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->updateChouJiangSize()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$10(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 295
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$6;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #calls: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startChouJiang()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$11(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 296
    return-void
.end method
