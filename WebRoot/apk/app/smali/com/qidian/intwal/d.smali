.class public Lcom/qidian/intwal/d;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:[J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[Lcom/qidian/intwal/e;

.field private g:I

.field private h:Lcom/qidian/intwal/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/qidian/intwal/h;[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/qidian/intwal/d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/qidian/intwal/d;->e:I

    new-array v0, p4, [Lcom/qidian/intwal/e;

    iput-object v0, p0, Lcom/qidian/intwal/d;->f:[Lcom/qidian/intwal/e;

    iput-object p3, p0, Lcom/qidian/intwal/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    iput-object p1, p0, Lcom/qidian/intwal/d;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/qidian/intwal/d;->b:[J

    return-void
.end method

.method static synthetic a(Lcom/qidian/intwal/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/qidian/intwal/d;)I
    .locals 1

    iget v0, p0, Lcom/qidian/intwal/d;->e:I

    return v0
.end method

.method static synthetic c(Lcom/qidian/intwal/d;)Lcom/qidian/intwal/h;
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    iget v0, v0, Lcom/qidian/intwal/h;->c:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    invoke-virtual {v0, v2}, Lcom/qidian/intwal/h;->a(I)V

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/qidian/intwal/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lcom/qidian/intwal/d;->g:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownUtil.62.filesize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qidian/intwal/d;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    iget v3, p0, Lcom/qidian/intwal/d;->g:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/qidian/intwal/h;->a:J

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v0, "DownUtil.55.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/qidian/intwal/d;->d:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownUtil.58.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    const-string v0, "DownUtil.61.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/qidian/intwal/d;->g:I

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-string v0, "DownUtil.63.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/qidian/intwal/d;->e:I

    if-lt v0, v3, :cond_2

    :cond_1
    const-string v0, "DownUtil.76.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const-string v0, "DownUtil.78.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/qidian/intwal/d;->g:I

    iget v2, p0, Lcom/qidian/intwal/d;->e:I

    div-int/2addr v0, v2

    int-to-long v4, v0

    move v7, v1

    :goto_1
    iget v0, p0, Lcom/qidian/intwal/d;->e:I

    if-lt v7, v0, :cond_3

    return-void

    :cond_2
    const-string v3, "DownUtil.67.filesize="

    invoke-static {v3}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qidian/intwal/d;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    iget-object v5, v5, Lcom/qidian/intwal/h;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/qidian/intwal/Utils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DownUtil.69.filesize="

    invoke-static {v3}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "DownUtil.84.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    int-to-long v0, v7

    mul-long/2addr v0, v4

    iget-object v2, p0, Lcom/qidian/intwal/d;->b:[J

    aget-wide v2, v2, v7

    add-long/2addr v2, v0

    iget v0, p0, Lcom/qidian/intwal/d;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_4

    iget v0, p0, Lcom/qidian/intwal/d;->g:I

    int-to-long v0, v0

    sub-long v4, v0, v2

    :cond_4
    const-string v0, "DownUtil.91.filesize="

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/qidian/intwal/d;->d:Ljava/lang/String;

    const-string v1, "rw"

    invoke-direct {v6, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v10, p0, Lcom/qidian/intwal/d;->f:[Lcom/qidian/intwal/e;

    new-instance v0, Lcom/qidian/intwal/e;

    iget-object v1, p0, Lcom/qidian/intwal/d;->b:[J

    aget-wide v8, v1, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/qidian/intwal/e;-><init>(Lcom/qidian/intwal/d;JJLjava/io/RandomAccessFile;IJ)V

    aput-object v0, v10, v7

    iget-object v0, p0, Lcom/qidian/intwal/d;->f:[Lcom/qidian/intwal/e;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/qidian/intwal/e;->start()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public b()D
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/qidian/intwal/d;->e:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/d;->h:Lcom/qidian/intwal/h;

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/qidian/intwal/h;->b:J

    int-to-double v0, v1

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/qidian/intwal/d;->g:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/qidian/intwal/d;->f:[Lcom/qidian/intwal/e;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-long v1, v1

    iget-object v3, p0, Lcom/qidian/intwal/d;->f:[Lcom/qidian/intwal/e;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/qidian/intwal/e;->a:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_1
.end method
