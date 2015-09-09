.class public Lcom/lostip/sdk/offerwalllibrary/other/z;
.super Ljava/lang/Object;


# direct methods
.method public static a(BIB)B
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    shl-int v0, p2, p1

    int-to-byte v0, v0

    or-int/2addr v0, p0

    int-to-byte p0, v0

    :cond_2
    return p0
.end method

.method public static a(B)[B
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x7

    :goto_0
    if-gez v0, :cond_0

    return-object v1

    :cond_0
    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    shr-int/lit8 v2, p0, 0x1

    int-to-byte p0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
