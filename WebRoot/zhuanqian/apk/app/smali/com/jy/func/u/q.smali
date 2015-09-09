.class public final Lcom/jy/func/u/q;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(II)Z
    .locals 5
    .parameter "a"
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const/16 v2, 0x1a

    if-ltz p0, :cond_0

    if-le p0, v2, :cond_1

    move v3, v2

    move v2, p0

    :goto_0
    if-nez v3, :cond_3

    move v2, v1

    :goto_1
    if-ne v2, v0, :cond_4

    .line 32
    :goto_2
    return v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot compute the GCD if one integer is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, p0

    goto :goto_0

    :cond_2
    rem-int/2addr v2, v3

    move v4, v3

    move v3, v2

    move v2, v4

    :cond_3
    if-nez v3, :cond_2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 32
    goto :goto_2
.end method

.method private static b(II)I
    .locals 6
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    .line 42
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot compute the GCD if one integer is negative."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_1
    if-le p0, p1, :cond_2

    .line 48
    move v0, p0

    .line 49
    .local v0, a:I
    move v1, p1

    .line 55
    .local v1, b:I
    :goto_0
    if-nez v1, :cond_3

    const/4 v4, 0x0

    .line 63
    :goto_1
    return v4

    .line 51
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_2
    move v0, p1

    .line 52
    .restart local v0       #a:I
    move v1, p0

    .restart local v1       #b:I
    goto :goto_0

    .line 57
    :cond_3
    move v2, v1

    .line 58
    .local v2, g:I
    :goto_2
    if-nez v2, :cond_4

    move v4, v0

    .line 63
    goto :goto_1

    .line 59
    :cond_4
    rem-int v3, v0, v2

    .line 60
    .local v3, z:I
    move v0, v2

    .line 61
    move v2, v3

    goto :goto_2
.end method

.method public static final j(I)I
    .locals 3
    .parameter "a"

    .prologue
    .line 20
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1a

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method
