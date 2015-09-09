.class Lcom/hck/httpserver/HCKHttpResponseHandler$1;
.super Landroid/os/Handler;
.source "HCKHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/httpserver/HCKHttpResponseHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/httpserver/HCKHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/httpserver/HCKHttpResponseHandler$1;->this$0:Lcom/hck/httpserver/HCKHttpResponseHandler;

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpResponseHandler$1;->this$0:Lcom/hck/httpserver/HCKHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 93
    return-void
.end method
