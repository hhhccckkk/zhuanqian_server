.class final Lcom/jy/func/g$1;
.super Landroid/os/Handler;
.source "CYZ_BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/g;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic as:Lcom/jy/func/g;


# direct methods
.method constructor <init>(Lcom/jy/func/g;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/g$1;->as:Lcom/jy/func/g;

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jy/func/g$1;->as:Lcom/jy/func/g;

    invoke-virtual {v0, p1}, Lcom/jy/func/g;->dispatchMessage(Landroid/os/Message;)V

    .line 70
    return-void
.end method
