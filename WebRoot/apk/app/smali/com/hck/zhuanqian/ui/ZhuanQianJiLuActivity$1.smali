.class Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;
.super Ljava/lang/Object;
.source "ZhuanQianJiLuActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .parameter "refreshView"

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #setter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->isResh:Z
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$0(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;Z)V

    .line 68
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #setter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$1(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;I)V

    .line 69
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$2(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$2(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->orderBeans:Ljava/util/List;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$3(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #calls: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->getDataFromServer()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$4(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V

    .line 75
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .parameter "refreshView"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$5(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->page:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$1(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;I)V

    .line 80
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity$1;->this$0:Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    #calls: Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->getDataFromServer()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;->access$4(Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;)V

    .line 82
    return-void
.end method
