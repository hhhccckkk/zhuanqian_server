.class Lcom/hck/zhuanqian/ui/TGActivity$4;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "TGActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/TGActivity;->daBao()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/TGActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/TGActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    .line 153
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geturl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 158
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    const-string v3, "isok"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/hck/zhuanqian/ui/TGActivity;->isOK:Z

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isok; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    iget-boolean v3, v3, Lcom/hck/zhuanqian/ui/TGActivity;->isOK:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    iget-boolean v2, v2, Lcom/hck/zhuanqian/ui/TGActivity;->isOK:Z

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TGActivity;->getUrlButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TGActivity;->access$0(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TGActivity;->showMyTGUrLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/TGActivity;->access$1(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    const-string v2, "tgapp"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/hck/zhuanqian/bean/TgAppBean;

    invoke-static {v2, v3}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/bean/TgAppBean;

    .line 178
    .local v0, appBean:Lcom/hck/zhuanqian/bean/TgAppBean;
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/TGActivity$4;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #calls: Lcom/hck/zhuanqian/ui/TGActivity;->updateView(Lcom/hck/zhuanqian/bean/TgAppBean;)V
    invoke-static {v2, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->access$2(Lcom/hck/zhuanqian/ui/TGActivity;Lcom/hck/zhuanqian/bean/TgAppBean;)V

    .line 185
    .end local v0           #appBean:Lcom/hck/zhuanqian/bean/TgAppBean;
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v2, "\u83b7\u53d6\u5931\u8d25 \u8bf7\u91cd\u8bd5"

    invoke-static {v2}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    goto :goto_0
.end method
