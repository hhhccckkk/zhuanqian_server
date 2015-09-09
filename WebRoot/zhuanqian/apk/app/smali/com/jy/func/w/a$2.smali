.class final Lcom/jy/func/w/a$2;
.super Ljava/lang/Object;
.source "CYZAsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/w/a;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ef:Lcom/jy/func/w/a;


# direct methods
.method constructor <init>(Lcom/jy/func/w/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .parameter "response"
    .parameter

    .prologue
    .line 192
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 193
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 197
    .local v0, encoding:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 199
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    new-instance v2, Lcom/jy/func/w/a$a;

    invoke-direct {v2, v1}, Lcom/jy/func/w/a$a;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
