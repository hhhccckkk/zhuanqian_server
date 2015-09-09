.class Lcom/hck/zhuanqian/view/AlertDialogs$1;
.super Ljava/lang/Object;
.source "AlertDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;

.field private final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/view/AlertDialogs$1;->val$oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;

    iput p2, p0, Lcom/hck/zhuanqian/view/AlertDialogs$1;->val$tag:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    sget-object v0, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/hck/zhuanqian/view/AlertDialogs$1;->val$oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/hck/zhuanqian/view/AlertDialogs$1;->val$oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;

    iget v1, p0, Lcom/hck/zhuanqian/view/AlertDialogs$1;->val$tag:I

    invoke-interface {v0, v1}, Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;->callBack(I)V

    .line 65
    :cond_0
    return-void
.end method
