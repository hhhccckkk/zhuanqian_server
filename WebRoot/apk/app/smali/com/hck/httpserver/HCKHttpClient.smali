.class public Lcom/hck/httpserver/HCKHttpClient;
.super Ljava/lang/Object;
.source "HCKHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/httpserver/HCKHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.4.3"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0xa

    sput v0, Lcom/hck/httpserver/HCKHttpClient;->maxConnections:I

    .line 101
    const/16 v0, 0x2710

    sput v0, Lcom/hck/httpserver/HCKHttpClient;->socketTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 121
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v3, Lcom/hck/httpserver/HCKHttpClient;->socketTimeout:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 123
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v4, Lcom/hck/httpserver/HCKHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 122
    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 125
    const/16 v3, 0xa

    .line 124
    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    sget v3, Lcom/hck/httpserver/HCKHttpClient;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 128
    sget v3, Lcom/hck/httpserver/HCKHttpClient;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 131
    const/16 v3, 0x2000

    .line 130
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 135
    const-string v3, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 136
    const-string v6, "1.4.3"

    aput-object v6, v4, v5

    .line 134
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 138
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 139
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 140
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 139
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 141
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    .line 142
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 141
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 143
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 146
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 147
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 149
    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/hck/httpserver/HCKHttpClient$1;

    invoke-direct {v4, p0}, Lcom/hck/httpserver/HCKHttpClient$1;-><init>(Lcom/hck/httpserver/HCKHttpClient;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 161
    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/hck/httpserver/HCKHttpClient$2;

    invoke-direct {v4, p0}, Lcom/hck/httpserver/HCKHttpClient$2;-><init>(Lcom/hck/httpserver/HCKHttpClient;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 181
    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/hck/httpserver/RetryHandler;

    .line 182
    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/hck/httpserver/RetryHandler;-><init>(I)V

    .line 181
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 184
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 186
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->requestMap:Ljava/util/Map;

    .line 187
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 188
    return-void
.end method

.method static synthetic access$0(Lcom/hck/httpserver/HCKHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 777
    if-eqz p2, :cond_0

    .line 778
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 781
    :cond_0
    return-object p1
.end method

.method private paramsToEntity(Lcom/hck/httpserver/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "params"

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 767
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Lcom/hck/httpserver/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 771
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 328
    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 329
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v1, :cond_1

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 337
    :cond_1
    iget-object v3, p0, Lcom/hck/httpserver/HCKHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void

    .line 330
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 331
    .local v2, requestRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 332
    .local v0, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 698
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 699
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 701
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "responseHandler"

    .prologue
    .line 717
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 718
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    .line 719
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 722
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 684
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/hck/httpserver/HCKHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 386
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 403
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 404
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    .line 403
    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 406
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 423
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0, p2, p4}, Lcom/hck/httpserver/HCKHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    .line 425
    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 428
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 354
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 370
    return-void
.end method

.method public getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getUrlWithQueryString(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 752
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 753
    invoke-virtual {p2}, Lcom/hck/httpserver/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, paramString:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 760
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/hck/httpserver/HCKHttpClient;->url:Ljava/lang/String;

    .line 761
    return-object p1

    .line 757
    .restart local v0       #paramString:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 476
    invoke-direct {p0, p3}, Lcom/hck/httpserver/HCKHttpClient;->paramsToEntity(Lcom/hck/httpserver/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hck/httpserver/HCKHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 477
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 499
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 500
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/hck/httpserver/HCKHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 499
    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 502
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/hck/httpserver/RequestParams;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 525
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 526
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    .line 527
    invoke-direct {p0, p4}, Lcom/hck/httpserver/HCKHttpClient;->paramsToEntity(Lcom/hck/httpserver/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 528
    :cond_0
    if-eqz p3, :cond_1

    .line 529
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 532
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 557
    .line 558
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, v0, p4}, Lcom/hck/httpserver/HCKHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 559
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 560
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 563
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/hck/httpserver/HCKHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 444
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 459
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 611
    invoke-direct {p0, p3}, Lcom/hck/httpserver/HCKHttpClient;->paramsToEntity(Lcom/hck/httpserver/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hck/httpserver/HCKHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 612
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 634
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 635
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/hck/httpserver/HCKHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 634
    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 637
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 662
    .line 663
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, v0, p4}, Lcom/hck/httpserver/HCKHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 664
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 665
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hck/httpserver/HCKHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V

    .line 668
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/hck/httpserver/HCKHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 579
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/hck/httpserver/HCKHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 594
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;Landroid/content/Context;)V
    .locals 9
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 729
    if-eqz p4, :cond_0

    .line 730
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_0
    iget-object v8, p0, Lcom/hck/httpserver/HCKHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/hck/httpserver/HCKHttpRequest;

    .line 734
    iget-object v5, p0, Lcom/hck/httpserver/HCKHttpClient;->url:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/hck/httpserver/HCKHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/hck/httpserver/HCKHttpResponseHandler;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 736
    .local v6, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz p6, :cond_2

    .line 738
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->requestMap:Ljava/util/Map;

    .line 739
    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 740
    .local v7, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v7, :cond_1

    .line 741
    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 742
    .restart local v7       #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    .end local v7           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_2
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "pass"

    .prologue
    .line 289
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 290
    .local v0, scope:Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/hck/httpserver/HCKHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 291
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "user"
    .parameter "pass"
    .parameter "scope"

    .prologue
    .line 306
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 310
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 265
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 266
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/hck/httpserver/HCKHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 229
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 251
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 252
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 253
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 254
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 241
    return-void
.end method
