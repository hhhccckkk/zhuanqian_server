.class Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;
.super Ljava/lang/Object;
.source "HongBaoAdpter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field button:Landroid/widget/Button;

.field contenTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/adapter/HongBaoAdpter;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->this$0:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
