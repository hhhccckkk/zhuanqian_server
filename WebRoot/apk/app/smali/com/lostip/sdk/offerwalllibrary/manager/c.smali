.class public Lcom/lostip/sdk/offerwalllibrary/manager/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/c;


# instance fields
.field private b:Lcom/lostip/sdk/offerwalllibrary/other/t;

.field private c:Lcom/lostip/sdk/offerwalllibrary/other/u;

.field private d:Lcom/lostip/sdk/offerwalllibrary/other/t;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/t;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/t;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b:Lcom/lostip/sdk/offerwalllibrary/other/t;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/u;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/u;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->c:Lcom/lostip/sdk/offerwalllibrary/other/u;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/t;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/t;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->d:Lcom/lostip/sdk/offerwalllibrary/other/t;

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->d:Lcom/lostip/sdk/offerwalllibrary/other/t;

    const-string v1, "AS3pdlsIOxP1650R3592IQMnvbC9JS90"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/t;->c([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/c;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a:Lcom/lostip/sdk/offerwalllibrary/manager/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/c;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a:Lcom/lostip/sdk/offerwalllibrary/manager/c;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a:Lcom/lostip/sdk/offerwalllibrary/manager/c;

    return-object v0
.end method

.method private d([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b:Lcom/lostip/sdk/offerwalllibrary/other/t;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/t;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b:Lcom/lostip/sdk/offerwalllibrary/other/t;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/t;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->c:Lcom/lostip/sdk/offerwalllibrary/other/u;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/u;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->c:Lcom/lostip/sdk/offerwalllibrary/other/u;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/u;->a([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/z;->a(B)[B

    move-result-object v0

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a([B)[B

    move-result-object p2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_1

    invoke-static {p2}, Lcom/lostip/sdk/offerwalllibrary/other/v;->a([B)[B

    move-result-object p2

    :cond_1
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    :cond_2
    return-object p2

    :cond_3
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->d([B)[B

    move-result-object p2

    goto :goto_0
.end method

.method public a([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->c:Lcom/lostip/sdk/offerwalllibrary/other/u;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/u;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/z;->a(B)[B

    move-result-object v1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/v;->b([B)[B

    move-result-object v0

    :cond_0
    const/4 v2, 0x7

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->f([B)[B

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v2, 0x5

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->e([B)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method public b([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->d:Lcom/lostip/sdk/offerwalllibrary/other/t;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/t;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/c;->d:Lcom/lostip/sdk/offerwalllibrary/other/t;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/t;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
