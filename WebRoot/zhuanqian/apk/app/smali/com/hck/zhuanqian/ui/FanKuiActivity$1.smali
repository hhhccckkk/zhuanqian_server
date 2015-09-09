.class Lcom/hck/zhuanqian/ui/FanKuiActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "FanKuiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/FanKuiActivity;->addYiJian(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/FanKuiActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/FanKuiActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/FanKuiActivity;

    .line 51
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "content"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 54
    const-string v0, "\u589e\u52a0\u610f\u89c1\u5931\u8d25 \u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 73
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 74
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/FanKuiActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/FanKuiActivity;->isOK:Z

    .line 60
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/FanKuiActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/FanKuiActivity;->isOK:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "\u60a8\u7684\u610f\u89c1\u5df2\u6536\u5230 \u8c22\u8c22\u652f\u6301"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/FanKuiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/FanKuiActivity;

    #getter for: Lcom/hck/zhuanqian/ui/FanKuiActivity;->yijianEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/FanKuiActivity;->access$0(Lcom/hck/zhuanqian/ui/FanKuiActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v1, "\u589e\u52a0\u610f\u89c1\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "\u589e\u52a0\u610f\u89c1\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
