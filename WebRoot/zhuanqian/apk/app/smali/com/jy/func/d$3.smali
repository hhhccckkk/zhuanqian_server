.class final Lcom/jy/func/d$3;
.super Ljava/lang/Object;
.source "CYZTabTwoFrgment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic v:Lcom/jy/func/d;


# direct methods
.method constructor <init>(Lcom/jy/func/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/d$3;->v:Lcom/jy/func/d;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jy/func/d$3;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->d(Lcom/jy/func/d;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/t/c;->bQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/jy/func/d$3;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->g(Lcom/jy/func/d;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/jy/func/d$3;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->e(Lcom/jy/func/d;)Lcom/jy/func/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    goto :goto_0
.end method
