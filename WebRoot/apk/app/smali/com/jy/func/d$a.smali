.class public final Lcom/jy/func/d$a;
.super Landroid/content/BroadcastReceiver;
.source "CYZTabTwoFrgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic v:Lcom/jy/func/d;


# direct methods
.method public constructor <init>(Lcom/jy/func/d;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter "intent"

    .prologue
    .line 190
    const-string v1, "MSG_WHAT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 191
    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-static {v1}, Lcom/jy/func/d;->a(Lcom/jy/func/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 194
    .local v0, size:I
    iget-object v1, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-static {v1}, Lcom/jy/func/d;->b(Lcom/jy/func/d;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-static {v1}, Lcom/jy/func/d;->b(Lcom/jy/func/d;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-static {v1}, Lcom/jy/func/d;->a(Lcom/jy/func/d;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-static {v2}, Lcom/jy/func/d;->b(Lcom/jy/func/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/jy/func/d$a;->v:Lcom/jy/func/d;

    invoke-static {v1}, Lcom/jy/func/d;->c(Lcom/jy/func/d;)Lcom/jy/func/l/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jy/func/l/a;->notifyDataSetChanged()V

    .line 217
    .end local v0           #size:I
    :cond_0
    return-void
.end method
