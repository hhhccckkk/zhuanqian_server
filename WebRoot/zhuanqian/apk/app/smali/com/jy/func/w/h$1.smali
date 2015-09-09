.class final Lcom/jy/func/w/h$1;
.super Ljava/lang/Object;
.source "CYZJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;[B)V
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


# direct methods
.method constructor <init>(Lcom/jy/func/w/h;[BI[Lorg/apache/http/Header;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    iput-object p2, p0, Lcom/jy/func/w/h$1;->fd:[B

    iput p3, p0, Lcom/jy/func/w/h$1;->fe:I

    iput-object p4, p0, Lcom/jy/func/w/h$1;->ff:[Lorg/apache/http/Header;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jy/func/w/h$1;)Lcom/jy/func/w/h;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    iget-object v3, p0, Lcom/jy/func/w/h$1;->fd:[B

    invoke-virtual {v2, v3}, Lcom/jy/func/w/h;->b([B)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .local v1, jsonResponse:Ljava/lang/Object;
    iget-object v2, p0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    new-instance v3, Lcom/jy/func/w/h$1$1;

    iget v4, p0, Lcom/jy/func/w/h$1;->fe:I

    iget-object v5, p0, Lcom/jy/func/w/h$1;->ff:[Lorg/apache/http/Header;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/jy/func/w/h$1$1;-><init>(Lcom/jy/func/w/h$1;Ljava/lang/Object;I[Lorg/apache/http/Header;)V

    invoke-virtual {v2, v3}, Lcom/jy/func/w/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Lorg/json/JSONException;
    iget-object v2, p0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    new-instance v3, Lcom/jy/func/w/h$1$2;

    iget v4, p0, Lcom/jy/func/w/h$1;->fe:I

    iget-object v5, p0, Lcom/jy/func/w/h$1;->ff:[Lorg/apache/http/Header;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/jy/func/w/h$1$2;-><init>(Lcom/jy/func/w/h$1;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V

    invoke-virtual {v2, v3}, Lcom/jy/func/w/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
