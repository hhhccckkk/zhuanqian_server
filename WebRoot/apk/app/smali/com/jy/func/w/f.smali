.class public final Lcom/jy/func/w/f;
.super Ljava/io/FilterOutputStream;
.source "CYZBase64OutputStream.java"


# static fields
.field private static EMPTY:[B


# instance fields
.field private buffer:[B

.field private final eY:Lcom/jy/func/w/d$a;

.field private eZ:I

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jy/func/w/f;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .parameter "out"
    .parameter

    .prologue
    .line 21
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/jy/func/w/f;-><init>(Ljava/io/OutputStream;IZ)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2
    .parameter "out"
    .parameter "flags"
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    iput-object v1, p0, Lcom/jy/func/w/f;->buffer:[B

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/jy/func/w/f;->eZ:I

    .line 27
    iput p2, p0, Lcom/jy/func/w/f;->flags:I

    .line 28
    new-instance v0, Lcom/jy/func/w/d$c;

    invoke-direct {v0, p2, v1}, Lcom/jy/func/w/d$c;-><init>(I[B)V

    iput-object v0, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    .line 31
    return-void
.end method

.method private static a([BI)[B
    .locals 1
    .parameter "b"
    .parameter "len"

    .prologue
    .line 102
    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 103
    :cond_0
    new-array p0, p1, [B

    .line 105
    .end local p0
    :cond_1
    return-object p0
.end method

.method private b([BIIZ)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .parameter "finish"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    iget-object v0, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    iget-object v0, v0, Lcom/jy/func/w/d$a;->eI:[B

    iget-object v2, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    invoke-virtual {v2, p3}, Lcom/jy/func/w/d$a;->n(I)I

    move-result v2

    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v3, v2, :cond_1

    :cond_0
    new-array v0, v2, [B

    :cond_1
    iput-object v0, v1, Lcom/jy/func/w/d$a;->eI:[B

    .line 94
    iget-object v0, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jy/func/w/d$a;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/jy/func/w/e;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Lcom/jy/func/w/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/jy/func/w/f;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    iget-object v1, v1, Lcom/jy/func/w/d$a;->eI:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jy/func/w/f;->eY:Lcom/jy/func/w/d$a;

    iget v3, v3, Lcom/jy/func/w/d$a;->eJ:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    return-void
.end method

.method private flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lcom/jy/func/w/f;->eZ:I

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/jy/func/w/f;->buffer:[B

    iget v1, p0, Lcom/jy/func/w/f;->eZ:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/jy/func/w/f;->b([BIIZ)V

    .line 53
    iput v2, p0, Lcom/jy/func/w/f;->eZ:I

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, thrown:Ljava/io/IOException;
    :try_start_0
    invoke-direct {p0}, Lcom/jy/func/w/f;->flushBuffer()V

    .line 69
    sget-object v2, Lcom/jy/func/w/f;->EMPTY:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/jy/func/w/f;->b([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/jy/func/w/f;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/jy/func/w/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 87
    throw v1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    goto :goto_0

    .line 78
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/jy/func/w/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    goto :goto_1

    .line 88
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public final write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/jy/func/w/f;->buffer:[B

    if-nez v0, :cond_0

    .line 38
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jy/func/w/f;->buffer:[B

    .line 40
    :cond_0
    iget v0, p0, Lcom/jy/func/w/f;->eZ:I

    iget-object v1, p0, Lcom/jy/func/w/f;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/jy/func/w/f;->buffer:[B

    iget v1, p0, Lcom/jy/func/w/f;->eZ:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/jy/func/w/f;->b([BIIZ)V

    .line 43
    iput v2, p0, Lcom/jy/func/w/f;->eZ:I

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/jy/func/w/f;->buffer:[B

    iget v1, p0, Lcom/jy/func/w/f;->eZ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jy/func/w/f;->eZ:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 46
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    if-gtz p3, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/jy/func/w/f;->flushBuffer()V

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jy/func/w/f;->b([BIIZ)V

    goto :goto_0
.end method
