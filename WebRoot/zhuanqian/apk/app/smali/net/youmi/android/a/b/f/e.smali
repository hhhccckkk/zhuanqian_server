.class public Lnet/youmi/android/a/b/f/e;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->b:I

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    array-length v0, v0

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->c:I

    iput v1, p0, Lnet/youmi/android/a/b/f/e;->d:I

    iput v1, p0, Lnet/youmi/android/a/b/f/e;->e:I

    return-void
.end method

.method private c(I)V
    .locals 2

    invoke-virtual {p0}, Lnet/youmi/android/a/b/f/e;->b()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->b:I

    return v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    array-length v0, v0

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->c:I

    return-void
.end method

.method public a([BII)V
    .locals 2

    invoke-direct {p0, p3}, Lnet/youmi/android/a/b/f/e;->c(I)V

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->b:I

    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->c:I

    iget v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(I)[B
    .locals 4

    invoke-direct {p0, p1}, Lnet/youmi/android/a/b/f/e;->c(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v2, p0, Lnet/youmi/android/a/b/f/e;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    return-object v0
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->b:I

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->d:I

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->c:I

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->e:I

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->d:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lnet/youmi/android/a/b/f/e;->d:I

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->b:I

    iget v0, p0, Lnet/youmi/android/a/b/f/e;->e:I

    iput v0, p0, Lnet/youmi/android/a/b/f/e;->c:I

    iput v1, p0, Lnet/youmi/android/a/b/f/e;->d:I

    iput v1, p0, Lnet/youmi/android/a/b/f/e;->e:I

    return-void
.end method

.method public e()I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/f/e;->c(I)V

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public f()I
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/f/e;->c(I)V

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v2, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public g()J
    .locals 6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/f/e;->c(I)V

    iget-object v0, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v1, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v2, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v3, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lnet/youmi/android/a/b/f/e;->a:[B

    iget v4, p0, Lnet/youmi/android/a/b/f/e;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/youmi/android/a/b/f/e;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    shl-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    add-long/2addr v0, v4

    shl-int/lit8 v2, v2, 0x8

    int-to-long v4, v2

    add-long/2addr v0, v4

    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method
