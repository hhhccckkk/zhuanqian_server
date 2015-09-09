.class Lcom/hck/zhuanqian/ui/BeiDuoActivity$3;
.super Ljava/lang/Object;
.source "BeiDuoActivity.java"

# interfaces
.implements Lcom/bb/dd/listener/IGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/BeiDuoActivity;->onResume()V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$3;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailed(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 88
    return-void
.end method

.method public getSuccess(ILjava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 80
    if-lez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$3;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    :cond_0
    return-void
.end method
