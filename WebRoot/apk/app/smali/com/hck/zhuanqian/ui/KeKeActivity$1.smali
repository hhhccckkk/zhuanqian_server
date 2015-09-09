.class Lcom/hck/zhuanqian/ui/KeKeActivity$1;
.super Landroid/os/Handler;
.source "KeKeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/KeKeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$1;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/hck/zhuanqian/ui/KeKeActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/KeKeActivity;->access$0(Lcom/hck/zhuanqian/ui/KeKeActivity;I)V

    .line 113
    return-void
.end method
