.class public Lnet/youmi/android/a/b/k/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Lnet/youmi/android/a/b/k/a/a;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lnet/youmi/android/a/b/k/a/a;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/a/b/k/b/a;->a:Ljava/io/File;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lnet/youmi/android/a/b/k/b/a;->b:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    iput-boolean p4, p0, Lnet/youmi/android/a/b/k/b/a;->d:Z

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/a/b/k/b/a;)Lnet/youmi/android/a/b/k/a/a;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-boolean v0, p0, Lnet/youmi/android/a/b/k/b/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0, p1}, Lnet/youmi/android/a/b/k/a/a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0, p1}, Lnet/youmi/android/a/b/k/a/a;->a(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->a()Lnet/youmi/android/a/b/k/m;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/a/b/k/b/c;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/a/b/k/b/c;-><init>(Lnet/youmi/android/a/b/k/b/a;I)V

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/k/m;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    iget-boolean v0, p0, Lnet/youmi/android/a/b/k/b/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0, p1, p2}, Lnet/youmi/android/a/b/k/a/a;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0, p1, p2}, Lnet/youmi/android/a/b/k/a/a;->a(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->a()Lnet/youmi/android/a/b/k/m;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/a/b/k/b/d;

    invoke-direct {v1, p0, p1, p2}, Lnet/youmi/android/a/b/k/b/d;-><init>(Lnet/youmi/android/a/b/k/b/a;II)V

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/k/m;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lnet/youmi/android/a/b/k/b/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0}, Lnet/youmi/android/a/b/k/a/a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0}, Lnet/youmi/android/a/b/k/a/a;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->a()Lnet/youmi/android/a/b/k/m;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/a/b/k/b/b;

    invoke-direct {v1, p0}, Lnet/youmi/android/a/b/k/b/b;-><init>(Lnet/youmi/android/a/b/k/b/a;)V

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/k/m;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lnet/youmi/android/a/b/k/b/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0}, Lnet/youmi/android/a/b/k/a/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->c:Lnet/youmi/android/a/b/k/a/a;

    invoke-interface {v0}, Lnet/youmi/android/a/b/k/a/a;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/youmi/android/a/b/k/m;->a()Lnet/youmi/android/a/b/k/m;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/a/b/k/b/e;

    invoke-direct {v1, p0}, Lnet/youmi/android/a/b/k/b/e;-><init>(Lnet/youmi/android/a/b/k/b/a;)V

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/k/m;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 14

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/a/b/k/b/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/youmi/android/a/b/k/h;->a(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lnet/youmi/android/a/b/k/b/a;->a:Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    move-result v0

    :try_start_2
    invoke-direct {p0}, Lnet/youmi/android/a/b/k/b/a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d

    move v4, v3

    move v1, v3

    move v7, v0

    :goto_0
    :try_start_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    add-int/lit8 v9, v4, 0x1

    mul-int/lit8 v4, v9, 0x64

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->size()I

    move-result v6

    div-int/2addr v4, v6

    invoke-direct {p0, v4}, Lnet/youmi/android/a/b/k/b/a;->a(I)V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "GBK"

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/io/File;

    iget-object v11, p0, Lnet/youmi/android/a/b/k/b/a;->b:Ljava/lang/String;

    invoke-direct {v6, v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-nez v0, :cond_10

    add-int/lit8 v1, v1, 0x1

    move v4, v9

    goto :goto_0

    :cond_0
    :try_start_4
    invoke-static {v6}, Lnet/youmi/android/a/b/k/h;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    :try_start_5
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v8, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    const/16 v0, 0x800

    :try_start_6
    new-array v0, v0, [B

    :goto_1
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v6, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    if-eqz v6, :cond_1

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_4
    move v4, v9

    move v1, v0

    goto/16 :goto_0

    :cond_3
    move-object v4, v5

    move-object v6, v5

    :cond_4
    if-eqz v6, :cond_5

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :cond_6
    move v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v6, v5

    :goto_6
    if-eqz v6, :cond_7

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    :cond_8
    :goto_8
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    move-exception v0

    move v0, v7

    move-object v5, v8

    :goto_9
    :try_start_e
    invoke-direct {p0}, Lnet/youmi/android/a/b/k/b/a;->c()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v5, :cond_9

    :try_start_f
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_9
    :goto_a
    move v0, v2

    :goto_b
    if-nez v0, :cond_e

    move v0, v2

    :goto_c
    return v0

    :cond_a
    if-eqz v8, :cond_b

    :try_start_10
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    :cond_b
    :goto_d
    invoke-direct {p0, v7, v1}, Lnet/youmi/android/a/b/k/b/a;->a(II)V

    if-lez v1, :cond_f

    move v0, v2

    goto :goto_b

    :catchall_1
    move-exception v0

    move v1, v3

    move v7, v3

    move-object v8, v5

    :goto_e
    if-eqz v8, :cond_c

    :try_start_11
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    :cond_c
    :goto_f
    if-nez v3, :cond_d

    invoke-direct {p0, v7, v1}, Lnet/youmi/android/a/b/k/b/a;->a(II)V

    if-lez v1, :cond_d

    :cond_d
    throw v0

    :cond_e
    move v0, v3

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v4

    goto :goto_7

    :catch_7
    move-exception v4

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v2

    goto :goto_f

    :catchall_2
    move-exception v0

    move v1, v3

    move v7, v3

    goto :goto_e

    :catchall_3
    move-exception v1

    move v7, v0

    move-object v0, v1

    move v1, v3

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v1

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    goto :goto_e

    :catchall_6
    move-exception v3

    move v7, v0

    move-object v8, v5

    move-object v0, v3

    move v3, v2

    goto :goto_e

    :catch_b
    move-exception v0

    move v1, v3

    move v0, v3

    goto :goto_9

    :catch_c
    move-exception v0

    move v1, v3

    move v0, v3

    move-object v5, v8

    goto :goto_9

    :catch_d
    move-exception v1

    move v1, v3

    move-object v5, v8

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v5, v4

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v4, v5

    move-object v6, v5

    goto/16 :goto_2

    :catch_f
    move-exception v0

    move-object v6, v5

    goto/16 :goto_2

    :cond_f
    move v0, v3

    goto :goto_b

    :cond_10
    move v4, v9

    goto/16 :goto_0

    :cond_11
    move v4, v3

    move v1, v3

    move v7, v3

    goto/16 :goto_0
.end method
