.class Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRequestCallBack"
.end annotation


# instance fields
.field point:I

.field final synthetic this$0:Lcom/hck/zhuanqian/ui/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/hck/zhuanqian/ui/BaseActivity;I)V
    .locals 1
    .parameter
    .parameter "point"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;->this$0:Lcom/hck/zhuanqian/ui/BaseActivity;

    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;->point:I

    .line 127
    iput p2, p0, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;->point:I

    .line 128
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u589e\u52a0\u91d1\u5e01\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 134
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\u589e\u52a0\u91d1\u5e01\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 2
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u589e\u52a0\u91d1\u5e01\u6210\u529f: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;->this$0:Lcom/hck/zhuanqian/ui/BaseActivity;

    iget v1, p0, Lcom/hck/zhuanqian/ui/BaseActivity$MyRequestCallBack;->point:I

    #calls: Lcom/hck/zhuanqian/ui/BaseActivity;->dealResult(Lorg/json/JSONObject;I)V
    invoke-static {v0, p2, v1}, Lcom/hck/zhuanqian/ui/BaseActivity;->access$0(Lcom/hck/zhuanqian/ui/BaseActivity;Lorg/json/JSONObject;I)V

    .line 143
    return-void
.end method
