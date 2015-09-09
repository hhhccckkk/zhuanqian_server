.class Lcom/hck/zhuanqian/ui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MainActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MainActivity$5;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity$5;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startPinLunActivity()V

    .line 322
    return-void
.end method
