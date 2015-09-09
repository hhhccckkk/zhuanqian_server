.class final Lcom/jy/func/e$3;
.super Ljava/util/TimerTask;
.source "CYZTaskDetailFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/e;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ah:Lcom/jy/func/e;


# direct methods
.method constructor <init>(Lcom/jy/func/e;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    .line 483
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v0, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    iget-object v1, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->d(Lcom/jy/func/e;)Landroid/content/Context;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    invoke-static {v2}, Lcom/jy/func/e;->g(Lcom/jy/func/e;)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v0, v1, v2}, Lcom/jy/func/e;->a(Lcom/jy/func/e;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 488
    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 492
    invoke-static {v3}, Lcom/jy/func/e;->b(I)V

    .line 493
    iget-object v0, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->h(Lcom/jy/func/e;)V

    .line 494
    invoke-static {v3}, Lcom/jy/func/e;->c(I)V

    .line 495
    iget-object v0, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->i(Lcom/jy/func/e;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 497
    :cond_0
    invoke-static {}, Lcom/jy/func/e;->s()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/jy/func/e;->c(I)V

    .line 498
    invoke-static {}, Lcom/jy/func/e;->s()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 499
    invoke-static {v3}, Lcom/jy/func/e;->c(I)V

    .line 500
    iget-object v0, p0, Lcom/jy/func/e$3;->ah:Lcom/jy/func/e;

    invoke-static {v0}, Lcom/jy/func/e;->i(Lcom/jy/func/e;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 503
    :cond_1
    return-void
.end method
