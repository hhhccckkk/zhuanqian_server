.class public Lcom/lostip/sdk/offerwalllibrary/other/af;
.super Ljava/lang/Object;


# static fields
.field static final a:[C

.field static final b:[C

.field static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x1a

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/af;->a:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/af;->b:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/af;->c:[C

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
    .end array-data

    :array_1
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method public static a(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [[C

    const/4 v1, 0x0

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/af;->a:[C

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/af;->b:[C

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/af;->c:[C

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/af;->a(IZ[[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(IZ[[C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-lez p0, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    if-nez p1, :cond_0

    array-length v5, p2

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_1

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    aget-object v2, p2, v1

    array-length v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    array-length v0, p2

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v1, p2, v0

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, p2, v0

    aget-char v0, v0, v1

    if-eqz p1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
