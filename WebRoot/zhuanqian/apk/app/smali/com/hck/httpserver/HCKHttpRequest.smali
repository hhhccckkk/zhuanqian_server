.class Lcom/hck/httpserver/HCKHttpRequest;
.super Ljava/lang/Object;
.source "HCKHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isBinaryRequest:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/hck/httpserver/HCKHttpResponseHandler;Ljava/lang/String;)V
    .locals 1
    .parameter "client"
    .parameter "context"
    .parameter "request"
    .parameter "responseHandler"
    .parameter "url"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/hck/httpserver/HCKHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 42
    iput-object p2, p0, Lcom/hck/httpserver/HCKHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 43
    iput-object p3, p0, Lcom/hck/httpserver/HCKHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 44
    iput-object p4, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    .line 45
    iput-object p5, p0, Lcom/hck/httpserver/HCKHttpRequest;->url:Ljava/lang/String;

    .line 46
    instance-of v0, p4, Lcom/hck/httpserver/BinaryHttpResponseHandler;

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hck/httpserver/HCKHttpRequest;->isBinaryRequest:Z

    .line 49
    :cond_0
    return-void
.end method

.method private makeRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v4, p0, Lcom/hck/httpserver/HCKHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 79
    .local v1, response:Lorg/apache/http/HttpResponse;
    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 93
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v1       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    throw v0
.end method

.method private makeRequestWithRetries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v3, 0x1

    .line 97
    .local v3, retry:Z
    const/4 v0, 0x0

    .line 98
    .local v0, cause:Ljava/io/IOException;
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .line 99
    .local v4, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-nez v3, :cond_0

    .line 141
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 142
    .local v2, ex:Ljava/net/ConnectException;
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 143
    throw v2

    .line 101
    .end local v2           #ex:Ljava/net/ConnectException;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hck/httpserver/HCKHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 129
    :cond_1
    :goto_1
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/net/UnknownHostException;
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 106
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    const-string v6, "\u65e0\u6cd5\u8bc6\u522b\u4e3b\u673a"

    invoke-virtual {v5, v1, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, e:Ljava/net/SocketException;
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 113
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    const-string v6, "\u65e0\u6cd5\u8fde\u63a5\u4e3b\u673a"

    invoke-virtual {v5, v1, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    .end local v1           #e:Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 117
    .local v1, e:Ljava/net/SocketTimeoutException;
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    const-string v6, "\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {v5, v1, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v1

    .line 123
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 126
    move-object v0, v1

    .line 127
    iget v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/hck/httpserver/HCKHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_1

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NPE in HttpClient"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v0       #cause:Ljava/io/IOException;
    iget v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/hck/httpserver/HCKHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 134
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    const-string v6, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v5, v1, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_5
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 138
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    const-string v6, "url\u683c\u5f0f\u9519\u8bef\ue1e4"

    invoke-virtual {v5, v1, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendStartMessage(Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/hck/httpserver/HCKHttpRequest;->makeRequestWithRetries()V

    .line 60
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFinishMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFinishMessage(Ljava/lang/String;)V

    .line 66
    iget-boolean v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->isBinaryRequest:Z

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    invoke-virtual {v1, v0, v3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpRequest;->responseHandler:Lcom/hck/httpserver/HCKHttpResponseHandler;

    invoke-virtual {v1, v0, v3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
