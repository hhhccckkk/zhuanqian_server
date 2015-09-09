.class Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;
.super Ljava/lang/Object;
.source "TuiGuangActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/TuiGuangActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .parameter "refreshView"

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #setter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->isResh:Z
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$0(Lcom/hck/zhuanqian/ui/TuiGuangActivity;Z)V

    .line 61
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #setter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$1(Lcom/hck/zhuanqian/ui/TuiGuangActivity;I)V

    .line 62
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #calls: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->getTuiGuangData()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$2(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V

    .line 63
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .parameter "refreshView"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$3(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->page:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$1(Lcom/hck/zhuanqian/ui/TuiGuangActivity;I)V

    .line 68
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TuiGuangActivity$1;->this$0:Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    #calls: Lcom/hck/zhuanqian/ui/TuiGuangActivity;->getTuiGuangData()V
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/TuiGuangActivity;->access$2(Lcom/hck/zhuanqian/ui/TuiGuangActivity;)V

    .line 70
    return-void
.end method
