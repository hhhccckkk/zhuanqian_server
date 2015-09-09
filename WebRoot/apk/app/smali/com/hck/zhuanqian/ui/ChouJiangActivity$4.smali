.class Lcom/hck/zhuanqian/ui/ChouJiangActivity$4;
.super Ljava/lang/Object;
.source "ChouJiangActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/ChouJiangActivity;->showDialog()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$4;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$4;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #calls: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->getMoney()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$8(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 106
    return-void
.end method
