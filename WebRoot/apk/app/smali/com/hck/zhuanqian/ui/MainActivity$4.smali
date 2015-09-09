.class Lcom/hck/zhuanqian/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MainActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MainActivity$4;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 312
    invoke-static {}, Lcom/hck/zhuanqian/util/AppManager;->getAppManager()Lcom/hck/zhuanqian/util/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/util/AppManager;->AppExit()V

    .line 313
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity$4;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/MainActivity;->finish()V

    .line 314
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 315
    return-void
.end method
