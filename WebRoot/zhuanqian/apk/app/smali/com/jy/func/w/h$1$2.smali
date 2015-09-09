.class final Lcom/jy/func/w/h$1$2;
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

.field private final synthetic fi:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/jy/func/w/h$1;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/w/h$1$2;->fg:Lcom/jy/func/w/h$1;

    iput p2, p0, Lcom/jy/func/w/h$1$2;->fe:I

    iput-object p3, p0, Lcom/jy/func/w/h$1$2;->ff:[Lorg/apache/http/Header;

    iput-object p4, p0, Lcom/jy/func/w/h$1$2;->fi:Lorg/json/JSONException;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jy/func/w/h$1$2;->fg:Lcom/jy/func/w/h$1;

    iget-object v0, v0, Lcom/jy/func/w/h$1;->fc:Lcom/jy/func/w/h;

    iget v1, p0, Lcom/jy/func/w/h$1$2;->fe:I

    iget-object v2, p0, Lcom/jy/func/w/h$1$2;->ff:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/jy/func/w/h$1$2;->fi:Lorg/json/JSONException;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 80
    return-void
.end method
