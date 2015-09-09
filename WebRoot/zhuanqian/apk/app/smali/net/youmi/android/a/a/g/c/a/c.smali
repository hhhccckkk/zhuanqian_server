.class public Lnet/youmi/android/a/a/g/c/a/c;
.super Ljava/lang/Object;


# direct methods
.method static final a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lnet/youmi/android/a/a/g/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2, p4, p5, p9}, Lnet/youmi/android/a/a/g/c/a/b;->a(Landroid/content/Context;Lorg/json/JSONObject;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p0, v2, p8, v1}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lnet/youmi/android/a/b/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static/range {p0 .. p9}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p10}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;ZLnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;
    .locals 11

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x1

    new-array v7, v1, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-static {v2, v3}, Lnet/youmi/android/a/a/g/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    aput-object v2, v7, v1

    move-object/from16 v0, p9

    invoke-static {p0, p2, p4, p5, v0}, Lnet/youmi/android/a/a/g/c/a/b;->a(Landroid/content/Context;Lorg/json/JSONObject;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p6}, Lnet/youmi/android/a/a/g/c/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p8

    invoke-static {p0, v1, v0, v2}, Lnet/youmi/android/a/a/g/c/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;ILjava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    array-length v5, v1

    :cond_0
    invoke-static/range {p7 .. p7}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    :cond_1
    move-object/from16 v0, p7

    invoke-static {p0, v1, v0}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;[BLjava/lang/String;)[B

    move-result-object v8

    move-object v1, p0

    move-object v3, p3

    move/from16 v4, p8

    invoke-static/range {v1 .. v6}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)[B

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v1

    add-int/lit8 v3, v3, 0x6

    array-length v4, v8

    add-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v2, v3, v4}, Lnet/youmi/android/a/a/g/c/a/c;->a(III)[B

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v8, v3, v1

    invoke-static {v3}, Lnet/youmi/android/a/a/g/c/a/e;->a([[B)[B

    move-result-object v1

    move-object/from16 v0, p10

    invoke-static {p0, p1, v1, v7, v0}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;[B[Lorg/apache/http/Header;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3d

    const/16 v4, 0x2f

    const/16 v3, 0x2b

    const/4 v2, -0x1

    invoke-static {p0, p1, p2, p3}, Lnet/youmi/android/a/a/g/c/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lnet/youmi/android/a/b/d/a;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v2, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v2, :cond_1

    const/16 v1, 0x5f

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v2, :cond_2

    const/16 v1, 0x2e

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0xa

    invoke-static {p0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v2}, Lnet/youmi/android/a/b/d/b;->a(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string p0, "abcdefghij"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    new-instance v0, Lnet/youmi/android/a/a/g/c/a/d;

    invoke-direct {v0, p1, p0}, Lnet/youmi/android/a/a/g/c/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(III)[B
    .locals 5

    int-to-short v0, p0

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/a/e;->b(S)[B

    move-result-object v0

    int-to-short v1, p1

    invoke-static {v1}, Lnet/youmi/android/a/a/g/c/a/e;->b(S)[B

    move-result-object v1

    int-to-short v2, p2

    invoke-static {v2}, Lnet/youmi/android/a/a/g/c/a/e;->b(S)[B

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lnet/youmi/android/a/a/g/c/a/e;->a([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)[B
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v0, 0x0

    const/4 v2, 0x3

    aput-byte v2, v1, v0

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "                "

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Lnet/youmi/android/a/b/d/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p1}, Lnet/youmi/android/a/a/g/c/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    int-to-byte v7, p3

    aput-byte v7, v5, v6

    int-to-short v6, p4

    invoke-static {v6}, Lnet/youmi/android/a/a/g/c/a/e;->b(S)[B

    move-result-object v6

    int-to-short v7, p5

    invoke-static {v7}, Lnet/youmi/android/a/a/g/c/a/e;->b(S)[B

    move-result-object v7

    const/16 v8, 0x8

    new-array v8, v8, [[B

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v0, v8, v1

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    invoke-static {v8}, Lnet/youmi/android/a/a/g/c/a/e;->a([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;[BLjava/lang/String;)[B
    .locals 3

    invoke-static {p2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/a/e;->a([[B)[B

    move-result-object p1

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;
    .locals 11

    const-string v3, "                "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    invoke-static {p0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "          "

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v0, v3, :cond_1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method
