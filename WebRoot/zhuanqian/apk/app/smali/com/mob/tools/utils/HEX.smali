.class public Lcom/mob/tools/utils/HEX;
.super Ljava/lang/Object;


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mob/tools/utils/HEX;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .locals 8
    .parameter "data"

    .prologue
    array-length v3, p0

    .local v3, len:I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Odd number of characters."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .local v4, out:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/mob/tools/utils/HEX;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .local v0, f:I
    add-int/lit8 v2, v2, 0x1

    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/mob/tools/utils/HEX;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static decodeHexString(Ljava/lang/String;)[B
    .locals 1
    .parameter "hexData"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/HEX;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)[C
    .locals 7
    .parameter "data"

    .prologue
    array-length v3, p0

    .local v3, l:I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .local v4, out:[C
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    sget-object v5, Lcom/mob/tools/utils/HEX;->DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .restart local v2       #j:I
    sget-object v5, Lcom/mob/tools/utils/HEX;->DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    invoke-static {p0}, Lcom/mob/tools/utils/HEX;->encodeHex([B)[C

    move-result-object v0

    .local v0, charArray:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 8
    .parameter "hexData"

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    rem-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v3, 0x2

    .local v0, dataLength:I
    new-array v4, v0, [B

    .local v4, result:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    mul-int/lit8 v6, v2, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x2

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v4, v5

    goto :goto_0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .parameter "ch"
    .parameter "index"

    .prologue
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal charcter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)[B
    .locals 4
    .parameter "object"

    .prologue
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, charArray:[C
    :goto_0
    invoke-static {v0}, Lcom/mob/tools/utils/HEX;->decodeHex([C)[B

    move-result-object v2

    return-object v2

    .end local v0           #charArray:[C
    .restart local p1
    :cond_0
    check-cast p1, [C

    .end local p1
    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public decode([B)[B
    .locals 1
    .parameter "array"

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/HEX;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 2
    .parameter "array"

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/mob/tools/utils/HEX;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)[C
    .locals 4
    .parameter "object"

    .prologue
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, byteArray:[B
    :goto_0
    invoke-static {v0}, Lcom/mob/tools/utils/HEX;->encodeHex([B)[C

    move-result-object v2

    return-object v2

    .end local v0           #byteArray:[B
    .restart local p1
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
