.class Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "UpdateUserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->updateUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;

    .line 107
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 131
    const-string v0, "\u4fee\u6539\u5931\u8d25 \u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 109
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 110
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 113
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

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->isOK:Z

    .line 116
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->isOK:Z

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;

    #calls: Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->updateUser()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->access$0(Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;)V

    .line 119
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;->finish()V

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v1, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
