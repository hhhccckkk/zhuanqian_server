.class Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;
.super Ljava/lang/Object;
.source "DaTouNiaoActivity.java"

# interfaces
.implements Lcom/datouniao/AdPublisher/ReceiveNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetReceiveResponse(Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "_currencyName"
    .parameter "receiveAmount"
    .parameter "totalAmount"
    .parameter "serverOrderID"
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    #setter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v0, v2}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$2(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;I)V

    .line 59
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    float-to-int v1, p2

    #setter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$2(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;I)V

    .line 61
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$0(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    const/16 v1, 0x96

    #setter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$2(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$0(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$0(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    return-void
.end method
