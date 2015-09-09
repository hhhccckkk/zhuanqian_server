.class final Lcom/jy/func/e$a;
.super Landroid/content/BroadcastReceiver;
.source "CYZTaskDetailFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic ah:Lcom/jy/func/e;


# direct methods
.method constructor <init>(Lcom/jy/func/e;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter "intent"

    .prologue
    .line 414
    .line 415
    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    .line 414
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 416
    iget-object v2, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v2}, Lcom/jy/func/e;->a(Lcom/jy/func/e;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->b(Lcom/jy/func/e;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->b(Lcom/jy/func/e;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x111114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->c(Lcom/jy/func/e;)Lcom/jy/func/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->a(Lcom/jy/func/e;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/t/a;->b(J)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->d(Lcom/jy/func/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->e(Lcom/jy/func/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jy/func/t/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 423
    iget-object v0, p0, Lcom/jy/func/e$a;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->f(Lcom/jy/func/e;)V

    .line 426
    :cond_0
    return-void
.end method
