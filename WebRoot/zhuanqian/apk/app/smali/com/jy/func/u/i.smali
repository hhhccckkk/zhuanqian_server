.class public final Lcom/jy/func/u/i;
.super Ljava/lang/Object;
.source "CYZ_UrlPrase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "binStr"

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, tempStr:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [C

    .line 49
    .local v1, tempChar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 50
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v3, v5

    new-array v6, v3, [I

    move v3, v4

    :goto_1
    array-length v7, v5

    if-lt v3, v7, :cond_1

    move v3, v4

    move v5, v4

    :goto_2
    array-length v7, v6

    if-lt v3, v7, :cond_2

    int-to-char v3, v5

    aput-char v3, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    aget-char v7, v5, v3

    add-int/lit8 v7, v7, -0x30

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    aget v7, v6, v7

    shl-int/2addr v7, v3

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static G(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 56
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static H(Ljava/lang/String;)C
    .locals 6
    .parameter "binStr"

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v3, v4

    new-array v2, v3, [I

    const/4 v3, 0x0

    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 61
    .local v2, temp:[I
    const/4 v1, 0x0

    .line 62
    .local v1, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 65
    int-to-char v3, v1

    return v3

    .line 60
    .end local v0           #i:I
    .end local v1           #sum:I
    .end local v2           #temp:[I
    :cond_0
    aget-char v5, v4, v3

    add-int/lit8 v5, v5, -0x30

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .restart local v0       #i:I
    .restart local v1       #sum:I
    .restart local v2       #temp:[I
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget v3, v2, v3

    shl-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static I(Ljava/lang/String;)[I
    .locals 4
    .parameter "binStr"

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 70
    .local v2, temp:[C
    array-length v3, v2

    new-array v1, v3, [I

    .line 71
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 74
    return-object v1

    .line 72
    :cond_0
    aget-char v3, v2, v0

    add-int/lit8 v3, v3, -0x30

    aput v3, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 88
    new-instance v0, Lcom/jy/func/u/c;

    invoke-direct {v0}, Lcom/jy/func/u/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jy/func/u/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(CI)C
    .locals 3
    .parameter "val"
    .parameter "n"

    .prologue
    .line 18
    .line 19
    shl-int/lit8 v1, p0, 0x8

    .line 20
    .local v1, t:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 28
    shr-int/lit8 v2, v1, 0x8

    .line 29
    int-to-char v2, v2

    return v2

    .line 22
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    .line 23
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 25
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 20
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "a"
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-static {}, Lcom/jy/func/u/r$a;->cB()Lcom/jy/func/u/r;

    move-result-object v0

    .line 84
    .local v0, aa:Lcom/jy/func/u/r;
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    new-array v6, v1, [C

    move v4, v2

    :goto_0
    array-length v1, v5

    if-lt v4, v1, :cond_0

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v0, p1}, Lcom/jy/func/u/r;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_1
    array-length v1, v5

    if-lt v3, v1, :cond_3

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    aget-object v1, v5, v4

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v1, v3

    new-array v7, v1, [I

    move v1, v2

    :goto_2
    array-length v8, v3

    if-lt v1, v8, :cond_1

    move v1, v2

    move v3, v2

    :goto_3
    array-length v8, v7

    if-lt v1, v8, :cond_2

    int-to-char v1, v3

    aput-char v1, v6, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    aget-char v8, v3, v1

    add-int/lit8 v8, v8, -0x30

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    aget v8, v7, v8

    shl-int/2addr v8, v1

    add-int/2addr v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    rem-int v1, v3, v7

    aget-char v1, v6, v1

    rem-int/lit8 v8, v1, 0x8

    aget-char v1, v5, v3

    shl-int/lit8 v1, v1, 0x8

    move v4, v2

    :goto_4
    if-lt v4, v8, :cond_4

    shr-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    aput-char v1, v5, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    shr-int/lit8 v1, v1, 0x1

    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_5

    const v9, 0x8000

    or-int/2addr v1, v9

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method private static a([C[C)[C
    .locals 7
    .parameter "encodedstr"
    .parameter "key"

    .prologue
    .line 36
    array-length v1, p1

    .line 38
    .local v1, k:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 42
    return-object p0

    .line 40
    :cond_0
    rem-int v3, v0, v1

    aget-char v3, p1, v3

    rem-int/lit8 v2, v3, 0x8

    .line 41
    .local v2, rotnum:I
    aget-char v3, p0, v0

    shl-int/lit8 v4, v3, 0x8

    const/4 v3, 0x0

    move v6, v3

    move v3, v4

    move v4, v6

    :goto_1
    if-lt v4, v2, :cond_1

    shr-int/lit8 v3, v3, 0x8

    int-to-char v3, v3

    aput-char v3, p0, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    shr-int/lit8 v3, v3, 0x1

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_2

    const v5, 0x8000

    or-int/2addr v3, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
