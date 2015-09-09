.class public Lnet/midi/wall/sdk/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/apache/http/client/methods/HttpGet;

.field b:Lorg/apache/http/protocol/HttpContext;

.field c:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/midi/wall/sdk/a/e;->a:Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/a/e;->b:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/a/e;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lnet/midi/wall/sdk/a/g;

    invoke-direct {v0, p0}, Lnet/midi/wall/sdk/a/g;-><init>(Lnet/midi/wall/sdk/a/e;)V

    iput-object v0, p0, Lnet/midi/wall/sdk/a/e;->c:Landroid/os/Handler;

    iput-object p1, p0, Lnet/midi/wall/sdk/a/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lnet/midi/wall/sdk/a/e;->e:Ljava/lang/String;

    iput-object p3, p0, Lnet/midi/wall/sdk/a/e;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/midi/wall/sdk/a/e;->a()V

    return-void
.end method

.method static synthetic a(Lnet/midi/wall/sdk/a/e;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/a/e;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const/16 v2, 0x1f40

    const/4 v4, 0x0

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->b()V

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    iget-object v0, v0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    iput-object p1, v0, Lnet/midi/wall/sdk/b/f;->d:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->g()V

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/midi/wall/sdk/b/i;->e(Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/Integer;)V

    :cond_2
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    iget-object v1, p0, Lnet/midi/wall/sdk/a/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lnet/midi/wall/sdk/a/e;->e:Ljava/lang/String;

    iget-object v3, p0, Lnet/midi/wall/sdk/a/e;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/midi/wall/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->g()V

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/midi/wall/sdk/b/i;->e(Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/Integer;)V

    :cond_4
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    iget-object v1, p0, Lnet/midi/wall/sdk/a/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lnet/midi/wall/sdk/a/e;->e:Ljava/lang/String;

    iget-object v3, p0, Lnet/midi/wall/sdk/a/e;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/midi/wall/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->c()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lnet/midi/wall/sdk/a/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/midi/wall/sdk/a/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    iput-boolean v3, v0, Lnet/midi/wall/sdk/b/d;->b:Z

    iget-object v0, p0, Lnet/midi/wall/sdk/a/e;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    const v2, 0x2bf20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lnet/midi/wall/sdk/a/e;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const v2, 0xea60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lnet/midi/wall/sdk/a/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lnet/midi/wall/sdk/a/e;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0, v1}, Lnet/midi/wall/sdk/a/a;->a(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V

    new-instance v0, Lnet/midi/wall/sdk/a/f;

    invoke-direct {v0, p0}, Lnet/midi/wall/sdk/a/f;-><init>(Lnet/midi/wall/sdk/a/e;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lnet/midi/wall/sdk/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
