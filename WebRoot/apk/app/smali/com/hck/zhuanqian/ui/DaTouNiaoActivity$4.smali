.class Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$4;
.super Ljava/lang/Object;
.source "DaTouNiaoActivity.java"

# interfaces
.implements Lcom/datouniao/AdPublisher/GetAmountNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->onResume()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetAmountResponse(Ljava/lang/String;F)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 140
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->handler:Landroid/os/Handler;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    :cond_0
    return-void
.end method

.method public GetAmountResponseFailed(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 136
    return-void
.end method
