.class Lcom/hck/zhuanqian/ui/BeiDuoActivity$1;
.super Landroid/os/Handler;
.source "BeiDuoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/BeiDuoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/hck/zhuanqian/ui/BeiDuoActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->access$0(Lcom/hck/zhuanqian/ui/BeiDuoActivity;I)V

    .line 98
    return-void
.end method
