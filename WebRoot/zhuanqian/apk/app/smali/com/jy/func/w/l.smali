.class public final Lcom/jy/func/w/l;
.super Ljava/lang/Object;
.source "CYZRequestHandle.java"


# instance fields
.field private final bU:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jy/func/w/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jy/func/w/b;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jy/func/t/e;->bU:Ljava/lang/ref/WeakReference;

    .line 14
    return-void
.end method


# virtual methods
.method public final bR()Z
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/jy/func/t/e;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jy/func/t/e;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 36
    .local v0, should:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/jy/func/t/e;->bU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 38
    :cond_0
    return v0

    .line 35
    .end local v0           #should:Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final cancel(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 18
    iget-object v1, p0, Lcom/jy/func/t/e;->bU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jy/func/w/b;

    .line 19
    .local v0, _request:Lcom/jy/func/w/b;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jy/func/w/b;->de()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/jy/func/t/e;->bU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jy/func/w/b;

    .line 31
    .local v0, _request:Lcom/jy/func/w/b;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final isFinished()Z
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/jy/func/t/e;->bU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jy/func/w/b;

    .line 25
    .local v0, _request:Lcom/jy/func/w/b;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jy/func/w/b;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
