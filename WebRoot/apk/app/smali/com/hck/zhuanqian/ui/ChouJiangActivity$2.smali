.class Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;
.super Ljava/lang/Object;
.source "ChouJiangActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/zhuanqian/ui/ChouJiangActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lotteryStr:[Ljava/lang/String;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$3(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #getter for: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I
    invoke-static {v2}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$4(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)I

    move-result v2

    aget-object v0, v1, v2

    .line 199
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #calls: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->addPoint()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$5(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 201
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;->this$0:Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    #calls: Lcom/hck/zhuanqian/ui/ChouJiangActivity;->updateView()V
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->access$6(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 202
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 188
    return-void
.end method
