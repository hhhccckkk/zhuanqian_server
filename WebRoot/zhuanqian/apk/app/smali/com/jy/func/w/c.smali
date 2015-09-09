.class public abstract Lcom/jy/func/w/c;
.super Ljava/lang/Object;
.source "CYZAsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/jy/func/w/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/w/c$a;
    }
.end annotation


# static fields
.field private static final dL:Ljava/lang/String; = "AsyncHttpResponseHandler"

.field private static eA:Ljava/lang/String; = "UTF-8"

.field private static es:I = 0x0

.field private static et:I = 0x1

.field private static eu:I = 0x2

.field private static ev:I = 0x3

.field private static ew:I = 0x4

.field private static ex:I = 0x5

.field private static ey:I = 0x6

.field private static ez:I = 0x1000


# instance fields
.field private eB:Ljava/lang/String;

.field private eC:Z

.field private eD:Ljava/net/URI;

.field private eE:[Lorg/apache/http/Header;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jy/func/w/c;->eB:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/jy/func/w/c;->eD:Ljava/net/URI;

    .line 40
    iput-object v3, p0, Lcom/jy/func/w/c;->eE:[Lorg/apache/http/Header;

    .line 96
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "AsyncHttpResponseHandler"

    const-string v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Lcom/jy/func/w/c$a;

    invoke-direct {v1, p0}, Lcom/jy/func/w/c$a;-><init>(Lcom/jy/func/w/c;)V

    iput-object v1, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/jy/func/w/c;->eC:Z

    .line 97
    return-void

    .line 96
    :cond_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/jy/func/w/c;->eC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jy/func/w/c;->handleMessage(Landroid/os/Message;)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static d(II)V
    .locals 8
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 101
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x2

    if-lez p1, :cond_0

    int-to-double v0, p0

    int-to-double v6, p1

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4059

    mul-double/2addr v0, v6

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 101
    :cond_0
    const-wide/high16 v0, -0x4010

    goto :goto_0
.end method

.method private static l(I)V
    .locals 5
    .parameter "retryNo"

    .prologue
    .line 118
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request retry no. %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "responseMessageId"
    .parameter "responseMessageData"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 228
    iput p1, v0, Landroid/os/Message;->what:I

    .line 229
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 232
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method private static onCancel()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request got cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private static onFinish()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method private static onStart()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method


# virtual methods
.method public abstract a(I[Lorg/apache/http/Header;[B)V
.end method

.method public abstract a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/jy/func/w/c;->eC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/net/URI;)V
    .locals 0
    .parameter "requestURI"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jy/func/w/c;->eD:Ljava/net/URI;

    .line 55
    return-void
.end method

.method public a(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 243
    .local v1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jy/func/w/c;->b(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 245
    .local v0, responseBody:[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 247
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

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/jy/func/w/c;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 251
    .end local v0           #responseBody:[B
    .end local v1           #status:Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local v0       #responseBody:[B
    .restart local v1       #status:Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/jy/func/w/c;->b(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final a([Lorg/apache/http/Header;)V
    .locals 0
    .parameter "requestHeaders"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jy/func/w/c;->eE:[Lorg/apache/http/Header;

    .line 60
    return-void
.end method

.method public final b(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public final b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "throwable"

    .prologue
    const/4 v3, 0x1

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 135
    return-void
.end method

.method b(Lorg/apache/http/HttpEntity;)[B
    .locals 13
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    const/16 v1, 0x1000

    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, responseBody:[B
    if-eqz p1, :cond_2

    .line 258
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 259
    .local v5, instream:Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 260
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 261
    .local v2, contentLength:J
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v2, v9

    if-lez v9, :cond_0

    .line 262
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "HTTP entity too large to be buffered in memory"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 264
    :cond_0
    cmp-long v9, v2, v11

    if-gtz v9, :cond_3

    .line 266
    .local v1, buffersize:I
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .local v0, buffer:Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v9, 0x1000

    :try_start_1
    new-array v8, v9, [B

    .line 269
    .local v8, tmp:[B
    const/4 v4, 0x0

    .line 271
    .local v4, count:I
    :goto_1
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, l:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 277
    :cond_1
    :try_start_2
    invoke-static {v5}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 278
    invoke-static {p1}, Lcom/jy/func/w/a;->a(Lorg/apache/http/HttpEntity;)V

    .line 280
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 287
    .end local v0           #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #buffersize:I
    .end local v2           #contentLength:J
    .end local v4           #count:I
    .end local v5           #instream:Ljava/io/InputStream;
    .end local v6           #l:I
    .end local v7           #responseBody:[B
    .end local v8           #tmp:[B
    :cond_2
    return-object v7

    .line 264
    .restart local v2       #contentLength:J
    .restart local v5       #instream:Ljava/io/InputStream;
    .restart local v7       #responseBody:[B
    :cond_3
    long-to-int v1, v2

    goto :goto_0

    .line 272
    .restart local v0       #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #buffersize:I
    .restart local v4       #count:I
    .restart local v6       #l:I
    .restart local v8       #tmp:[B
    :cond_4
    add-int/2addr v4, v6

    .line 273
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v0, v8, v9, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 274
    cmp-long v9, v2, v11

    if-gtz v9, :cond_5

    const-wide/16 v9, 0x1

    :goto_2
    long-to-int v9, v9

    invoke-virtual {p0, v4, v9}, Lcom/jy/func/w/c;->e(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 276
    .end local v4           #count:I
    .end local v6           #l:I
    .end local v8           #tmp:[B
    :catchall_0
    move-exception v0

    .line 277
    :try_start_4
    invoke-static {v5}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 278
    invoke-static {p1}, Lcom/jy/func/w/a;->a(Lorg/apache/http/HttpEntity;)V

    .line 279
    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 282
    .end local v0           #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v9

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 283
    new-instance v9, Ljava/io/IOException;

    const-string v10, "File too large to fit into available memory"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .restart local v0       #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4       #count:I
    .restart local v6       #l:I
    .restart local v8       #tmp:[B
    :cond_5
    move-wide v9, v2

    .line 274
    goto :goto_2
.end method

.method public final df()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jy/func/w/c;->eE:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public final dg()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jy/func/w/c;->eC:Z

    return v0
.end method

.method public final dh()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public final di()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 143
    return-void
.end method

.method public final dj()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method public final e(II)V
    .locals 4
    .parameter "bytesWritten"
    .parameter "bytesTotal"

    .prologue
    .line 126
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 127
    return-void
.end method

.method public final e(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const/4 p1, 0x1

    .line 71
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Lcom/jy/func/w/c$a;

    invoke-direct {v0, p0}, Lcom/jy/func/w/c$a;-><init>(Lcom/jy/func/w/c;)V

    iput-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    .line 82
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/jy/func/w/c;->eC:Z

    .line 83
    return-void

    .line 77
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jy/func/w/c;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public final getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jy/func/w/c;->eB:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jy/func/w/c;->eB:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jy/func/w/c;->eD:Ljava/net/URI;

    return-object v0
.end method

.method protected final handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 159
    .local v0, response:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, v4, :cond_0

    .line 160
    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v0, v7

    check-cast v2, [Lorg/apache/http/Header;

    aget-object v3, v0, v8

    check-cast v3, [B

    invoke-virtual {p0, v4, v2, v3}, Lcom/jy/func/w/c;->a(I[Lorg/apache/http/Header;[B)V

    goto :goto_0

    .line 162
    :cond_0
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 167
    .restart local v0       #response:[Ljava/lang/Object;
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 168
    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v0, v7

    check-cast v2, [Lorg/apache/http/Header;

    aget-object v3, v0, v8

    check-cast v3, [B

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/jy/func/w/c;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :cond_1
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 181
    .restart local v0       #response:[Ljava/lang/Object;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lt v2, v8, :cond_3

    .line 183
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "AsyncHttpResponseHandler"

    const-string v5, "Progress %d from %d (%2.0f%%)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    if-lez v2, :cond_2

    int-to-double v8, v3

    int-to-double v2, v2

    div-double v2, v8, v2

    const-wide/high16 v8, 0x4059

    mul-double/2addr v2, v8

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "custom onProgress contains an error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 183
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    const-wide/high16 v2, -0x4010

    goto :goto_1

    .line 188
    :cond_3
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 193
    .restart local v0       #response:[Ljava/lang/Object;
    if-eqz v0, :cond_4

    array-length v2, v0

    if-ne v2, v7, :cond_4

    .line 194
    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "AsyncHttpResponseHandler"

    const-string v4, "Request retry no. %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_4
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "RETRY_MESSAGE didn\'t get enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_5
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "Request got cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final m(I)V
    .locals 4
    .parameter "retryNo"

    .prologue
    .line 146
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/jy/func/w/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/c;->a(Landroid/os/Message;)V

    .line 147
    return-void
.end method

.method public final setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jy/func/w/c;->eB:Ljava/lang/String;

    .line 88
    return-void
.end method
