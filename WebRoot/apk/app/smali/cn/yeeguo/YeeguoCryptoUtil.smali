.class public Lcn/yeeguo/YeeguoCryptoUtil;
.super Ljava/lang/Object;
.source "YeeguoCryptoUtil.java"


# static fields
.field private static ALGORITHM:Ljava/lang/String; = null

.field public static final SZF_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCPSU/43cp8Vk8Obie0zHpkN8wtAq5yK7KuT1Sq+l0zc5zmGaFuX6HK9DFvbRHkqpM8fxAekKpJQWwT/7/8lAHYoNRefZ8mMzCMBUBJcvk9iavxZVVYCFGsDETMXv4a9mpJ/4U351DVfoEndijjuBl6vYOvDNFRis3dJecvd4DhkwIDAQAB"

.field public static final TYPE:Ljava/lang/String; = "AES"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "RSA"

    sput-object v0, Lcn/yeeguo/YeeguoCryptoUtil;->ALGORITHM:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AESdecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "key"

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 112
    .local v1, endata:[B
    invoke-static {v1, p1}, Lcn/yeeguo/YeeguoCryptoUtil;->AESdecode([BLjava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, dedata:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static AESdecode([BLjava/lang/String;)[B
    .locals 9
    .parameter "data"
    .parameter "kek"

    .prologue
    .line 84
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 85
    .local v4, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    new-instance v7, Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v4, v6, v7}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 86
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 87
    .local v5, secretKey:Ljavax/crypto/SecretKey;
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 88
    .local v2, enCodeFormat:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v3, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 89
    .local v3, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 90
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 97
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #enCodeFormat:[B
    .end local v3           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v4           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v5           #secretKey:Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static AESencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "key"

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 69
    .local v1, srcData:[B
    invoke-static {v1, p1}, Lcn/yeeguo/YeeguoCryptoUtil;->AESencode([BLjava/lang/String;)[B

    move-result-object v0

    .line 70
    .local v0, endata:[B
    invoke-static {v0}, Lcn/yeeguo/YeeguoHEX;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static AESencode([BLjava/lang/String;)[B
    .locals 5
    .parameter "data"
    .parameter "key"

    .prologue
    .line 48
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 49
    .local v2, raw:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 51
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 53
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #raw:[B
    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, s:Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 153
    .local v1, md:Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 155
    .local v3, tmp:[B
    invoke-static {v3}, Lcn/yeeguo/YeeguoHEX;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 159
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v3           #tmp:[B
    :goto_0
    return-object v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SHA1_base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 173
    .local v2, s:Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 174
    .local v1, md:Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 176
    .local v3, tmp:[B
    invoke-static {v3}, Lcn/yeeguo/YeeguoBase64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 180
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v3           #tmp:[B
    :goto_0
    return-object v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRSAPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0}, Lcn/yeeguo/YeeguoBase64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 221
    .local v0, keyBytes:[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 222
    .local v2, keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 223
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 224
    .local v3, privateKey:Ljava/security/PrivateKey;
    return-object v3
.end method

.method public static getRSAPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p0}, Lcn/yeeguo/YeeguoBase64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 205
    .local v0, keyBytes:[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 206
    .local v2, keySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 207
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 208
    .local v3, publicKey:Ljava/security/PublicKey;
    return-object v3
.end method

.method public static getRandom()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 190
    .local v0, rand:Ljava/util/Random;
    const v1, 0x989680

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 138
    :goto_0
    return-object v2

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 131
    .local v2, s:Ljava/lang/String;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 132
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 134
    .local v3, tmp:[B
    invoke-static {v3}, Lcn/yeeguo/YeeguoHEX;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 135
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v3           #tmp:[B
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static rsaDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cryptograph"
    .parameter "privateKeyStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, Lcn/yeeguo/YeeguoCryptoUtil;->getRSAPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 247
    .local v3, privateKey:Ljava/security/PrivateKey;
    sget-object v4, Lcn/yeeguo/YeeguoCryptoUtil;->ALGORITHM:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 248
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 249
    invoke-static {p0}, Lcn/yeeguo/YeeguoBase64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 251
    .local v1, b1:[B
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 252
    .local v0, b:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method public static rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"
    .parameter "publicKeyStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p1}, Lcn/yeeguo/YeeguoCryptoUtil;->getRSAPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 233
    .local v3, publicKey:Ljava/security/PublicKey;
    sget-object v4, Lcn/yeeguo/YeeguoCryptoUtil;->ALGORITHM:Ljava/lang/String;

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 234
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 237
    .local v0, b:[B
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 238
    .local v1, b1:[B
    invoke-static {v1}, Lcn/yeeguo/YeeguoBase64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
