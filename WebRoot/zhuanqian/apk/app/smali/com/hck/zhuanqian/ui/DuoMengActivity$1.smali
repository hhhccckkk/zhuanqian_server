.class Lcom/hck/zhuanqian/ui/DuoMengActivity$1;
.super Landroid/os/Handler;
.source "DuoMengActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/DuoMengActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DuoMengActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$0(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 95
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$0(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 96
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    const/16 v1, 0x96

    #setter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$0(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    const-string v1, "\u591a\u76df"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->savePoint(Ljava/lang/String;I)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v1

    #calls: Lcom/hck/zhuanqian/ui/DuoMengActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$2(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 104
    return-void
.end method
