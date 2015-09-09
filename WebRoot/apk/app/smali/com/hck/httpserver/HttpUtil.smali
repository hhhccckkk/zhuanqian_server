.class public Lcom/hck/httpserver/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static client:Lcom/hck/httpserver/HCKHttpClient;

.field private static httpUtil:Lcom/hck/httpserver/HttpUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static newInstance()Lcom/hck/httpserver/HttpUtil;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->httpUtil:Lcom/hck/httpserver/HttpUtil;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/hck/httpserver/HttpUtil;

    invoke-direct {v0}, Lcom/hck/httpserver/HttpUtil;-><init>()V

    sput-object v0, Lcom/hck/httpserver/HttpUtil;->httpUtil:Lcom/hck/httpserver/HttpUtil;

    .line 20
    new-instance v0, Lcom/hck/httpserver/HCKHttpClient;

    invoke-direct {v0}, Lcom/hck/httpserver/HCKHttpClient;-><init>()V

    sput-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    .line 23
    :cond_0
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->httpUtil:Lcom/hck/httpserver/HttpUtil;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/hck/httpserver/BinaryHttpResponseHandler;)V
    .locals 1
    .parameter "uString"
    .parameter "bHandler"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "res"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lcom/hck/httpserver/JsonHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "res"

    .prologue
    .line 50
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 52
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "params"
    .parameter "res"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/JsonHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "params"
    .parameter "res"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public getClient()Lcom/hck/httpserver/HCKHttpClient;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "res"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->post(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "params"
    .parameter "res"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public setCookies(Lcom/hck/httpserver/PersistentCookieStore;)V
    .locals 1
    .parameter "cookieStore"

    .prologue
    .line 32
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1}, Lcom/hck/httpserver/HCKHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 33
    return-void
.end method

.method public setTimeOut(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 27
    sget-object v0, Lcom/hck/httpserver/HttpUtil;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p1}, Lcom/hck/httpserver/HCKHttpClient;->setTimeout(I)V

    .line 29
    return-void
.end method
