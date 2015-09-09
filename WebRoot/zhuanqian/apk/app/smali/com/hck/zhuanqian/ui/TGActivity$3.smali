.class Lcom/hck/zhuanqian/ui/TGActivity$3;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "TGActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/TGActivity;->getDownUrl()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    .line 108
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TGActivity getDownUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 114
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 115
    invoke-static {p1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TGActivity onSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/TGActivity;->isOK:Z

    .line 122
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/TGActivity;->isOK:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TGActivity;->getUrlButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/TGActivity;->access$0(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TGActivity;->showMyTGUrLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/TGActivity;->access$1(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    const-string v1, "tgapp"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/hck/zhuanqian/bean/TgAppBean;

    invoke-static {v1, v2}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/bean/TgAppBean;

    .line 126
    .local v0, appBean:Lcom/hck/zhuanqian/bean/TgAppBean;
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #calls: Lcom/hck/zhuanqian/ui/TGActivity;->updateView(Lcom/hck/zhuanqian/bean/TgAppBean;)V
    invoke-static {v1, v0}, Lcom/hck/zhuanqian/ui/TGActivity;->access$2(Lcom/hck/zhuanqian/ui/TGActivity;Lcom/hck/zhuanqian/bean/TgAppBean;)V

    .line 134
    .end local v0           #appBean:Lcom/hck/zhuanqian/bean/TgAppBean;
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TGActivity;->getUrlButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/TGActivity;->access$0(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/TGActivity$3;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TGActivity;->showMyTGUrLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/TGActivity;->access$1(Lcom/hck/zhuanqian/ui/TGActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method
