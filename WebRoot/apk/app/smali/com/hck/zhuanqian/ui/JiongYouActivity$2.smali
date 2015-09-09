.class Lcom/hck/zhuanqian/ui/JiongYouActivity$2;
.super Ljava/lang/Object;
.source "JiongYouActivity.java"

# interfaces
.implements Lcom/jy/func/lner/CheckPointListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/JiongYouActivity;->onResume()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$2;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/jy/func/lner/ErrorInfo;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 80
    return-void
.end method

.method public onResponse(Lcom/jy/func/lner/Point;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, jinbi:I
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$2;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    const/4 v3, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v2, v3}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$0(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget v2, p1, Lcom/jy/func/lner/Point;->point:F

    float-to-int v0, v2

    .line 88
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$2;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    #setter for: Lcom/hck/zhuanqian/ui/JiongYouActivity;->point:I
    invoke-static {v2, v0}, Lcom/hck/zhuanqian/ui/JiongYouActivity;->access$0(Lcom/hck/zhuanqian/ui/JiongYouActivity;I)V

    .line 90
    :cond_0
    if-lez v0, :cond_1

    .line 91
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 92
    .local v1, message:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 93
    iget-object v2, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$2;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    iget-object v2, v2, Lcom/hck/zhuanqian/ui/JiongYouActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method
