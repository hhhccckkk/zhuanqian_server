.class Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;
.super Landroid/os/Handler;
.source "DaTouNiaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    const-string v1, "\u5927\u5934\u9e1f"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->point:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$0(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->savePoint(Ljava/lang/String;I)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;->access$1(Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;I)V

    goto :goto_0
.end method
