.class Lcom/hck/zhuanqian/ui/ChouJiangActivity$5;
.super Ljava/util/TimerTask;
.source "ChouJiangActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/ChouJiangActivity;->flashLights()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$5;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    .line 226
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$5;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$9(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method
