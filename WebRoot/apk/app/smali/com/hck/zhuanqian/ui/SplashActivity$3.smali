.class Lcom/hck/zhuanqian/ui/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/SplashActivity;->showNetErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/SplashActivity$3;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 225
    invoke-static {}, Lcom/hck/zhuanqian/util/AppManager;->getAppManager()Lcom/hck/zhuanqian/util/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/util/AppManager;->AppExit()V

    .line 226
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity$3;->this$0:Lcom/hck/zhuanqian/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/SplashActivity;->finish()V

    .line 227
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 228
    return-void
.end method
