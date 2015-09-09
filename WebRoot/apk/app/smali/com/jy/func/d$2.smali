.class final Lcom/jy/func/d$2;
.super Ljava/lang/Object;
.source "CYZTabTwoFrgment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/d;->onRefresh()V
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
    iput-object p1, p0, Lcom/jy/func/d$2;->v:Lcom/jy/func/d;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jy/func/d$2;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->f(Lcom/jy/func/d;)V

    .line 123
    return-void
.end method
