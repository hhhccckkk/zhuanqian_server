.class final Lcom/jy/func/w/h$2;
.super Ljava/lang/Object;
.source "CYZJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcom/jy/func/w/h;

.field private final synthetic fd:[B

.field private final synthetic fe:I

.field private final synthetic ff:[Lorg/apache/http/Header;

.field private final synthetic fj:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/jy/func/w/h;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/w/h$2;->fc:Lcom/jy/func/w/h;

    iput-object p2, p0, Lcom/jy/func/w/h$2;->fd:[B

    iput p3, p0, Lcom/jy/func/w/h$2;->fe:I

    iput-object p4, p0, Lcom/jy/func/w/h$2;->ff:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/jy/func/w/h$2;->fj:Ljava/lang/Throwable;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jy/func/w/h$2;)Lcom/jy/func/w/h;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jy/func/w/h$2;->fc:Lcom/jy/func/w/h;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/jy/func/w/h$2;->fc:Lcom/jy/func/w/h;

    iget-object v1, p0, Lcom/jy/func/w/h$2;->fd:[B

    invoke-virtual {v0, v1}, Lcom/jy/func/w/h;->b([B)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, jsonResponse:Ljava/lang/Object;
    iget-object v7, p0, Lcom/jy/func/w/h$2;->fc:Lcom/jy/func/w/h;

    new-instance v0, Lcom/jy/func/w/h$2$1;

    iget v3, p0, Lcom/jy/func/w/h$2;->fe:I

    iget-object v4, p0, Lcom/jy/func/w/h$2;->ff:[Lorg/apache/http/Header;

    iget-object v5, p0, Lcom/jy/func/w/h$2;->fj:Ljava/lang/Throwable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jy/func/w/h$2$1;-><init>(Lcom/jy/func/w/h$2;Ljava/lang/Object;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/jy/func/w/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v2           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, ex:Lorg/json/JSONException;
    iget-object v0, p0, Lcom/jy/func/w/h$2;->fc:Lcom/jy/func/w/h;

    new-instance v1, Lcom/jy/func/w/h$2$2;

    iget v3, p0, Lcom/jy/func/w/h$2;->fe:I

    iget-object v4, p0, Lcom/jy/func/w/h$2;->ff:[Lorg/apache/http/Header;

    invoke-direct {v1, p0, v3, v4, v6}, Lcom/jy/func/w/h$2$2;-><init>(Lcom/jy/func/w/h$2;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V

    invoke-virtual {v0, v1}, Lcom/jy/func/w/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
