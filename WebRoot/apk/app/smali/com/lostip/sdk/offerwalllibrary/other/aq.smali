.class Lcom/lostip/sdk/offerwalllibrary/other/aq;
.super Lcom/lostip/sdk/offerwalllibrary/other/aj;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method private constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;)V
    .locals 1

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;Lcom/lostip/sdk/offerwalllibrary/other/aq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;JLandroid/content/Context;Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/ap;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/lostip/sdk/offerwalllibrary/other/an;

    new-instance v23, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual/range {p2 .. p2}, Lcom/lostip/sdk/offerwalllibrary/other/ar;->length()J

    move-result-wide v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Lcom/lostip/sdk/offerwalllibrary/other/ar;->seek(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->d(Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x2

    aput-object p6, v2, v3

    const/4 v3, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    const/16 v2, 0x2000

    new-array v0, v2, [B

    move-object/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v2, 0x0

    const/16 v22, 0x0

    move-wide/from16 v18, v5

    move-wide v11, v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/lostip/sdk/offerwalllibrary/other/ar;->a()Z

    move-result v4

    if-nez v4, :cond_0

    move/from16 v2, v22

    :goto_1
    new-instance v3, Lcom/lostip/sdk/offerwalllibrary/other/ap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-direct {v3, v4, v7, v8, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ap;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;JZ)V

    return-object v3

    :cond_0
    if-eqz v15, :cond_2

    iget v4, v15, Lcom/lostip/sdk/offerwalllibrary/other/an;->b:I

    :goto_2
    const/4 v9, 0x5

    if-eq v4, v9, :cond_1

    const/4 v9, 0x6

    if-ne v4, v9, :cond_3

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->hashCode()I

    move-result v5

    move-object/from16 v0, p5

    invoke-static {v3, v0, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p5, v3, v5

    const/4 v5, 0x2

    aput-object p6, v3, v5

    const/4 v5, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x2

    aput-object p6, v3, v4

    const/4 v4, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {p2 .. p2}, Lcom/lostip/sdk/offerwalllibrary/other/ar;->b()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const/16 v9, 0x2000

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9, v4}, Lcom/lostip/sdk/offerwalllibrary/other/ar;->write([BII)V

    int-to-long v9, v4

    add-long/2addr v7, v9

    int-to-long v9, v4

    add-long v16, v2, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-wide/from16 v9, p3

    invoke-direct/range {v2 .. v12}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Landroid/content/Context;Ljava/lang/String;JJJJ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    const/4 v14, 0x0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-wide/from16 v12, v18

    invoke-static/range {v9 .. v14}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_4
    const-wide/16 v9, 0x1

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v18, v2

    move-wide/from16 v11, v20

    move-wide/from16 v2, v16

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-wide/from16 v18, v2

    move-wide/from16 v11, v20

    move-wide/from16 v2, v16

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v2, v18

    goto :goto_4

    :cond_5
    move-wide/from16 v20, v11

    goto :goto_3

    :cond_6
    move/from16 v2, v22

    goto/16 :goto_1
.end method

.method private a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    :try_start_1
    invoke-virtual {p3}, Lcom/lostip/sdk/offerwalllibrary/other/ar;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JJJJ)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p9

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->g(Lcom/lostip/sdk/offerwalllibrary/other/ao;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v4}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->h(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    long-to-float v2, p5

    long-to-float v0, v0

    div-float v0, v2, v0

    const/high16 v1, 0x447a

    mul-float v2, v0, v1

    sub-long v0, p7, p5

    long-to-float v0, v0

    div-float/2addr v0, v2

    float-to-long v0, v0

    :cond_0
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p0, v4}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    move v0, v3

    :cond_1
    return v0
.end method

.method private b()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method private c()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized d()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v1, "com.bodong.download"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "http.connection.timeout"

    const/16 v2, 0x4e20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x4e20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x0

    aget-object v5, p1, v0

    check-cast v5, Landroid/content/Context;

    const/4 v0, 0x1

    aget-object v6, p1, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-virtual {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    new-instance v10, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    if-eqz v4, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->d()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v11

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v11, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-string v0, "Content-Range"

    invoke-interface {v8, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    :goto_3
    const-wide/16 v12, -0x1

    cmp-long v0, v3, v12

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v0, v5, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v2

    const/4 v2, 0x1

    aput-object v5, v0, v2

    const/4 v2, 0x2

    aput-object v6, v0, v2

    const/4 v2, 0x3

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v2

    const/4 v2, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown totalSize="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    :cond_1
    :try_start_2
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    goto :goto_3

    :cond_2
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_3

    const-wide/16 v12, -0x1

    cmp-long v0, v3, v12

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v0, v5, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v5, v0, v2

    const/4 v2, 0x2

    aput-object v6, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "file position over range"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b()J

    move-result-wide v12

    cmp-long v0, v3, v12

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v0, v5, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v5, v0, v2

    const/4 v2, 0x2

    aput-object v6, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "not enough space"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_5
    :try_start_4
    new-instance v2, Lcom/lostip/sdk/offerwalllibrary/other/ar;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-direct {v2, v0, v10}, Lcom/lostip/sdk/offerwalllibrary/other/ar;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    move-object v0, p0

    :try_start_6
    invoke-direct/range {v0 .. v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;JLandroid/content/Context;Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/ap;

    move-result-object v0

    iget-wide v7, v0, Lcom/lostip/sdk/offerwalllibrary/other/ap;->a:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_7

    const-wide/16 v12, -0x1

    cmp-long v9, v3, v12

    if-eqz v9, :cond_7

    iget-boolean v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/ap;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v5, v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v3, 0x2

    aput-object v6, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "unreadable file block"

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_6
    invoke-direct {p0, v11, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x7

    :try_start_7
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v9

    const/4 v9, 0x1

    aput-object v5, v0, v9

    const/4 v9, 0x2

    aput-object v6, v0, v9

    const/4 v9, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v9

    const/4 v7, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;Ljava/lang/String;JZ)Z

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v4

    const/4 v4, 0x1

    aput-object v5, v0, v4

    const/4 v4, 0x2

    aput-object v6, v0, v4

    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0, v5, v6}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_6

    :catch_1
    move-exception v0

    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-direct {p0, v11, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v0, :cond_d

    iget v3, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    iget-object v4, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v4}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->c(Lcom/lostip/sdk/offerwalllibrary/other/ao;)I

    move-result v4

    if-ge v3, v4, :cond_b

    iget v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->d(Lcom/lostip/sdk/offerwalllibrary/other/ao;)I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    :goto_a
    const/4 v1, 0x3

    :try_start_b
    iget v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v5, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v5, v1, v3

    const/4 v3, 0x2

    aput-object v6, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "Network disconnected!"

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V

    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_a
    :goto_b
    invoke-direct {p0, v11, v7, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    goto/16 :goto_7

    :cond_b
    :try_start_c
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v5, v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_c
    const/4 v1, 0x6

    const-string v0, "Network disconnected!"

    :goto_c
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    :goto_d
    invoke-direct {p0, v11, v7, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    throw v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v5, v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    const/4 v1, 0x6

    const-string v0, "Network disconnected!"

    :goto_e
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    :goto_f
    :try_start_e
    invoke-direct {p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->c(Ljava/lang/String;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b([Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-direct {p0, v11, v7, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/io/InputStream;Lcom/lostip/sdk/offerwalllibrary/other/ar;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    goto :goto_f

    :catch_6
    move-exception v1

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_8

    :catch_a
    move-exception v0

    move-object v1, v7

    goto/16 :goto_8

    :cond_f
    move v1, v3

    goto :goto_e

    :cond_10
    move v1, v3

    goto/16 :goto_c

    :cond_11
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    aget-object v0, p2, v1

    check-cast v0, Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v1, :cond_0

    const/16 v2, 0x66

    iput v2, v1, Lcom/lostip/sdk/offerwalllibrary/other/an;->b:I

    :cond_0
    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->f(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-super {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v0, p2, v1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v1, :cond_0

    const/16 v2, 0x65

    iput v2, v1, Lcom/lostip/sdk/offerwalllibrary/other/an;->b:I

    :cond_0
    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->f(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs c([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v0}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a()V

    goto :goto_0
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d([Ljava/lang/Object;)V

    aget-object v0, p1, v13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v6

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    move v0, v13

    :goto_0
    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->f(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Landroid/content/Context;)V

    :cond_0
    return-void

    :pswitch_0
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, p1, v7

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v3, v1, v2, v4, v0}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v13

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v3, v1, v2, v0}, Lcom/lostip/sdk/offerwalllibrary/other/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v0, p1, v7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v0, 0x5

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v0, 0x6

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-float v0, v5

    long-to-float v3, v7

    div-float/2addr v0, v3

    const/high16 v3, 0x42c8

    mul-float v4, v0, v3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/an;

    move-result-object v0

    if-eqz v0, :cond_a

    iput v4, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->g:F

    iput v9, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    iput-wide v10, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->i:J

    iget-object v3, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v13

    goto/16 :goto_0

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface/range {v0 .. v11}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FJJFJ)V

    goto :goto_4

    :pswitch_3
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aget-object v0, p1, v7

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :goto_5
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    goto/16 :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface/range {v0 .. v5}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_6

    :pswitch_4
    aget-object v0, p1, v7

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v6

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/lostip/sdk/offerwalllibrary/other/as;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_5
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v3, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/an;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v12, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    :cond_6
    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v3}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v6

    goto/16 :goto_0

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v3, v1, v2, v12, v0}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_6
    move v0, v6

    goto/16 :goto_0

    :pswitch_7
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v0, v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_9

    :cond_9
    move-object v5, v12

    goto/16 :goto_5

    :cond_a
    move-object v3, v12

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
