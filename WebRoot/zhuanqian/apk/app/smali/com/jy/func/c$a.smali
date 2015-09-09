.class public final Lcom/jy/func/c$a;
.super Landroid/content/BroadcastReceiver;
.source "CYZTabOneFrgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic t:Lcom/jy/func/c;


# direct methods
.method public constructor <init>(Lcom/jy/func/c;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter "intent"

    .prologue
    .line 219
    const-string v1, "MSG_WHAT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 220
    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-static {v1}, Lcom/jy/func/c;->a(Lcom/jy/func/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, size:I
    iget-object v1, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-static {v1}, Lcom/jy/func/c;->b(Lcom/jy/func/c;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-static {v1}, Lcom/jy/func/c;->b(Lcom/jy/func/c;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-static {v1}, Lcom/jy/func/c;->a(Lcom/jy/func/c;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-static {v2}, Lcom/jy/func/c;->b(Lcom/jy/func/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/jy/func/c$a;->t:Lcom/jy/func/c;

    invoke-static {v1}, Lcom/jy/func/c;->c(Lcom/jy/func/c;)Lcom/jy/func/l/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jy/func/l/a;->notifyDataSetChanged()V

    .line 246
    .end local v0           #size:I
    :cond_0
    return-void
.end method
