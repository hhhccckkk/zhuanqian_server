.class final Lcom/jy/func/w/a$4;
.super Ljava/lang/Object;
.source "CYZAsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/w/a;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cz:Landroid/content/Context;

.field private synthetic ef:Lcom/jy/func/w/a;

.field private final synthetic eg:Z


# direct methods
.method constructor <init>(Lcom/jy/func/w/a;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/w/a$4;->ef:Lcom/jy/func/w/a;

    iput-object p2, p0, Lcom/jy/func/w/a$4;->cz:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/jy/func/w/a$4;->eg:Z

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/jy/func/w/a$4;->ef:Lcom/jy/func/w/a;

    invoke-static {v1}, Lcom/jy/func/w/a;->b(Lcom/jy/func/w/a;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/w/a$4;->cz:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 412
    .local v0, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/jy/func/t/e;>;"
    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/jy/func/w/a$4;->ef:Lcom/jy/func/w/a;

    invoke-static {v1}, Lcom/jy/func/w/a;->b(Lcom/jy/func/w/a;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/w/a$4;->cz:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    return-void

    .line 413
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jy/func/t/e;

    .line 414
    iget-boolean v3, p0, Lcom/jy/func/w/a$4;->eg:Z

    invoke-virtual {v1, v3}, Lcom/jy/func/t/e;->cancel(Z)Z

    goto :goto_0
.end method
