.class Lcom/hck/zhuanqian/ui/BeiDuoActivity$4;
.super Ljava/lang/Object;
.source "BeiDuoActivity.java"

# interfaces
.implements Lcom/bb/dd/listener/IReduceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/BeiDuoActivity;->huafei(I)V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reduceFailed(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/BeiDuoActivity$4;->this$0:Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/BeiDuoActivity;->finish()V

    .line 112
    return-void
.end method

.method public reduceSuccess(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 107
    return-void
.end method
