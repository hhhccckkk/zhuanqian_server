.class Lcom/qidian/intwal/e;
.super Ljava/lang/Thread;


# instance fields
.field public a:J

.field public b:I

.field final synthetic c:Lcom/qidian/intwal/d;

.field private d:J

.field private e:J

.field private f:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/qidian/intwal/d;JJLjava/io/RandomAccessFile;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide p2, p0, Lcom/qidian/intwal/e;->d:J

    iput-wide p4, p0, Lcom/qidian/intwal/e;->e:J

    iput-object p6, p0, Lcom/qidian/intwal/e;->f:Ljava/io/RandomAccessFile;

    iput p7, p0, Lcom/qidian/intwal/e;->b:I

    iput-wide p8, p0, Lcom/qidian/intwal/e;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    invoke-static {v1}, Lcom/qidian/intwal/d;->a(Lcom/qidian/intwal/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/qidian/intwal/e;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qidian/intwal/e;->b:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/qidian/intwal/e;->e:J

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/qidian/intwal/e;->b:I

    iget-object v3, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    invoke-static {v3}, Lcom/qidian/intwal/d;->b(Lcom/qidian/intwal/d;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/qidian/intwal/e;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const-string v3, "11"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/qidian/intwal/e;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    invoke-static {v4}, Lcom/qidian/intwal/d;->c(Lcom/qidian/intwal/d;)Lcom/qidian/intwal/h;

    move-result-object v4

    iget v4, v4, Lcom/qidian/intwal/h;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/qidian/intwal/e;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    iget-object v0, v0, Lcom/qidian/intwal/d;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    invoke-static {v2}, Lcom/qidian/intwal/d;->c(Lcom/qidian/intwal/d;)Lcom/qidian/intwal/h;

    move-result-object v2

    iget-object v2, v2, Lcom/qidian/intwal/h;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qidian/intwal/e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qidian/intwal/e;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qidian/intwal/Utils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/qidian/intwal/e;->c:Lcom/qidian/intwal/d;

    invoke-static {v1}, Lcom/qidian/intwal/d;->c(Lcom/qidian/intwal/d;)Lcom/qidian/intwal/h;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/qidian/intwal/h;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/qidian/intwal/e;->f:Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v4, p0, Lcom/qidian/intwal/e;->a:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, p0, Lcom/qidian/intwal/e;->a:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
