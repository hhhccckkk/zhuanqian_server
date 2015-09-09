.class public final Lcom/jy/func/w/a;
.super Ljava/lang/Object;
.source "CYZAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/w/a$a;
    }
.end annotation


# static fields
.field private static dL:Ljava/lang/String; = "AsyncHttpClient"

.field private static dM:Ljava/lang/String; = "Content-Type"

.field private static dN:Ljava/lang/String; = "Content-Range"

.field private static dO:Ljava/lang/String; = "Content-Encoding"

.field private static dP:Ljava/lang/String; = "Content-Disposition"

.field private static dQ:Ljava/lang/String; = "Accept-Encoding"

.field private static dR:Ljava/lang/String; = "gzip"

.field private static dS:I = 0xa

.field private static dT:I = 0x2710

.field private static dU:I = 0x5

.field private static dV:I = 0x5dc

.field private static dW:I = 0x2000


# instance fields
.field private dX:I

.field private dY:I

.field private final dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final ea:Lorg/apache/http/protocol/HttpContext;

.field private eb:Ljava/util/concurrent/ExecutorService;

.field private final ec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jy/func/t/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ed:Ljava/util/Map;
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

.field private ee:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/jy/func/w/a;-><init>(ZII)V

    .line 105
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "httpPort"

    .prologue
    .line 109
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/jy/func/w/a;-><init>(ZII)V

    .line 110
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/jy/func/w/a;-><init>(ZII)V

    .line 115
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 6
    .parameter "schemeRegistry"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v5, p0, Lcom/jy/func/w/a;->dX:I

    .line 94
    const/16 v2, 0x2710

    iput v2, p0, Lcom/jy/func/w/a;->dY:I

    .line 100
    iput-boolean v4, p0, Lcom/jy/func/w/a;->ee:Z

    .line 152
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 154
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    iget v2, p0, Lcom/jy/func/w/a;->dY:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 155
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v3, p0, Lcom/jy/func/w/a;->dX:I

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 156
    invoke-static {v1, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 158
    iget v2, p0, Lcom/jy/func/w/a;->dY:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 159
    iget v2, p0, Lcom/jy/func/w/a;->dY:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 160
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 161
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 165
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 167
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/w/a;->eb:Ljava/util/concurrent/ExecutorService;

    .line 168
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/w/a;->ec:Ljava/util/Map;

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jy/func/w/a;->ed:Ljava/util/Map;

    .line 171
    new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    .line 172
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 173
    iget-object v2, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/jy/func/w/a$1;

    invoke-direct {v3, p0}, Lcom/jy/func/w/a$1;-><init>(Lcom/jy/func/w/a;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 189
    iget-object v2, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/jy/func/w/a$2;

    invoke-direct {v3, p0}, Lcom/jy/func/w/a$2;-><init>(Lcom/jy/func/w/a;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 205
    iget-object v2, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/jy/func/w/a$3;

    invoke-direct {v3, p0}, Lcom/jy/func/w/a$3;-><init>(Lcom/jy/func/w/a;)V

    .line 223
    const/4 v4, 0x0

    .line 205
    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 225
    iget-object v2, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/jy/func/w/o;

    const/4 v4, 0x5

    const/16 v5, 0x5dc

    invoke-direct {v3, v4, v5}, Lcom/jy/func/w/o;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 226
    return-void
.end method

.method private constructor <init>(ZII)V
    .locals 5
    .parameter
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 119
    if-gtz p2, :cond_0

    const/16 p2, 0x50

    const-string v0, "AsyncHttpClient"

    .end local p2
    const-string v1, "Invalid HTTP port number specified, defaulting to 80"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz p3, :cond_1

    const/16 p3, 0x1bb

    const-string v0, "AsyncHttpClient"

    .end local p3
    const-string v1, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, p3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-direct {p0, v1}, Lcom/jy/func/w/a;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 120
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/jy/func/w/a;->ee:Z

    invoke-static {v0, p2, p3}, Lcom/jy/func/w/a;->a(ZLjava/lang/String;Lcom/jy/func/w/m;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jy/func/w/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter
    .parameter "responseHandler"

    .prologue
    .line 509
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-static {v0, p3}, Lcom/jy/func/w/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 460
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/jy/func/w/a;->ee:Z

    invoke-static {v0, p2, p4}, Lcom/jy/func/w/a;->a(ZLjava/lang/String;Lcom/jy/func/w/m;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 461
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/jy/func/w/m;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 514
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 515
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    invoke-static {p4, p6}, Lcom/jy/func/w/a;->a(Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 516
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "responseHandler"

    .prologue
    .line 567
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 568
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 522
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-static {v0, p4}, Lcom/jy/func/w/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 523
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jy/func/w/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/jy/func/w/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;
    .locals 6
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 586
    if-nez p3, :cond_0

    .line 587
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HttpUriRequest must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 590
    :cond_0
    if-nez p5, :cond_1

    .line 591
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ResponseHandler must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    :cond_1
    invoke-interface {p5}, Lcom/jy/func/w/n;->dg()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 595
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_2
    if-eqz p4, :cond_3

    .line 599
    const-string v4, "Content-Type"

    invoke-interface {p3, v4, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_3
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/jy/func/w/n;->a([Lorg/apache/http/Header;)V

    .line 603
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/jy/func/w/n;->a(Ljava/net/URI;)V

    .line 605
    new-instance v1, Lcom/jy/func/w/b;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/jy/func/w/b;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/jy/func/w/n;)V

    .line 606
    .local v1, request:Lcom/jy/func/w/b;
    iget-object v4, p0, Lcom/jy/func/w/a;->eb:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 607
    new-instance v2, Lcom/jy/func/t/e;

    invoke-direct {v2, v1}, Lcom/jy/func/t/e;-><init>(Lcom/jy/func/w/b;)V

    .line 609
    .local v2, requestHandle:Lcom/jy/func/t/e;
    if-eqz p6, :cond_7

    .line 611
    iget-object v4, p0, Lcom/jy/func/w/a;->ec:Ljava/util/Map;

    invoke-interface {v4, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 612
    .local v3, requestList:Ljava/util/List;
    if-nez v3, :cond_4

    .line 613
    new-instance v3, Ljava/util/LinkedList;

    .end local v3           #requestList:Ljava/util/List;
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 614
    .restart local v3       #requestList:Ljava/util/List;
    iget-object v4, p0, Lcom/jy/func/w/a;->ec:Ljava/util/Map;

    invoke-interface {v4, p6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_4
    instance-of v4, p5, Lcom/jy/func/w/k;

    if-eqz v4, :cond_5

    .line 618
    check-cast p5, Lcom/jy/func/w/k;

    .end local p5
    invoke-virtual {p5, p3}, Lcom/jy/func/w/k;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 620
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 623
    .local v0, iterator:Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 630
    .end local v0           #iterator:Ljava/util/Iterator;
    .end local v3           #requestList:Ljava/util/List;
    :cond_7
    return-object v2

    .line 624
    .restart local v0       #iterator:Ljava/util/Iterator;
    .restart local v3       #requestList:Ljava/util/List;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jy/func/t/e;

    invoke-virtual {v4}, Lcom/jy/func/t/e;->bR()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 625
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/jy/func/w/n;)Lcom/jy/func/w/b;
    .locals 1
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "responseHandler"

    .prologue
    .line 581
    new-instance v0, Lcom/jy/func/w/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jy/func/w/b;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/jy/func/w/n;)V

    return-object v0
.end method

.method private static a(ZLjava/lang/String;Lcom/jy/func/w/m;)Ljava/lang/String;
    .locals 3
    .parameter "shouldEncodeUrl"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    const/4 v1, 0x0

    .line 656
    :goto_0
    return-object v1

    .line 643
    :cond_0
    if-eqz p0, :cond_1

    .line 644
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 646
    :cond_1
    if-eqz p2, :cond_2

    .line 648
    invoke-virtual {p2}, Lcom/jy/func/w/m;->dy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, paramString:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "&"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0           #paramString:Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .line 656
    goto :goto_0

    .line 651
    .restart local v0       #paramString:Ljava/lang/String;
    :cond_3
    const-string v1, "?"

    goto :goto_1
.end method

.method static synthetic a(Lcom/jy/func/w/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jy/func/w/a;->ed:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;
    .locals 4
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    const/4 v3, 0x0

    .line 698
    const/4 v1, 0x0

    .line 701
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_0

    .line 702
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jy/func/w/m;->a(Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 711
    :cond_0
    :goto_0
    return-object v1

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Ljava/io/IOException;
    if-eqz p1, :cond_1

    .line 706
    const/4 v2, 0x0

    invoke-interface {p1, v2, v3, v3, v0}, Lcom/jy/func/w/n;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 720
    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 724
    :cond_0
    return-object p0
.end method

.method private static a(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5
    .parameter "fixNoHttpResponseException"
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 125
    const-string v2, "AsyncHttpClient"

    const-string v3, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    if-gtz p1, :cond_1

    .line 129
    const/16 p1, 0x50

    .line 130
    const-string v2, "AsyncHttpClient"

    const-string v3, "Invalid HTTP port number specified, defaulting to 80"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    if-gtz p2, :cond_2

    .line 134
    const/16 p2, 0x1bb

    .line 135
    const-string v2, "AsyncHttpClient"

    const-string v3, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    if-eqz p0, :cond_3

    .line 139
    invoke-static {}, Lcom/jy/func/w/j;->dv()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 143
    .local v1, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 144
    .local v0, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 145
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v1, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 147
    return-object v0

    .line 141
    .end local v0           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v1           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .restart local v1       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed null Context to cancelRequests"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Lcom/jy/func/w/a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/jy/func/w/a$4;-><init>(Lcom/jy/func/w/a;Landroid/content/Context;Z)V

    .line 420
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 421
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 423
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    .line 676
    if-eqz p0, :cond_0

    .line 677
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"

    .prologue
    .line 688
    if-eqz p0, :cond_0

    .line 689
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close output stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 230
    invoke-static {p0}, Lcom/jy/func/w/o;->c(Ljava/lang/Class;)V

    .line 231
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 328
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v0, proxy:Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 330
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 331
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "hostname"
    .parameter "port"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    new-instance v2, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v3, p3, p4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 337
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 338
    .local v0, proxy:Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 339
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 340
    return-void
.end method

.method private a(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/jy/func/w/a;->eb:Ljava/util/concurrent/ExecutorService;

    .line 257
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 9
    .parameter "entity"

    .prologue
    .line 729
    instance-of v4, p0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v4, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, f:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v4, Lorg/apache/http/entity/HttpEntityWrapper;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 733
    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_1

    .line 739
    :goto_1
    if-eqz v0, :cond_0

    .line 740
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 741
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpEntity;

    .line 742
    .local v3, wrapped:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_0

    .line 743
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 749
    .end local v0           #f:Ljava/lang/reflect/Field;
    .end local v3           #wrapped:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_2
    return-void

    .line 733
    .restart local v0       #f:Ljava/lang/reflect/Field;
    :cond_1
    aget-object v1, v5, v4

    .line 734
    .local v1, ff:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "wrappedEntity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 735
    move-object v0, v1

    .line 736
    goto :goto_1

    .line 733
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 746
    .end local v1           #ff:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 747
    .local v2, t:Ljava/lang/Throwable;
    const-string v4, "AsyncHttpClient"

    const-string v5, "wrappedEntity consume"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 345
    return-void
.end method

.method public static a(Ljava/io/PushbackInputStream;)Z
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 662
    if-nez p0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v3

    .line 665
    :cond_1
    new-array v1, v8, [B

    .line 666
    .local v1, signature:[B
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v0

    .line 667
    .local v0, readStatus:I
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 668
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v1, v4

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    or-int v2, v5, v6

    .line 669
    .local v2, streamHeader:I
    if-ne v0, v8, :cond_0

    const v5, 0x8b1f

    if-ne v5, v2, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/jy/func/w/a;->ed:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/jy/func/w/a;->ee:Z

    invoke-static {v0, p2, p3}, Lcom/jy/func/w/a;->a(ZLjava/lang/String;Lcom/jy/func/w/m;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jy/func/w/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter
    .parameter "responseHandler"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-static {v0, p3}, Lcom/jy/func/w/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 487
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/jy/func/w/a;->ee:Z

    invoke-static {v0, p2, p4}, Lcom/jy/func/w/a;->a(ZLjava/lang/String;Lcom/jy/func/w/m;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 549
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-static {v0, p4}, Lcom/jy/func/w/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 550
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jy/func/w/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jy/func/w/a;->ec:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/jy/func/w/o;->d(Ljava/lang/Class;)V

    .line 237
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    const/4 v4, 0x0

    .line 504
    invoke-static {p3, p4}, Lcom/jy/func/w/a;->a(Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-static {v3, v0}, Lcom/jy/func/w/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v4, 0x0

    .line 561
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 562
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v5, p3

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 574
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    iget-boolean v0, p0, Lcom/jy/func/w/a;->ee:Z

    invoke-static {v0, p2, p4}, Lcom/jy/func/w/a;->a(ZLjava/lang/String;Lcom/jy/func/w/m;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 575
    .local v3, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/jy/func/w/a;->c(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private c(II)V
    .locals 2
    .parameter "retries"
    .parameter "timeout"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/jy/func/w/o;

    invoke-direct {v1, p1, p2}, Lcom/jy/func/w/o;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 350
    return-void
.end method

.method private c(Z)V
    .locals 4
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/jy/func/w/a;->ec:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/jy/func/w/a;->ec:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 436
    return-void

    .line 428
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 429
    .local v0, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/jy/func/t/e;>;"
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jy/func/t/e;

    .line 431
    invoke-virtual {v1, p1}, Lcom/jy/func/t/e;->cancel(Z)Z

    goto :goto_0
.end method

.method private cV()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private cW()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method private cX()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/jy/func/w/a;->eb:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static cY()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private cZ()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 400
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    const/4 v4, 0x0

    .line 539
    invoke-static {p3, p4}, Lcom/jy/func/w/a;->a(Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-static {v3, v0}, Lcom/jy/func/w/a;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jy/func/w/a;->d(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/jy/func/w/a;->d(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private d(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 635
    iput-boolean p1, p0, Lcom/jy/func/w/a;->ee:Z

    .line 636
    return-void
.end method

.method private da()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/jy/func/w/a;->ee:Z

    return v0
.end method

.method private e(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 7
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v4, 0x0

    .line 556
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v5, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/jy/func/w/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/jy/func/w/n;Landroid/content/Context;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method private getMaxConnections()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/jy/func/w/a;->dX:I

    return v0
.end method

.method private getTimeout()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/jy/func/w/a;->dY:I

    return v0
.end method

.method private k(I)V
    .locals 3
    .parameter "maxConnections"

    .prologue
    .line 303
    if-gtz p1, :cond_0

    .line 304
    const/16 p1, 0xa

    .line 305
    :cond_0
    iput p1, p0, Lcom/jy/func/w/a;->dX:I

    .line 306
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 307
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/jy/func/w/a;->dX:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 308
    return-void
.end method

.method private removeAllHeaders()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jy/func/w/a;->ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    return-void
.end method

.method private removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jy/func/w/a;->ed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void
.end method

.method private setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/jy/func/w/a;->ea:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method private setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    .locals 1
    .parameter "customRedirectHandler"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 289
    return-void
.end method

.method private setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 294
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jy/func/w/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/jy/func/w/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jy/func/w/a;->c(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/n;)Lcom/jy/func/t/e;

    move-result-object v0

    return-object v0
.end method

.method public final setTimeout(I)V
    .locals 3
    .parameter

    .prologue
    .line 317
    const/16 v1, 0x2af8

    iput v1, p0, Lcom/jy/func/w/a;->dY:I

    .line 320
    iget-object v1, p0, Lcom/jy/func/w/a;->dZ:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 321
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/jy/func/w/a;->dY:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 322
    iget v1, p0, Lcom/jy/func/w/a;->dY:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 323
    iget v1, p0, Lcom/jy/func/w/a;->dY:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 324
    return-void
.end method
