.class Lcom/hck/zhuanqian/view/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/view/TitleBar;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/view/TitleBar;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/view/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/view/TitleBar$1;->this$0:Lcom/hck/zhuanqian/view/TitleBar;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hck/zhuanqian/view/TitleBar$1;->this$0:Lcom/hck/zhuanqian/view/TitleBar;

    #getter for: Lcom/hck/zhuanqian/view/TitleBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/hck/zhuanqian/view/TitleBar;->access$0(Lcom/hck/zhuanqian/view/TitleBar;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 55
    return-void
.end method
