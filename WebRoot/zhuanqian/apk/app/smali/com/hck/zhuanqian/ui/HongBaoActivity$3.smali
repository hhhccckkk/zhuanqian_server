.class Lcom/hck/zhuanqian/ui/HongBaoActivity$3;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "HongBaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/HongBaoActivity;->updateHongbaoState(JI)V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$3;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iput p2, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$3;->val$point:I

    .line 162
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/hck/zhuanqian/view/Pdialog;->hiddenDialog()V

    .line 166
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 174
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 2
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$3;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    iget v1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$3;->val$point:I

    #calls: Lcom/hck/zhuanqian/ui/HongBaoActivity;->savePointHongBao(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$13(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    .line 170
    return-void
.end method
