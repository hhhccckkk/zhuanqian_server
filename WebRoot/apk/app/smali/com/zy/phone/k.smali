.class public final Lcom/zy/phone/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    new-array v0, v2, [B

    move v1, v2

    move-object v3, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x40

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_1

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQCIOdh8zuJqT/XNfQnwQqq/dA\nZ5RJSuEyhzi6vv3TRBrPMWglQEyAzLH8gJBRkJx+cWKHVUz0bfjg4d7iC9TAhqSd\nJGYHjrhF6RU1iwjC6kSsI2IHIH2JiK+FdAuAyUjnqkLS8HOuw1M3Bd5fluNlKlHb\nZo6tdNOi33qHynmL1wIDAQAB"

    invoke-static {v0}, Lcom/zy/phone/k;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zy/phone/k;->a([B[B)[B

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x40

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQCIOdh8zuJqT/XNfQnwQqq/dA\nZ5RJSuEyhzi6vv3TRBrPMWglQEyAzLH8gJBRkJx+cWKHVUz0bfjg4d7iC9TAhqSd\nJGYHjrhF6RU1iwjC6kSsI2IHIH2JiK+FdAuAyUjnqkLS8HOuw1M3Bd5fluNlKlHb\nZo6tdNOi33qHynmL1wIDAQAB"

    invoke-static {v0}, Lcom/zy/phone/k;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    add-int/lit8 v5, v1, 0x40

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zy/phone/k;->a([B[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method private static a([B[B)[B
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    move v3, v1

    :goto_0
    if-eqz p1, :cond_3

    array-length v1, p1

    :goto_1
    add-int v4, v3, v1

    if-lez v4, :cond_0

    add-int v0, v3, v1

    new-array v0, v0, [B

    :cond_0
    if-lez v3, :cond_1

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-lez v1, :cond_2

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
