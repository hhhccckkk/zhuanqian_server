.class Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity$2;
.super Ljava/lang/Object;
.source "DuiHuanZFBActivity.java"

# interfaces
.implements Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;->showSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(I)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity$2;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/DuiHuanZFBActivity;->finish()V

    .line 214
    return-void
.end method
