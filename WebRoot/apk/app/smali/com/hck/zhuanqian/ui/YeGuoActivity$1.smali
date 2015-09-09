.class Lcom/hck/zhuanqian/ui/YeGuoActivity$1;
.super Landroid/os/Handler;
.source "YeGuoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/YeGuoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/YeGuoActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/YeGuoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/YeGuoActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/YeGuoActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/hck/zhuanqian/ui/YeGuoActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->access$0(Lcom/hck/zhuanqian/ui/YeGuoActivity;I)V

    .line 74
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/YeGuoActivity;

    const-string v1, "\u6930\u679c"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/YeGuoActivity$1;->this$0:Lcom/hck/zhuanqian/ui/YeGuoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/YeGuoActivity;->point:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->access$1(Lcom/hck/zhuanqian/ui/YeGuoActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/YeGuoActivity;->savePoint(Ljava/lang/String;I)V

    .line 75
    return-void
.end method
