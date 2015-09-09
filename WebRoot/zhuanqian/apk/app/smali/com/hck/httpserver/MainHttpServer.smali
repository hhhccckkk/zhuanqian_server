.class public Lcom/hck/httpserver/MainHttpServer;
.super Ljava/lang/Object;
.source "MainHttpServer.java"


# static fields
.field private static client:Lcom/hck/httpserver/HCKHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/hck/httpserver/HCKHttpClient;

    invoke-direct {v0}, Lcom/hck/httpserver/HCKHttpClient;-><init>()V

    sput-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    .line 7
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/hck/httpserver/HCKHttpClient;->setTimeout(I)V

    .line 8
    return-void
.end method

.method public static getClient()Lcom/hck/httpserver/HCKHttpClient;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    return-object v0
.end method

.method public static getData(Ljava/lang/String;Lcom/hck/httpserver/BinaryHttpResponseHandler;)V
    .locals 1
    .parameter "uString"
    .parameter "bHandler"

    .prologue
    .line 28
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 29
    return-void
.end method

.method public static getData(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "params"
    .parameter "res"

    .prologue
    .line 11
    if-nez p1, :cond_0

    .line 12
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 17
    :goto_0
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public static getData(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/JsonHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "params"
    .parameter "res"

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto :goto_0
.end method

.method public static postData(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "urlString"
    .parameter "res"

    .prologue
    .line 32
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/hck/httpserver/HCKHttpClient;->post(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 33
    return-void
.end method

.method public static postData(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 37
    sget-object v0, Lcom/hck/httpserver/MainHttpServer;->client:Lcom/hck/httpserver/HCKHttpClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 38
    return-void
.end method
