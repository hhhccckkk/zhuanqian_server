.class final Lcom/jy/func/w/o;
.super Ljava/lang/Object;
.source "CYZRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final fO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final fP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final fQ:I

.field private final fR:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jy/func/w/o;->fO:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jy/func/w/o;->fP:Ljava/util/HashSet;

    .line 86
    sget-object v0, Lcom/jy/func/w/o;->fO:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/jy/func/w/o;->fO:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/jy/func/w/o;->fO:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/jy/func/w/o;->fP:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/jy/func/w/o;->fP:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "maxRetries"
    .parameter "retrySleepTimeMS"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/jy/func/w/o;->fQ:I

    .line 26
    iput p2, p0, Lcom/jy/func/w/o;->fR:I

    .line 27
    return-void
.end method

.method private static a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 2
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static c(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/jy/func/w/o;->fO:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method static d(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/jy/func/w/o;->fP:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 31
    const/4 v1, 0x1

    .line 33
    .local v1, retry:Z
    const-string v3, "http.request_sent"

    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 36
    .local v2, sent:Z
    :goto_0
    iget v3, p0, Lcom/jy/func/w/o;->fQ:I

    if-le p2, v3, :cond_2

    .line 38
    const/4 v1, 0x0

    .line 50
    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    .line 52
    const-string v3, "http.request"

    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 53
    if-nez v3, :cond_5

    .line 64
    :goto_2
    return v4

    .end local v2           #sent:Z
    :cond_1
    move v2, v4

    .line 34
    goto :goto_0

    .line 39
    .restart local v2       #sent:Z
    :cond_2
    sget-object v3, Lcom/jy/func/w/o;->fO:Ljava/util/HashSet;

    invoke-static {v3, p1}, Lcom/jy/func/w/o;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_1

    :cond_3
    sget-object v3, Lcom/jy/func/w/o;->fP:Ljava/util/HashSet;

    invoke-static {v3, p1}, Lcom/jy/func/w/o;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    const/4 v1, 0x0

    .line 45
    goto :goto_1

    :cond_4
    if-nez v2, :cond_0

    .line 47
    const/4 v1, 0x1

    goto :goto_1

    .line 58
    :cond_5
    if-eqz v1, :cond_6

    .line 59
    iget v3, p0, Lcom/jy/func/w/o;->fR:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :goto_3
    move v4, v1

    .line 64
    goto :goto_2

    .line 61
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
