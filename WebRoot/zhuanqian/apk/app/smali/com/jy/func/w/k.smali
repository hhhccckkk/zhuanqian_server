.class public abstract Lcom/jy/func/w/k;
.super Lcom/jy/func/w/g;
.source "CYZRangeFileAsyncHttpResponseHandler.java"


# static fields
.field private static final dL:Ljava/lang/String; = "RangeFileAsyncHttpResponseHandler"


# instance fields
.field private fA:J

.field private fB:Z


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/jy/func/w/g;-><init>(Ljava/io/File;)V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jy/func/w/k;->fA:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jy/func/w/k;->fB:Z

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/HttpResponse;)V
    .locals 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 34
    .local v1, status:Lorg/apache/http/StatusLine;
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_1

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v7}, Lcom/jy/func/w/k;->b(I[Lorg/apache/http/Header;[B)V

    .line 52
    .end local v1           #status:Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v1       #status:Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v7, v4}, Lcom/jy/func/w/k;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const-string v2, "Content-Range"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 44
    .local v0, header:Lorg/apache/http/Header;
    if-nez v0, :cond_3

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jy/func/w/k;->fB:Z

    .line 46
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jy/func/w/k;->fA:J

    .line 49
    :goto_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jy/func/w/k;->b(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/jy/func/w/k;->b(I[Lorg/apache/http/Header;[B)V

    goto :goto_0

    .line 48
    :cond_3
    const-string v2, "RangeFileAsyncHttpResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Range: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 4
    .parameter "uriRequest"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jy/func/w/k;->fa:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/k;->fa:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jy/func/w/k;->fa:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jy/func/w/k;->fA:J

    .line 83
    :cond_0
    iget-wide v0, p0, Lcom/jy/func/w/k;->fA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/w/k;->fB:Z

    .line 85
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/jy/func/w/k;->fA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void
.end method

.method protected final b(Lorg/apache/http/HttpEntity;)[B
    .locals 10
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 59
    .local v3, instream:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/jy/func/w/k;->fA:J

    add-long v1, v6, v8

    .line 60
    .local v1, contentLength:J
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/jy/func/w/k;->dm()Ljava/io/File;

    move-result-object v6

    iget-boolean v7, p0, Lcom/jy/func/w/k;->fB:Z

    invoke-direct {v0, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 61
    .local v0, buffer:Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    .line 63
    const/16 v6, 0x1000

    :try_start_0
    new-array v5, v6, [B

    .line 65
    .local v5, tmp:[B
    :goto_0
    iget-wide v6, p0, Lcom/jy/func/w/k;->fA:J

    cmp-long v6, v6, v1

    if-gez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, l:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    .end local v4           #l:I
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 73
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 77
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .end local v1           #contentLength:J
    .end local v3           #instream:Ljava/io/InputStream;
    .end local v5           #tmp:[B
    :cond_1
    const/4 v6, 0x0

    return-object v6

    .line 66
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    .restart local v1       #contentLength:J
    .restart local v3       #instream:Ljava/io/InputStream;
    .restart local v4       #l:I
    .restart local v5       #tmp:[B
    :cond_2
    :try_start_1
    iget-wide v6, p0, Lcom/jy/func/w/k;->fA:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/jy/func/w/k;->fA:J

    .line 67
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 68
    iget-wide v6, p0, Lcom/jy/func/w/k;->fA:J

    long-to-int v6, v6

    long-to-int v7, v1

    invoke-virtual {p0, v6, v7}, Lcom/jy/func/w/k;->e(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v4           #l:I
    .end local v5           #tmp:[B
    :catchall_0
    move-exception v6

    .line 71
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 73
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 74
    throw v6
.end method
