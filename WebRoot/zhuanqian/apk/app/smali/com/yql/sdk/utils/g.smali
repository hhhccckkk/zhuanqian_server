.class final Lcom/yql/sdk/utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/zip/ZipFile;

.field private c:Ljava/util/zip/ZipEntry;

.field private d:Landroid/content/Context;

.field private e:J

.field private synthetic f:Lcom/yql/sdk/utils/f;


# direct methods
.method constructor <init>(Lcom/yql/sdk/utils/f;Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yql/sdk/utils/g;->b:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lcom/yql/sdk/utils/g;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/yql/sdk/utils/g;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/utils/g;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/yql/sdk/utils/g;->e:J

    return-void
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 1

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x400

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/yql/sdk/utils/g;->b:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/yql/sdk/utils/g;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/yql/sdk/utils/f;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yql/sdk/utils/g;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, v1}, Lcom/yql/sdk/utils/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/yql/sdk/utils/g;->b:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez v2, :cond_3

    move v0, v1

    :cond_2
    :goto_1
    new-array v4, v0, [B

    :goto_2
    invoke-virtual {v2, v4, v1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v0, 0x400

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/yql/sdk/utils/g;->b:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/yql/sdk/utils/g;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/yql/sdk/utils/f;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yql/sdk/utils/g;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, v1}, Lcom/yql/sdk/utils/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/yql/sdk/utils/g;->b:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    iget-object v0, p0, Lcom/yql/sdk/utils/g;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/yql/sdk/utils/g;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/yql/sdk/utils/g;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/yql/sdk/utils/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/yql/sdk/utils/f;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copy so lib success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yql/sdk/utils/g;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/yql/sdk/utils/f;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copy so lib failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
