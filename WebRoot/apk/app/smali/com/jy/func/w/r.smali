.class public abstract Lcom/jy/func/w/r;
.super Lcom/jy/func/w/c;
.source "CYZTextHttpResponseHandler.java"


# static fields
.field private static final dL:Ljava/lang/String; = "TextHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/jy/func/w/r;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jy/func/w/c;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/jy/func/w/r;->setCharset(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "stringBytes"
    .parameter "charset"

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p0, :cond_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "TextHttpResponseHandler"

    const-string v3, "Encoding response into string failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter "responseBytes"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/jy/func/w/r;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/jy/func/w/r;->a([BLjava/lang/String;)Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter "responseBytes"
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/jy/func/w/r;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/jy/func/w/r;->a([BLjava/lang/String;)Ljava/lang/String;

    .line 37
    return-void
.end method

.method public abstract dr()V
.end method

.method public abstract ds()V
.end method
