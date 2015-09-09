.class final Lcom/jy/func/e$4;
.super Ljava/util/TimerTask;
.source "CYZTaskDetailFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ah:Lcom/jy/func/e;

.field private ai:Z


# direct methods
.method constructor <init>(Lcom/jy/func/e;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    .line 520
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/e$4;->ai:Z

    return-void
.end method

.method static synthetic a(Lcom/jy/func/e$4;)Lcom/jy/func/e;
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-boolean v0, p0, Lcom/jy/func/e$4;->ai:Z

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    iget-object v1, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->d(Lcom/jy/func/e;)Landroid/content/Context;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    invoke-static {v2}, Lcom/jy/func/e;->g(Lcom/jy/func/e;)Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v0, v1, v2}, Lcom/jy/func/e;->a(Lcom/jy/func/e;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 528
    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iput-boolean v3, p0, Lcom/jy/func/e$4;->ai:Z

    .line 536
    :cond_2
    invoke-static {}, Lcom/jy/func/e;->t()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/jy/func/e;->b(I)V

    .line 538
    invoke-static {}, Lcom/jy/func/e;->t()I

    move-result v0

    invoke-static {}, Lcom/jy/func/e;->u()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->d(Lcom/jy/func/e;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/jy/func/e$4$1;

    invoke-direct {v1, p0}, Lcom/jy/func/e$4$1;-><init>(Lcom/jy/func/e$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 551
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 552
    iget-object v0, p0, Lcom/jy/func/e$4;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->m(Lcom/jy/func/e;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0
.end method
