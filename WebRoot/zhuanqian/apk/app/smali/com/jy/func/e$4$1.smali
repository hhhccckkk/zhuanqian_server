.class final Lcom/jy/func/e$4$1;
.super Ljava/lang/Object;
.source "CYZTaskDetailFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/e$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aj:Lcom/jy/func/e$4;


# direct methods
.method constructor <init>(Lcom/jy/func/e$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 545
    iget-object v0, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    invoke-static {v0}, Lcom/jy/func/e$4;->a(Lcom/jy/func/e$4;)Lcom/jy/func/e;

    move-result-object v0

    invoke-static {v0}, Lcom/jy/func/e;->d(Lcom/jy/func/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    invoke-static {v1}, Lcom/jy/func/e$4;->a(Lcom/jy/func/e$4;)Lcom/jy/func/e;

    move-result-object v1

    invoke-static {v1}, Lcom/jy/func/e;->j(Lcom/jy/func/e;)I

    move-result v1

    iget-object v2, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    invoke-static {v2}, Lcom/jy/func/e$4;->a(Lcom/jy/func/e$4;)Lcom/jy/func/e;

    move-result-object v2

    invoke-static {v2}, Lcom/jy/func/e;->k(Lcom/jy/func/e;)I

    move-result v2

    iget-object v3, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    invoke-static {v3}, Lcom/jy/func/e$4;->a(Lcom/jy/func/e$4;)Lcom/jy/func/e;

    move-result-object v3

    invoke-static {v3}, Lcom/jy/func/e;->l(Lcom/jy/func/e;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    invoke-static {v4}, Lcom/jy/func/e$4;->a(Lcom/jy/func/e$4;)Lcom/jy/func/e;

    move-result-object v4

    invoke-static {v4}, Lcom/jy/func/e;->e(Lcom/jy/func/e;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jy/func/e$4$1;->aj:Lcom/jy/func/e$4;

    invoke-static {v5}, Lcom/jy/func/e$4;->a(Lcom/jy/func/e$4;)Lcom/jy/func/e;

    move-result-object v5

    invoke-static {v5}, Lcom/jy/func/e;->b(Lcom/jy/func/e;)Landroid/widget/Button;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/jy/func/t/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V

    .line 546
    return-void
.end method
