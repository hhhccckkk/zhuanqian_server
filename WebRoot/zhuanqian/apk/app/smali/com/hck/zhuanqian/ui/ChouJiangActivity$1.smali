.class Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;
.super Landroid/os/Handler;
.source "ChouJiangActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/ChouJiangActivity;
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    .line 158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightsOn:Z
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$0(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$1(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #setter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightsOn:Z
    invoke-static {v0, v2}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$2(Lcom/hck/zhuanqian/ui/ChouJiangActivity;Z)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$1(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    const/4 v1, 0x1

    #setter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightsOn:Z
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$2(Lcom/hck/zhuanqian/ui/ChouJiangActivity;Z)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
