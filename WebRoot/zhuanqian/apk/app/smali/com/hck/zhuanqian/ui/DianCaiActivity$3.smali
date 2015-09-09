.class Lcom/hck/zhuanqian/ui/DianCaiActivity$3;
.super Ljava/lang/Object;
.source "DianCaiActivity.java"

# interfaces
.implements Lcom/dc/wall/IReduceMoneyNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DianCaiActivity;->huafei(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DianCaiActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DianCaiActivity$3;->this$0:Lcom/hck/zhuanqian/ui/DianCaiActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reduceFailed(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 100
    return-void
.end method

.method public reduceSuccess(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 95
    return-void
.end method
