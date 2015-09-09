.class final Lcom/jy/func/c$2;
.super Ljava/lang/Object;
.source "CYZTabOneFrgment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/c;->onRefresh()V
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
    iput-object p1, p0, Lcom/jy/func/c$2;->t:Lcom/jy/func/c;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jy/func/c$2;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->f(Lcom/jy/func/c;)V

    .line 147
    return-void
.end method
