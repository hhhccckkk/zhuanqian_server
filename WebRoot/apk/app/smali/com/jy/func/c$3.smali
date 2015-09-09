.class final Lcom/jy/func/c$3;
.super Ljava/lang/Object;
.source "CYZTabOneFrgment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/c;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic t:Lcom/jy/func/c;


# direct methods
.method constructor <init>(Lcom/jy/func/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/c$3;->t:Lcom/jy/func/c;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jy/func/c$3;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->d(Lcom/jy/func/c;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/t/c;->bQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/jy/func/c$3;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->g(Lcom/jy/func/c;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/jy/func/c$3;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->e(Lcom/jy/func/c;)Lcom/jy/func/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    goto :goto_0
.end method
