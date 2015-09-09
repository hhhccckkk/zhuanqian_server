.class Lcom/hck/zhuanqian/ui/DuoMengActivity$2;
.super Ljava/lang/Object;
.source "DuoMengActivity.java"

# interfaces
.implements Lcn/aow/android/DListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DuoMengActivity;->onResume()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dd:onResume onError"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    const/4 v5, 0x1

    :try_start_0
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    .line 64
    .local v0, all:Ljava/lang/Integer;
    const/4 v5, 0x0

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    .line 65
    .local v4, xiaofei:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v2, v5, v6

    .line 66
    .local v2, jinb:I
    iget-object v5, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #setter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v5, v2}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$0(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 67
    iget-object v5, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v5}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v5

    if-lez v5, :cond_0

    .line 68
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 69
    .local v3, message:Landroid/os/Message;
    iget-object v5, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->point:I
    invoke-static {v5}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$1(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v5

    iput v5, v3, Landroid/os/Message;->what:I

    .line 70
    iget-object v5, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    iget-object v5, v5, Lcom/hck/zhuanqian/ui/DuoMengActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #all:Ljava/lang/Integer;
    .end local v2           #jinb:I
    .end local v3           #message:Landroid/os/Message;
    .end local v4           #xiaofei:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dd:onResume Exception"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    goto :goto_0
.end method
