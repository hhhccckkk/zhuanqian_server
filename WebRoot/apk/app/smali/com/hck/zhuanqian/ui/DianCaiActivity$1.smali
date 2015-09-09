.class Lcom/hck/zhuanqian/ui/DianCaiActivity$1;
.super Landroid/os/Handler;
.source "DianCaiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/DianCaiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DianCaiActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$0(Lcom/hck/zhuanqian/ui/DianCaiActivity;I)V

    .line 76
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$0(Lcom/hck/zhuanqian/ui/DianCaiActivity;I)V

    .line 77
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$1(Lcom/hck/zhuanqian/ui/DianCaiActivity;)I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    const/16 v1, 0x96

    #setter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$0(Lcom/hck/zhuanqian/ui/DianCaiActivity;I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$1(Lcom/hck/zhuanqian/ui/DianCaiActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    const-string v1, "\u70b9\u8d22"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$1(Lcom/hck/zhuanqian/ui/DianCaiActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->savePoint(Ljava/lang/String;I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DianCaiActivity;->point:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$1(Lcom/hck/zhuanqian/ui/DianCaiActivity;)I

    move-result v1

    #calls: Lcom/hck/zhuanqian/ui/DianCaiActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DianCaiActivity;->access$2(Lcom/hck/zhuanqian/ui/DianCaiActivity;I)V

    .line 86
    return-void
.end method
