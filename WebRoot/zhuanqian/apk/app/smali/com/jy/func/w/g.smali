.class public abstract Lcom/jy/func/w/g;
.super Lcom/jy/func/w/c;
.source "CYZFileAsyncHttpResponseHandler.java"


# static fields
.field private static final dL:Ljava/lang/String; = "FileAsyncHttpResponseHandler"

.field private static synthetic fb:Z


# instance fields
.field protected final fa:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jy/func/w/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jy/func/w/g;->fb:Z

    .line 20
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jy/func/w/c;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/jy/func/w/g;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/w/g;->fa:Ljava/io/File;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jy/func/w/c;-><init>()V

    .line 24
    sget-boolean v0, Lcom/jy/func/w/g;->fb:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/jy/func/w/g;->fa:Ljava/io/File;

    .line 26
    return-void
.end method

.method private dl()Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/jy/func/w/g;->dm()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jy/func/w/g;->dm()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    sget-boolean v1, Lcom/jy/func/w/g;->fb:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 42
    :cond_0
    :try_start_0
    const-string v1, "temp_"

    const-string v2, "_handled"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FileAsyncHttpResponseHandler"

    const-string v2, "Cannot create temporary file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I[Lorg/apache/http/Header;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jy/func/w/g;->dm()Ljava/io/File;

    .line 65
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jy/func/w/g;->dm()Ljava/io/File;

    .line 58
    return-void
.end method

.method protected b(Lorg/apache/http/HttpEntity;)[B
    .locals 8
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 74
    .local v4, instream:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 75
    .local v1, contentLength:J
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/jy/func/w/g;->dm()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .local v0, buffer:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 78
    const/16 v7, 0x1000

    :try_start_0
    new-array v6, v7, [B

    .line 79
    .local v6, tmp:[B
    const/4 v3, 0x0

    .line 81
    .local v3, count:I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, l:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    :cond_0
    invoke-static {v4}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/OutputStream;)V

    .line 93
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .end local v1           #contentLength:J
    .end local v3           #count:I
    .end local v4           #instream:Ljava/io/InputStream;
    .end local v5           #l:I
    .end local v6           #tmp:[B
    :cond_1
    const/4 v7, 0x0

    return-object v7

    .line 82
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    .restart local v1       #contentLength:J
    .restart local v3       #count:I
    .restart local v4       #instream:Ljava/io/InputStream;
    .restart local v5       #l:I
    .restart local v6       #tmp:[B
    :cond_2
    add-int/2addr v3, v5

    .line 83
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 84
    long-to-int v7, v1

    invoke-virtual {p0, v3, v7}, Lcom/jy/func/w/g;->e(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v3           #count:I
    .end local v5           #l:I
    .end local v6           #tmp:[B
    :catchall_0
    move-exception v7

    .line 87
    invoke-static {v4}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/OutputStream;)V

    .line 90
    throw v7
.end method

.method protected final dm()Ljava/io/File;
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/jy/func/w/g;->fb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/g;->fa:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jy/func/w/g;->fa:Ljava/io/File;

    return-object v0
.end method

.method public abstract dn()V
.end method

.method public abstract do()V
.end method
