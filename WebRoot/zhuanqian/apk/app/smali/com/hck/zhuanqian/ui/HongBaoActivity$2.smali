.class Lcom/hck/zhuanqian/ui/HongBaoActivity$2;
.super Ljava/lang/Object;
.source "HongBaoActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/HongBaoActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .parameter "refreshView"

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->isUpdate:Z
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$9(Lcom/hck/zhuanqian/ui/HongBaoActivity;Z)V

    .line 121
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$10(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    .line 122
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #calls: Lcom/hck/zhuanqian/ui/HongBaoActivity;->getHongBao()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$11(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V

    .line 123
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .parameter "refreshView"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #getter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$12(Lcom/hck/zhuanqian/ui/HongBaoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/hck/zhuanqian/ui/HongBaoActivity;->page:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$10(Lcom/hck/zhuanqian/ui/HongBaoActivity;I)V

    .line 128
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HongBaoActivity$2;->this$0:Lcom/hck/zhuanqian/ui/HongBaoActivity;

    #calls: Lcom/hck/zhuanqian/ui/HongBaoActivity;->getHongBao()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/HongBaoActivity;->access$11(Lcom/hck/zhuanqian/ui/HongBaoActivity;)V

    .line 129
    return-void
.end method
