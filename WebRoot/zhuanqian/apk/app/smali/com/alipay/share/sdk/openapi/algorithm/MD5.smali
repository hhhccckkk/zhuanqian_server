.class public Lcom/alipay/share/sdk/openapi/algorithm/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 117
    const v0, 0x19000

    invoke-static {p0, v0}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/io/File;I)Ljava/lang/String;
    .locals 10
    .parameter "file"
    .parameter "var1"

    .prologue
    const/4 v5, 0x0

    .line 121
    if-eqz p0, :cond_5

    if-lez p1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, var2:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 129
    .local v4, var8:Z
    const/4 v4, 0x1

    .line 130
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v2           #var2:Ljava/io/FileInputStream;
    .local v3, var2:Ljava/io/FileInputStream;
    int-to-long v6, p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    int-to-long v6, p1

    :goto_0
    long-to-int v6, v6

    .line 130
    invoke-static {v3, v6}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/FileInputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, var14:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 133
    const/4 v4, 0x0

    .line 138
    if-eqz v4, :cond_0

    .line 140
    if-eqz v3, :cond_0

    .line 141
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 169
    .end local v1           #var14:Ljava/lang/String;
    .end local v3           #var2:Ljava/io/FileInputStream;
    .end local v4           #var8:Z
    :goto_2
    return-object v1

    .line 131
    .restart local v3       #var2:Ljava/io/FileInputStream;
    .restart local v4       #var8:Z
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-wide v6

    goto :goto_0

    .line 135
    .end local v3           #var2:Ljava/io/FileInputStream;
    .restart local v2       #var2:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 136
    .local v0, var12:Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    .line 138
    if-eqz v4, :cond_2

    .line 140
    if-eqz v2, :cond_2

    .line 141
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 151
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 152
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_5
    move-object v1, v5

    .line 158
    goto :goto_2

    .line 137
    .end local v0           #var12:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 138
    :goto_6
    if-eqz v4, :cond_4

    .line 140
    if-eqz v2, :cond_4

    .line 141
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 148
    :cond_4
    :goto_7
    throw v5

    .end local v2           #var2:Ljava/io/FileInputStream;
    .end local v4           #var8:Z
    :cond_5
    move-object v1, v5

    .line 169
    goto :goto_2

    .line 143
    .restart local v1       #var14:Ljava/lang/String;
    .restart local v3       #var2:Ljava/io/FileInputStream;
    .restart local v4       #var8:Z
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v1           #var14:Ljava/lang/String;
    .end local v3           #var2:Ljava/io/FileInputStream;
    .restart local v0       #var12:Ljava/lang/Exception;
    .restart local v2       #var2:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v0           #var12:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_7

    .line 154
    .restart local v0       #var12:Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto :goto_5

    .line 163
    .end local v0           #var12:Ljava/lang/Exception;
    .end local v2           #var2:Ljava/io/FileInputStream;
    .restart local v1       #var14:Ljava/lang/String;
    .restart local v3       #var2:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    goto :goto_2

    .line 137
    .end local v1           #var14:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #var2:Ljava/io/FileInputStream;
    .restart local v2       #var2:Ljava/io/FileInputStream;
    goto :goto_6

    .line 135
    .end local v2           #var2:Ljava/io/FileInputStream;
    .restart local v3       #var2:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #var2:Ljava/io/FileInputStream;
    .restart local v2       #var2:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getMD5(Ljava/io/File;II)Ljava/lang/String;
    .locals 7
    .parameter "file"
    .parameter "var1"
    .parameter "var2"

    .prologue
    const/4 v5, 0x0

    .line 179
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ltz p1, :cond_4

    if-lez p2, :cond_4

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, var3:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 187
    .local v4, var9:Z
    const/4 v4, 0x1

    .line 188
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #var3:Ljava/io/FileInputStream;
    .local v3, var3:Ljava/io/FileInputStream;
    const v6, 0x19000

    :try_start_1
    invoke-static {v3, v6, p1, p2}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/FileInputStream;III)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, var15:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 190
    const/4 v4, 0x0

    .line 195
    if-eqz v4, :cond_0

    .line 197
    if-eqz v3, :cond_0

    .line 198
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 226
    .end local v1           #var15:Ljava/lang/String;
    .end local v3           #var3:Ljava/io/FileInputStream;
    .end local v4           #var9:Z
    :goto_1
    return-object v1

    .line 192
    .restart local v2       #var3:Ljava/io/FileInputStream;
    .restart local v4       #var9:Z
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 195
    if-eqz v4, :cond_1

    .line 197
    if-eqz v2, :cond_1

    .line 198
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 208
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 209
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    move-object v1, v5

    .line 215
    goto :goto_1

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 195
    :goto_5
    if-eqz v4, :cond_3

    .line 197
    if-eqz v2, :cond_3

    .line 198
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 205
    :cond_3
    :goto_6
    throw v5

    .end local v2           #var3:Ljava/io/FileInputStream;
    .end local v4           #var9:Z
    :cond_4
    move-object v1, v5

    .line 226
    goto :goto_1

    .line 200
    .restart local v1       #var15:Ljava/lang/String;
    .restart local v3       #var3:Ljava/io/FileInputStream;
    .restart local v4       #var9:Z
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v1           #var15:Ljava/lang/String;
    .end local v3           #var3:Ljava/io/FileInputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #var3:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 211
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto :goto_4

    .line 220
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #var3:Ljava/io/FileInputStream;
    .restart local v1       #var15:Ljava/lang/String;
    .restart local v3       #var3:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    goto :goto_1

    .line 194
    .end local v1           #var15:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #var3:Ljava/io/FileInputStream;
    .restart local v2       #var3:Ljava/io/FileInputStream;
    goto :goto_5

    .line 192
    .end local v2           #var3:Ljava/io/FileInputStream;
    .restart local v3       #var3:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #var3:Ljava/io/FileInputStream;
    .restart local v2       #var3:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final getMD5(Ljava/io/FileInputStream;I)Ljava/lang/String;
    .locals 10
    .parameter "fileInputStream"
    .parameter "var1"

    .prologue
    const/4 v7, 0x0

    .line 84
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 86
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 87
    .local v0, var2:Ljava/security/MessageDigest;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v1, var3:Ljava/lang/StringBuilder;
    new-array v5, p1, [B

    .line 89
    .local v5, var7:[B
    const/4 v2, 0x0

    .line 92
    .local v2, var4:Z
    :goto_0
    invoke-virtual {p0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, var8:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 98
    .local v4, var6:[B
    const/4 p1, 0x0

    :goto_1
    array-length v8, v4

    if-lt p1, v8, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    .end local v0           #var2:Ljava/security/MessageDigest;
    .end local v1           #var3:Ljava/lang/StringBuilder;
    .end local v2           #var4:Z
    .end local v4           #var6:[B
    .end local v5           #var7:[B
    .end local v6           #var8:I
    :cond_0
    :goto_2
    return-object v7

    .line 93
    .restart local v0       #var2:Ljava/security/MessageDigest;
    .restart local v1       #var3:Ljava/lang/StringBuilder;
    .restart local v2       #var4:Z
    .restart local v5       #var7:[B
    .restart local v6       #var8:I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 103
    .end local v0           #var2:Ljava/security/MessageDigest;
    .end local v1           #var3:Ljava/lang/StringBuilder;
    .end local v2           #var4:Z
    .end local v5           #var7:[B
    .end local v6           #var8:I
    :catch_0
    move-exception v3

    .line 104
    .local v3, var5:Ljava/lang/Exception;
    goto :goto_2

    .line 99
    .end local v3           #var5:Ljava/lang/Exception;
    .restart local v0       #var2:Ljava/security/MessageDigest;
    .restart local v1       #var3:Ljava/lang/StringBuilder;
    .restart local v2       #var4:Z
    .restart local v4       #var6:[B
    .restart local v5       #var7:[B
    .restart local v6       #var8:I
    :cond_2
    aget-byte v8, v4, p1

    and-int/lit16 v8, v8, 0xff

    add-int/lit16 v8, v8, 0x100

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public static final getMD5(Ljava/io/FileInputStream;III)Ljava/lang/String;
    .locals 12
    .parameter "fileInputStream"
    .parameter "var1"
    .parameter "var2"
    .parameter "var3"

    .prologue
    .line 45
    if-eqz p0, :cond_5

    if-lez p1, :cond_5

    if-ltz p2, :cond_5

    if-lez p3, :cond_5

    .line 47
    int-to-long v8, p2

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 48
    const/4 v8, 0x0

    .line 79
    :goto_0
    return-object v8

    .line 50
    :cond_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 51
    .local v0, var10:Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v2, var4:Ljava/lang/StringBuilder;
    new-array v7, p1, [B

    .line 53
    .local v7, var9:[B
    const/4 v3, 0x0

    .line 54
    .local v3, var5:Z
    const/4 v4, 0x0

    .line 57
    .local v4, var6:I
    :goto_1
    invoke-virtual {p0, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, var11:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    if-lt v4, p3, :cond_2

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 69
    .local v6, var8:[B
    const/4 p1, 0x0

    :goto_2
    array-length v8, v6

    if-lt p1, v8, :cond_4

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 58
    .end local v6           #var8:[B
    :cond_2
    add-int v8, v4, v1

    if-gt v8, p3, :cond_3

    .line 59
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 60
    add-int/2addr v4, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v8, 0x0

    sub-int v9, p3, v4

    invoke-virtual {v0, v7, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    move v4, p3

    goto :goto_1

    .line 70
    .restart local v6       #var8:[B
    :cond_4
    aget-byte v8, v6, p1

    and-int/lit16 v8, v8, 0xff

    add-int/lit16 v8, v8, 0x100

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 75
    .end local v0           #var10:Ljava/security/MessageDigest;
    .end local v1           #var11:I
    .end local v2           #var4:Ljava/lang/StringBuilder;
    .end local v3           #var5:Z
    .end local v4           #var6:I
    .end local v6           #var8:[B
    .end local v7           #var9:[B
    :catch_0
    move-exception v5

    .line 76
    .local v5, var7:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_0

    .line 79
    .end local v5           #var7:Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "var0"

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, var1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x19000

    invoke-static {v0, v1}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter "var0"
    .parameter "var1"
    .parameter "var2"

    .prologue
    const/4 v1, 0x0

    .line 175
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, var3:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p1, p2}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getMessageDigest([B)Ljava/lang/String;
    .locals 10
    .parameter "bytes"

    .prologue
    .line 13
    const/16 v9, 0x10

    new-array v2, v9, [C

    fill-array-data v2, :array_0

    .line 17
    .local v2, var1:[C
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    array-length v8, p0

    .local v8, var8:I
    mul-int/lit8 v9, v8, 0x2

    new-array v3, v9, [C

    .line 20
    .local v3, var3:[C
    const/4 v4, 0x0

    .line 22
    .local v4, var4:I
    const/4 v0, 0x0

    .local v0, i:I
    move v5, v4

    .end local v4           #var4:I
    .local v5, var4:I
    :goto_0
    if-lt v0, v8, :cond_0

    .line 28
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([C)V

    .line 30
    .end local v0           #i:I
    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    .end local v3           #var3:[C
    .end local v5           #var4:I
    .end local v8           #var8:I
    :goto_1
    return-object v9

    .line 23
    .restart local v0       #i:I
    .restart local v1       #messageDigest:Ljava/security/MessageDigest;
    .restart local v3       #var3:[C
    .restart local v5       #var4:I
    .restart local v8       #var8:I
    :cond_0
    aget-byte v6, p0, v0

    .line 24
    .local v6, var6:B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #var4:I
    .restart local v4       #var4:I
    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v2, v9

    aput-char v9, v3, v5

    .line 25
    add-int/lit8 v5, v4, 0x1

    .end local v4           #var4:I
    .restart local v5       #var4:I
    and-int/lit8 v9, v6, 0xf

    aget-char v9, v2, v9

    aput-char v9, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v0           #i:I
    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    .end local v3           #var3:[C
    .end local v5           #var4:I
    .end local v6           #var6:B
    .end local v8           #var8:I
    :catch_0
    move-exception v7

    .line 30
    .local v7, var7:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 13
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

.method public static final getRawDigest([B)[B
    .locals 3
    .parameter "bytes"

    .prologue
    .line 37
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 40
    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
