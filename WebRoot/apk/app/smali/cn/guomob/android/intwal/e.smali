.class public Lcn/guomob/android/intwal/e;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:[J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[Lcn/guomob/android/intwal/f;

.field private g:I

.field private h:Lcn/guomob/android/intwal/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcn/guomob/android/intwal/q;[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/guomob/android/intwal/e;->c:Ljava/lang/String;

    iput p4, p0, Lcn/guomob/android/intwal/e;->e:I

    new-array v0, p4, [Lcn/guomob/android/intwal/f;

    iput-object v0, p0, Lcn/guomob/android/intwal/e;->f:[Lcn/guomob/android/intwal/f;

    iput-object p3, p0, Lcn/guomob/android/intwal/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    iput-object p1, p0, Lcn/guomob/android/intwal/e;->a:Landroid/content/Context;

    iput-object p6, p0, Lcn/guomob/android/intwal/e;->b:[J

    return-void
.end method

.method static synthetic a(Lcn/guomob/android/intwal/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/guomob/android/intwal/e;)I
    .locals 1

    iget v0, p0, Lcn/guomob/android/intwal/e;->e:I

    return v0
.end method

.method static synthetic c(Lcn/guomob/android/intwal/e;)Lcn/guomob/android/intwal/q;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    iget v0, v0, Lcn/guomob/android/intwal/q;->c:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0, v2}, Lcn/guomob/android/intwal/q;->a(I)V

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcn/guomob/android/intwal/e;->c:Ljava/lang/String;

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

    iput v2, p0, Lcn/guomob/android/intwal/e;->g:I

    iget-object v2, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    iget v3, p0, Lcn/guomob/android/intwal/e;->g:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcn/guomob/android/intwal/q;->a:J

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->d:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iget v0, p0, Lcn/guomob/android/intwal/e;->g:I

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    move v0, v1

    :goto_0
    iget v3, p0, Lcn/guomob/android/intwal/e;->e:I

    if-lt v0, v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    iget v0, p0, Lcn/guomob/android/intwal/e;->g:I

    iget v2, p0, Lcn/guomob/android/intwal/e;->e:I

    div-int/2addr v0, v2

    int-to-long v4, v0

    move v7, v1

    :goto_1
    iget v0, p0, Lcn/guomob/android/intwal/e;->e:I

    if-lt v7, v0, :cond_3

    return-void

    :cond_2
    iget-object v3, p0, Lcn/guomob/android/intwal/e;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    iget-object v5, v5, Lcn/guomob/android/intwal/q;->d:Ljava/lang/String;

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

    invoke-static {v3, v4, v5}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-long v0, v7

    mul-long/2addr v0, v4

    iget-object v2, p0, Lcn/guomob/android/intwal/e;->b:[J

    aget-wide v2, v2, v7

    add-long/2addr v2, v0

    iget v0, p0, Lcn/guomob/android/intwal/e;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_4

    iget v0, p0, Lcn/guomob/android/intwal/e;->g:I

    int-to-long v0, v0

    sub-long v4, v0, v2

    :cond_4
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->d:Ljava/lang/String;

    const-string v1, "rw"

    invoke-direct {v6, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v10, p0, Lcn/guomob/android/intwal/e;->f:[Lcn/guomob/android/intwal/f;

    new-instance v0, Lcn/guomob/android/intwal/f;

    iget-object v1, p0, Lcn/guomob/android/intwal/e;->b:[J

    aget-wide v8, v1, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcn/guomob/android/intwal/f;-><init>(Lcn/guomob/android/intwal/e;JJLjava/io/RandomAccessFile;IJ)V

    aput-object v0, v10, v7

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->f:[Lcn/guomob/android/intwal/f;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcn/guomob/android/intwal/f;->start()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public b()D
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcn/guomob/android/intwal/e;->e:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/e;->h:Lcn/guomob/android/intwal/q;

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/guomob/android/intwal/q;->b:J

    int-to-double v0, v1

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    iget v2, p0, Lcn/guomob/android/intwal/e;->g:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcn/guomob/android/intwal/e;->f:[Lcn/guomob/android/intwal/f;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-long v1, v1

    iget-object v3, p0, Lcn/guomob/android/intwal/e;->f:[Lcn/guomob/android/intwal/f;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcn/guomob/android/intwal/f;->a:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_1
.end method
