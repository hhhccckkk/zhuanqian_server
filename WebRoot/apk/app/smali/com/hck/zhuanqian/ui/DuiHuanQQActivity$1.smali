.class Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "DuiHuanQQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->sendDataToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    .line 153
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;)Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 192
    const-string v0, "\u7f51\u7edc\u5f02\u5e38 \u4e0b\u5355\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 155
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 156
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 8
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 159
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    const-string v1, "isok"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->isOK:Z

    .line 162
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    iget-boolean v0, v0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->isOK:Z

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "jinbi"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 164
    .local v7, jinbi:I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    const-string v1, "\u5931\u8d25"

    .line 166
    const-string v2, "\u91d1\u5e01\u4e0d\u8db3\uff0c\u8bf7\u5230\u9996\u9875\u4e0b\u62c9\u66f4\u65b0\u7528\u6237\u4fe1\u606f"

    const/4 v3, 0x1

    .line 168
    new-instance v4, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1$1;

    invoke-direct {v4, p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1$1;-><init>(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;)V

    .line 174
    const/4 v5, 0x1

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V

    .line 188
    .end local v7           #jinbi:I
    :goto_0
    return-void

    .line 176
    .restart local v7       #jinbi:I
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    #calls: Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUser()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->access$0(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V

    .line 177
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    #calls: Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->remindNeedPoint()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->access$1(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V

    .line 178
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    #calls: Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->showSuccessDialog()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->access$2(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v7           #jinbi:I
    :catch_0
    move-exception v6

    .line 185
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "\u7f51\u7edc\u5f02\u5e38 \u4e0b\u5355\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v0, "\u7f51\u7edc\u5f02\u5e38 \u4e0b\u5355\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
