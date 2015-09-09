.class Lcom/hck/zhuanqian/ui/KeKeActivity$3;
.super Ljava/lang/Object;
.source "KeKeActivity.java"

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/KeKeActivity;->startGetMoney(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 95
    return-void
.end method

.method public onSucceed(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 76
    if-eqz p1, :cond_2

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$1(Lcom/hck/zhuanqian/ui/KeKeActivity;I)V

    .line 78
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->balance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$1(Lcom/hck/zhuanqian/ui/KeKeActivity;I)V

    .line 79
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$2(Lcom/hck/zhuanqian/ui/KeKeActivity;)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    const/16 v1, 0x64

    #setter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$1(Lcom/hck/zhuanqian/ui/KeKeActivity;I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$2(Lcom/hck/zhuanqian/ui/KeKeActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    const-string v1, "\u53ef\u53ef"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$2(Lcom/hck/zhuanqian/ui/KeKeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/KeKeActivity;->savePoint(Ljava/lang/String;I)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/KeKeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KeKeActivity;->point:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$2(Lcom/hck/zhuanqian/ui/KeKeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {p0, p1}, Lcom/hck/zhuanqian/ui/KeKeActivity$3;->onSucceed(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V

    return-void
.end method
