.class public final Lcom/jy/func/w/b;
.super Ljava/lang/Object;
.source "CYZAsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ej:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final ek:Lorg/apache/http/protocol/HttpContext;

.field private final el:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final em:Lcom/jy/func/w/n;

.field private en:I

.field private eo:Z

.field private ep:Z

.field private eq:Z

.field private er:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/jy/func/w/n;)V
    .locals 1
    .parameter "client"
    .parameter "context"
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/jy/func/w/b;->eo:Z

    .line 27
    iput-boolean v0, p0, Lcom/jy/func/w/b;->ep:Z

    .line 28
    iput-boolean v0, p0, Lcom/jy/func/w/b;->eq:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/w/b;->er:Z

    .line 32
    iput-object p1, p0, Lcom/jy/func/w/b;->ej:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 33
    iput-object p2, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    .line 34
    iput-object p3, p0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 35
    iput-object p4, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    .line 36
    return-void
.end method

.method private db()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 80
    new-instance v1, Ljava/net/MalformedURLException;

    const-string v2, "No valid URI scheme was provided"

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/jy/func/w/b;->ej:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 85
    .local v0, response:Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v1, v0}, Lcom/jy/func/w/n;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method private dc()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, cause:Ljava/io/IOException;
    iget-object v3, p0, Lcom/jy/func/w/b;->ej:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    .local v2, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    move-object v3, v0

    .line 95
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/jy/func/w/b;->er:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v4, :cond_0

    .line 131
    :goto_1
    throw v3

    .line 97
    :cond_0
    move-object v0, p0

    :try_start_1
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "No valid URI scheme was provided"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UnknownHostException exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    iget v4, p0, Lcom/jy/func/w/b;->en:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/jy/func/w/b;->en:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jy/func/w/b;->en:I

    iget-object v5, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/jy/func/w/b;->er:Z

    move-object v1, v3

    .line 121
    .end local v1           #e:Ljava/net/UnknownHostException;
    :goto_3
    iget-boolean v3, p0, Lcom/jy/func/w/b;->er:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    iget v4, p0, Lcom/jy/func/w/b;->en:I

    invoke-interface {v3, v4}, Lcom/jy/func/w/n;->m(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    move-object v3, v1

    goto :goto_0

    .line 97
    :cond_2
    :try_start_3
    iget-object v3, v0, Lcom/jy/func/w/b;->ej:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v4, v0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v5, v0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v4, v3}, Lcom/jy/func/w/n;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 113
    :cond_3
    return-void

    .line 103
    .restart local v1       #e:Ljava/net/UnknownHostException;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 105
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    iget v4, p0, Lcom/jy/func/w/b;->en:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jy/func/w/b;->en:I

    iget-object v5, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jy/func/w/b;->er:Z

    move-object v1, v3

    goto :goto_3

    .line 110
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 111
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 117
    iget v3, p0, Lcom/jy/func/w/b;->en:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jy/func/w/b;->en:I

    iget-object v4, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jy/func/w/b;->er:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "AsyncHttpRequest"

    const-string v4, "Unhandled exception origin cause"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unhandled exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private declared-synchronized dd()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jy/func/w/b;->eq:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jy/func/w/b;->eo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jy/func/w/b;->ep:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/w/b;->ep:Z

    .line 144
    iget-object v0, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v0}, Lcom/jy/func/w/n;->dj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final de()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/w/b;->eo:Z

    .line 155
    iget-object v0, p0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 156
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/jy/func/w/b;->eo:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/jy/func/w/b;->dd()V

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/jy/func/w/b;->eo:Z

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jy/func/w/b;->eq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v1}, Lcom/jy/func/w/n;->dh()V

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/jy/func/w/b;->ej:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v1, v3

    :cond_3
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/jy/func/w/b;->er:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_6

    :goto_2
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v1, :cond_9

    .line 56
    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v1, v5, v3, v3, v0}, Lcom/jy/func/w/n;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v1, :cond_5

    .line 67
    iget-object v1, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v1}, Lcom/jy/func/w/n;->di()V

    .line 70
    :cond_5
    iput-boolean v4, p0, Lcom/jy/func/w/b;->eq:Z

    goto :goto_0

    .line 53
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/net/MalformedURLException;

    const-string v2, "No valid URI scheme was provided"

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UnknownHostException exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jy/func/w/b;->en:I

    if-lez v1, :cond_8

    iget v1, p0, Lcom/jy/func/w/b;->en:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jy/func/w/b;->en:I

    iget-object v7, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v2, v1, v7}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/jy/func/w/b;->er:Z

    move-object v1, v2

    :goto_5
    iget-boolean v2, p0, Lcom/jy/func/w/b;->er:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    iget v7, p0, Lcom/jy/func/w/b;->en:I

    invoke-interface {v2, v7}, Lcom/jy/func/w/n;->m(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v1

    :try_start_5
    const-string v1, "AsyncHttpRequest"

    const-string v6, "Unhandled exception origin cause"

    invoke-static {v1, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unhandled exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/jy/func/w/b;->ej:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/b;->el:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v7, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v7}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jy/func/w/b;->em:Lcom/jy/func/w/n;

    invoke-interface {v2, v1}, Lcom/jy/func/w/n;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_3
    move-exception v1

    :try_start_7
    new-instance v2, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "NPE in HttpClient: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jy/func/w/b;->en:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jy/func/w/b;->en:I

    iget-object v7, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v2, v1, v7}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jy/func/w/b;->er:Z

    move-object v1, v2

    goto :goto_5

    :cond_8
    move v1, v5

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {p0}, Lcom/jy/func/w/b;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/jy/func/w/b;->en:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jy/func/w/b;->en:I

    iget-object v7, p0, Lcom/jy/func/w/b;->ek:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v1, v2, v7}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jy/func/w/b;->er:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    :cond_9
    const-string v1, "AsyncHttpRequest"

    const-string v2, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method
