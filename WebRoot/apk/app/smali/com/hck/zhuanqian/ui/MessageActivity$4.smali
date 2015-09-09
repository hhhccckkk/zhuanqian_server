.class Lcom/hck/zhuanqian/ui/MessageActivity$4;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "MessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MessageActivity;->deleteMsg(Ljava/lang/Long;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MessageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$4;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    iput p2, p0, Lcom/hck/zhuanqian/ui/MessageActivity$4;->val$pos:I

    .line 139
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "content"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 147
    const-string v0, "\u5220\u9664\u5931\u8d25"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 141
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 142
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$4;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/MessageActivity;->isOK:Z

    .line 155
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$4;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/MessageActivity;->isOK:Z

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$4;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->adpter:Lcom/hck/zhuanqian/adapter/MessageAdpter;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$4(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/hck/zhuanqian/adapter/MessageAdpter;

    move-result-object v1

    iget v2, p0, Lcom/hck/zhuanqian/ui/MessageActivity$4;->val$pos:I

    invoke-virtual {v1, v2}, Lcom/hck/zhuanqian/adapter/MessageAdpter;->updateMsg(I)V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
