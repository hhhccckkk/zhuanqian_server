.class Lcom/hck/zhuanqian/ui/TGActivity$2;
.super Ljava/lang/Object;
.source "TGActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/TGActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/TGActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/TGActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/TGActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/TGActivity$2;->this$0:Lcom/hck/zhuanqian/ui/TGActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/TGActivity;->daBao()V

    .line 101
    return-void
.end method
