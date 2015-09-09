.class Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;
.super Ljava/lang/Object;
.source "BeiDuoActivity.java"

# interfaces
.implements Lcom/bb/dd/listener/IActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/BeiDuoActivity;->initAd()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeFailed(IILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 52
    return-void
.end method

.method public activeSuccess(IILjava/lang/String;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->access$1(Lcom/hck/zhuanqian/ui/BeiDuoActivity;I)V

    .line 39
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    #setter for: Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I
    invoke-static {v0, p1}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->access$1(Lcom/hck/zhuanqian/ui/BeiDuoActivity;I)V

    .line 40
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->access$2(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    const/16 v1, 0x96

    #setter for: Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->access$1(Lcom/hck/zhuanqian/ui/BeiDuoActivity;I)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/BeiDuoActivity;->point:I
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->access$2(Lcom/hck/zhuanqian/ui/BeiDuoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    return-void
.end method
