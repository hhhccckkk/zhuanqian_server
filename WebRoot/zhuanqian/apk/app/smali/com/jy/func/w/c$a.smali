.class final Lcom/jy/func/w/c$a;
.super Landroid/os/Handler;
.source "CYZAsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final eF:Lcom/jy/func/w/c;


# direct methods
.method constructor <init>(Lcom/jy/func/w/c;)V
    .locals 0
    .parameter "mResponder"

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/jy/func/w/c$a;->eF:Lcom/jy/func/w/c;

    .line 297
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jy/func/w/c$a;->eF:Lcom/jy/func/w/c;

    invoke-virtual {v0, p1}, Lcom/jy/func/w/c;->handleMessage(Landroid/os/Message;)V

    .line 302
    return-void
.end method
