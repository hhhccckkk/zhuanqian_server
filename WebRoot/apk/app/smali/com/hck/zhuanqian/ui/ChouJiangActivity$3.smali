.class Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;
.super Ljava/lang/Object;
.source "ChouJiangActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/ChouJiangActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 69
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    .line 70
    .local v0, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getChoujiang()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->type:I

    .line 72
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #calls: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->reduceChouJiangSize()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$7(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->showDialog()V

    goto :goto_0
.end method
