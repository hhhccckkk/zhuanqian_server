.class Lcom/hck/zhuanqian/ui/HongBaoActivity$4;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "HongBaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/HongBaoActivity;->savePointHongBao(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

.field private final synthetic val$point:I


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iput p2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->val$point:I

    .line 184
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 204
    const-string v0, "\u83b7\u53d6\u91d1\u5e01\u5931\u8d25 \u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$7(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$16(Lcom/hck/zhuanqian/ui/HongBaoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->update(I)V

    .line 206
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$17(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    .line 207
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 189
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 194
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iget v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->val$point:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->updateUserPoint(J)V

    .line 195
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->hongbao:Lcom/hck/zhuanqian/bean/Hongbao;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$14(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/bean/Hongbao;

    move-result-object v1

    #calls: Lcom/hck/zhuanqian/ui/HongBaoActivity;->addTgInfo(Lcom/hck/zhuanqian/bean/Hongbao;)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$15(Lcom/hck/zhuanqian/ui/HongBaoActivity;Lcom/hck/zhuanqian/bean/Hongbao;)V

    .line 196
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->adpter:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$7(Lcom/hck/zhuanqian/ui/HongBaoActivity;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    move-result-object v0

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$16(Lcom/hck/zhuanqian/ui/HongBaoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->update(I)V

    .line 197
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->post:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$17(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    .line 199
    return-void
.end method
