.class Lcom/hck/zhuanqian/adapter/HongBaoAdpter$1;
.super Ljava/lang/Object;
.source "HongBaoAdpter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/adapter/HongBaoAdpter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$1;->this$0:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, post:I
    iget-object v2, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$1;->this$0:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    iget-object v2, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/bean/Hongbao;

    .line 94
    .local v0, hongbao:Lcom/hck/zhuanqian/bean/Hongbao;
    iget-object v2, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$1;->this$0:Lcom/hck/zhuanqian/adapter/HongBaoAdpter;

    #getter for: Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->callBack:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;
    invoke-static {v2}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->access$0(Lcom/hck/zhuanqian/adapter/HongBaoAdpter;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;->daKai(Lcom/hck/zhuanqian/bean/Hongbao;I)V

    .line 95
    return-void
.end method
