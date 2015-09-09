.class public Lnet/midi/wall/sdk/a/d;
.super Landroid/os/AsyncTask;


# static fields
.field private static b:Lnet/midi/wall/sdk/a/d;


# instance fields
.field a:Ljava/util/ArrayList;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private f:Lnet/midi/wall/sdk/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/a/d;->b:Lnet/midi/wall/sdk/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/midi/wall/sdk/a/d;->c:Z

    iput-object v1, p0, Lnet/midi/wall/sdk/a/d;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/a/d;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/a/d;->b:Lnet/midi/wall/sdk/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/a/d;

    invoke-direct {v0}, Lnet/midi/wall/sdk/a/d;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/a/d;->b:Lnet/midi/wall/sdk/a/d;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/a/d;->b:Lnet/midi/wall/sdk/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/InputStream;JLnet/midi/wall/sdk/b/f;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4}, Lnet/midi/wall/sdk/b/f;->d()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "chmod"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "604"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lnet/midi/wall/sdk/d/c;->a([Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v6, v2, [B

    const-wide/16 v2, 0x64

    div-long v7, p2, v2

    move v2, v1

    move v3, v1

    move v4, v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v4, v9

    add-int/2addr v2, v9

    int-to-long v9, v4

    cmp-long v9, v9, p2

    if-gez v9, :cond_1

    int-to-long v9, v2

    cmp-long v9, v9, v7

    if-lez v9, :cond_1

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Integer;

    const/4 v10, 0x0

    add-int/lit8 v2, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {p0, v9}, Lnet/midi/wall/sdk/a/d;->publishProgress([Ljava/lang/Object;)V

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v4

    cmp-long v2, v2, p2

    if-ltz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method private a(Lnet/midi/wall/sdk/b/f;)Z
    .locals 2

    iget-object v0, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/midi/wall/sdk/a/b;

    iget-object v0, v0, Lnet/midi/wall/sdk/a/b;->a:Lnet/midi/wall/sdk/b/f;

    invoke-virtual {v0, p1}, Lnet/midi/wall/sdk/b/f;->a(Lnet/midi/wall/sdk/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/midi/wall/sdk/a/b;

    iput-object v0, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iget-object v0, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iget-object v1, v1, Lnet/midi/wall/sdk/a/b;->a:Lnet/midi/wall/sdk/b/f;

    iget-object v1, v1, Lnet/midi/wall/sdk/b/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.connection.timeout"

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.socket.timeout"

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iget-object v4, p0, Lnet/midi/wall/sdk/a/d;->d:Landroid/content/Context;

    iget-object v5, p0, Lnet/midi/wall/sdk/a/d;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v4, v5}, Lnet/midi/wall/sdk/a/a;->a(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V

    iget-object v4, p0, Lnet/midi/wall/sdk/a/d;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    move-wide v0, v2

    :cond_1
    iget-object v2, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iget-object v2, v2, Lnet/midi/wall/sdk/a/b;->a:Lnet/midi/wall/sdk/b/f;

    invoke-direct {p0, v4, v0, v1, v2}, Lnet/midi/wall/sdk/a/d;->a(Ljava/io/InputStream;JLnet/midi/wall/sdk/b/f;)Z

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iget-object v1, v1, Lnet/midi/wall/sdk/a/b;->b:Lnet/midi/wall/sdk/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iget-object v1, v1, Lnet/midi/wall/sdk/a/b;->b:Lnet/midi/wall/sdk/a/c;

    iget-object v2, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iget-object v2, v2, Lnet/midi/wall/sdk/a/b;->a:Lnet/midi/wall/sdk/b/f;

    invoke-interface {v1, p1, v2}, Lnet/midi/wall/sdk/a/c;->a(Ljava/lang/Boolean;Lnet/midi/wall/sdk/b/f;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v1

    iput-boolean v4, v1, Lnet/midi/wall/sdk/b/d;->b:Z

    :cond_0
    iput-object v0, p0, Lnet/midi/wall/sdk/a/d;->f:Lnet/midi/wall/sdk/a/b;

    iput-boolean v3, p0, Lnet/midi/wall/sdk/a/d;->c:Z

    iget-object v1, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-array v1, v4, [Ljava/lang/Void;

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lnet/midi/wall/sdk/a/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Lnet/midi/wall/sdk/b/f;Lnet/midi/wall/sdk/a/c;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p2, Lnet/midi/wall/sdk/b/f;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lnet/midi/wall/sdk/a/b;

    invoke-direct {v2, p2, p3}, Lnet/midi/wall/sdk/a/b;-><init>(Lnet/midi/wall/sdk/b/f;Lnet/midi/wall/sdk/a/c;)V

    invoke-direct {p0, p2}, Lnet/midi/wall/sdk/a/d;->a(Lnet/midi/wall/sdk/b/f;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lnet/midi/wall/sdk/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/midi/wall/sdk/a/d;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lnet/midi/wall/sdk/a/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Lnet/midi/wall/sdk/a/c;->a(Ljava/lang/Boolean;Lnet/midi/wall/sdk/b/f;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lnet/midi/wall/sdk/a/d;->d:Landroid/content/Context;

    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lnet/midi/wall/sdk/a/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lnet/midi/wall/sdk/a/d;->c:Z

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/midi/wall/sdk/a/d;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/midi/wall/sdk/a/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/midi/wall/sdk/a/d;->c:Z

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/a/d;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method
