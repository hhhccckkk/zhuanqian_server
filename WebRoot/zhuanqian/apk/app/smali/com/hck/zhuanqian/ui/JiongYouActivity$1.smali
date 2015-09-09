.class Lcom/hck/zhuanqian/ui/JiongYouActivity$1;
.super Landroid/os/Handler;
.source "JiongYouActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/JiongYouActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/JiongYouActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$0(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V

    .line 61
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$0(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V

    .line 62
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    #getter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$1(Lcom/hck/zhuanqian/ui/JiongYouActivity;)I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    const/16 v1, 0x64

    #setter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$0(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    #getter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$1(Lcom/hck/zhuanqian/ui/JiongYouActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    const-string v1, "\u7085\u53cb"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    #getter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$1(Lcom/hck/zhuanqian/ui/JiongYouActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->savePoint(Ljava/lang/String;I)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$1;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    #getter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$1(Lcom/hck/zhuanqian/ui/JiongYouActivity;)I

    move-result v1

    #calls: Lcom/hck/zhuanqian/ui/JiongYouActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$2(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V

    .line 69
    return-void
.end method
