.class public Lcom/lostip/sdk/offerwalllibrary/other/b;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:B

.field private c:S

.field private d:Lcom/lostip/sdk/offerwalllibrary/other/e;

.field private e:I

.field private f:[B

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/b;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/b;->f:[B

    return-void
.end method

.method public static a(Lcom/lostip/sdk/offerwalllibrary/other/a;Ljava/io/DataInputStream;)Lcom/lostip/sdk/offerwalllibrary/other/b;
    .locals 5

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/other/b;

    invoke-direct {v1}, Lcom/lostip/sdk/offerwalllibrary/other/b;-><init>()V

    :try_start_0
    iget-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->c:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->b:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/e;->a(I)Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v0

    iput-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->e:I

    iget-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->f:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v3

    iget-byte v4, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->b:B

    invoke-virtual {v3, v4, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b(B[B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->u:Lcom/lostip/sdk/offerwalllibrary/other/e;

    iput-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->e:Lcom/lostip/sdk/offerwalllibrary/other/e;

    iput-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    goto :goto_0
.end method

.method public static a(Lcom/lostip/sdk/offerwalllibrary/other/e;)Lcom/lostip/sdk/offerwalllibrary/other/b;
    .locals 1

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/b;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;-><init>()V

    iput-object p0, v0, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    return-object v0
.end method

.method public static b(Lcom/lostip/sdk/offerwalllibrary/other/a;Ljava/io/DataInputStream;)Lcom/lostip/sdk/offerwalllibrary/other/b;
    .locals 5

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/other/b;

    invoke-direct {v1}, Lcom/lostip/sdk/offerwalllibrary/other/b;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->b:B

    iget-short v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/a;->a:S

    iput-short v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->c:S

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->s:Lcom/lostip/sdk/offerwalllibrary/other/e;

    iput-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v3

    iget-byte v4, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->b:B

    invoke-virtual {v3, v4, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b(B[B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->u:Lcom/lostip/sdk/offerwalllibrary/other/e;

    iput-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->s:Lcom/lostip/sdk/offerwalllibrary/other/e;

    iput-object v0, v1, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/lostip/sdk/offerwalllibrary/other/e;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/b;->d:Lcom/lostip/sdk/offerwalllibrary/other/e;

    return-object v0
.end method
