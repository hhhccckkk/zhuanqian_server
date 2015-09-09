.class public Lcom/lostip/sdk/offerwalllibrary/other/a;
.super Ljava/lang/Object;


# instance fields
.field a:S

.field b:Z

.field private c:[B

.field private d:S

.field private e:B

.field private f:I

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:[B


# direct methods
.method public constructor <init>(SB)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    iput-short v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->d:S

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->b:Z

    iput-short p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->a:S

    iput-byte p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->g:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/af;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->c:[B

    const/16 v0, 0xf

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/af;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->h:[B

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/a;->d()V

    return-void
.end method

.method private c()[B
    .locals 3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->c:[B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->d:S

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->a:S

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->f:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->h:[B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->b:Z

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/z;->a(BIB)B

    move-result v0

    iput-byte v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    :cond_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    invoke-static {v1, v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/z;->a(BIB)B

    move-result v0

    iput-byte v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/c;->hasCommonParams:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lostip/sdk/offerwalllibrary/entity/c;->b()V

    :cond_0
    iget-boolean v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/c;->compressible:Z

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->b:Z

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->i:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v2

    iget-byte v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->e:B

    iget-object v4, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->i:[B

    invoke-virtual {v2, v3, v4}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a(B[B)[B

    move-result-object v3

    if-nez v3, :cond_3

    move v2, v1

    :goto_0
    iput v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->f:I

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/a;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    :cond_0
    if-eqz v3, :cond_1

    array-length v4, v3

    add-int/2addr v1, v4

    :cond_1
    new-instance v4, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v4, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/4 v1, 0x0

    array-length v5, v2

    invoke-virtual {v4, v2, v1, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    array-length v2, v3

    invoke-virtual {v4, v3, v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    :cond_2
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    array-length v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->g:Ljava/lang/String;

    return-void
.end method
