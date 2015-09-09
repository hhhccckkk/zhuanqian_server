.class final Lcom/jy/func/w/h$1$1;
.super Ljava/lang/Object;
.source "CYZJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/w/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic fe:I

.field private final synthetic ff:[Lorg/apache/http/Header;

.field private synthetic fg:Lcom/jy/func/w/h$1;

.field private final synthetic fh:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jy/func/w/h$1;Ljava/lang/Object;I[Lorg/apache/http/Header;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/w/h$1$1;->fg:Lcom/jy/func/w/h$1;

    iput-object p2, p0, Lcom/jy/func/w/h$1$1;->fh:Ljava/lang/Object;

    iput p3, p0, Lcom/jy/func/w/h$1$1;->fe:I

    iput-object p4, p0, Lcom/jy/func/w/h$1$1;->ff:[Lorg/apache/http/Header;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jy/func/w/h$1$1;->fh:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/jy/func/w/h$1$1;->fg:Lcom/jy/func/w/h$1;

    iget-object v1, v0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    iget v2, p0, Lcom/jy/func/w/h$1$1;->fe:I

    iget-object v3, p0, Lcom/jy/func/w/h$1$1;->ff:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/jy/func/w/h$1$1;->fh:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/jy/func/w/h$1$1;->fh:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/jy/func/w/h$1$1;->fh:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Response cannot be parsed as JSON data"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/jy/func/w/h$1$1;->fg:Lcom/jy/func/w/h$1;

    iget-object v0, v0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    iget v1, p0, Lcom/jy/func/w/h$1$1;->fe:I

    iget-object v2, p0, Lcom/jy/func/w/h$1$1;->ff:[Lorg/apache/http/Header;

    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jy/func/w/h$1$1;->fh:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
