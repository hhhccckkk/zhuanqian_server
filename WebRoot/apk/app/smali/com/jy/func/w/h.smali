.class public Lcom/jy/func/w/h;
.super Lcom/jy/func/w/r;
.source "CYZJsonHttpResponseHandler.java"


# static fields
.field private static final dL:Ljava/lang/String; = "JsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/jy/func/w/r;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/jy/func/w/r;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static dp()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public static dq()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    .line 54
    const/16 v1, 0xcc

    if-eq p1, v1, :cond_1

    .line 55
    new-instance v0, Lcom/jy/func/w/h$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/jy/func/w/h$1;-><init>(Lcom/jy/func/w/h;[BI[Lorg/apache/http/Header;)V

    .line 85
    .local v0, parser:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/jy/func/w/h;->dg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 94
    .end local v0           #parser:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 89
    .restart local v0       #parser:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 92
    .end local v0           #parser:Ljava/lang/Runnable;
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public final a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 6
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"
    .parameter "throwable"

    .prologue
    .line 98
    if-eqz p3, :cond_1

    .line 99
    new-instance v0, Lcom/jy/func/w/h$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jy/func/w/h$2;-><init>(Lcom/jy/func/w/h;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    .line 130
    .local v0, parser:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/jy/func/w/h;->dg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    .end local v0           #parser:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 134
    .restart local v0       #parser:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 137
    .end local v0           #parser:Ljava/lang/Runnable;
    :cond_1
    const-string v1, "JsonHttpResponseHandler"

    const-string v2, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected final b([B)Ljava/lang/Object;
    .locals 3
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 146
    const/4 v1, 0x0

    .line 159
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :cond_1
    const/4 v1, 0x0

    .line 149
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/jy/func/w/h;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/jy/func/w/h;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, jsonString:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 156
    .end local v1           #result:Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    .local v1, result:Ljava/lang/String;
    goto :goto_0
.end method

.method public final dr()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final ds()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
