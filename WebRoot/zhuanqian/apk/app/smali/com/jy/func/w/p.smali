.class final Lcom/jy/func/w/p;
.super Ljava/lang/Object;
.source "CYZSimpleMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final dL:Ljava/lang/String; = "SimpleMultipartEntity"

.field private static final fS:Ljava/lang/String; = "\r\n"

.field private static final fT:[B

.field private static final fU:[B

.field private static final fV:[C


# instance fields
.field private fE:Z

.field private final fW:Ljava/lang/String;

.field private final fX:[B

.field private final fY:[B

.field private final fZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jy/func/w/d;",
            ">;"
        }
    .end annotation
.end field

.field private final fx:Lcom/jy/func/w/n;

.field private final ga:Ljava/io/ByteArrayOutputStream;

.field private gb:I

.field private gc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/p;->fT:[B

    .line 29
    const-string v0, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/p;->fU:[B

    .line 31
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/p;->fV:[C

    return-void
.end method

.method public constructor <init>(Lcom/jy/func/w/n;)V
    .locals 5
    .parameter "progressHandler"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jy/func/w/p;->fZ:Ljava/util/List;

    .line 38
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, buf:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 47
    .local v2, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/w/p;->fW:Ljava/lang/String;

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jy/func/w/p;->fW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/w/p;->fX:[B

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jy/func/w/p;->fW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/w/p;->fY:[B

    .line 55
    iput-object p1, p0, Lcom/jy/func/w/p;->fx:Lcom/jy/func/w/n;

    .line 56
    return-void

    .line 48
    :cond_0
    sget-object v3, Lcom/jy/func/w/p;->fV:[C

    sget-object v4, Lcom/jy/func/w/p;->fV:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "type"

    .prologue
    .line 112
    if-nez p0, :cond_0

    const-string p0, "application/octet-stream"

    .end local p0
    :cond_0
    return-object p0
.end method

.method private Q(Ljava/lang/String;)[B
    .locals 2
    .parameter "type"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jy/func/w/p;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static R(Ljava/lang/String;)[B
    .locals 2
    .parameter "key"

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jy/func/w/p;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/jy/func/w/p;->o(I)V

    return-void
.end method

.method static synthetic a(Lcom/jy/func/w/p;)[B
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jy/func/w/p;->fX:[B

    return-object v0
.end method

.method static synthetic a(Lcom/jy/func/w/p;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/jy/func/w/p;->Q(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jy/func/w/p;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {p1, p2}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "key"
    .parameter "file"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jy/func/w/p;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "contentType"

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/jy/func/w/p;->fX:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 61
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 62
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lcom/jy/func/w/p;->Q(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/jy/func/w/p;->fT:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 64
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 65
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/jy/func/w/p;->fT:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SimpleMultipartEntity"

    const-string v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic dA()[B
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/jy/func/w/p;->fT:[B

    return-object v0
.end method

.method static synthetic dz()[B
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/jy/func/w/p;->fU:[B

    return-object v0
.end method

.method private o(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 131
    iget v0, p0, Lcom/jy/func/w/p;->gb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jy/func/w/p;->gb:I

    .line 132
    iget-object v0, p0, Lcom/jy/func/w/p;->fx:Lcom/jy/func/w/n;

    iget v1, p0, Lcom/jy/func/w/p;->gb:I

    iget v2, p0, Lcom/jy/func/w/p;->gc:I

    invoke-interface {v0, v1, v2}, Lcom/jy/func/w/n;->e(II)V

    .line 133
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "streamName"
    .parameter "inputStream"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/jy/func/w/p;->fX:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p4}, Lcom/jy/func/w/p;->Q(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lcom/jy/func/w/p;->fU:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lcom/jy/func/w/p;->fT:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 101
    .local v1, tmp:[B
    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, l:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lcom/jy/func/w/p;->fT:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 106
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 108
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-static {v2}, Lcom/jy/func/w/a;->a(Ljava/io/OutputStream;)V

    .line 109
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jy/func/w/p;->fZ:Ljava/util/List;

    new-instance v1, Lcom/jy/func/w/d;

    invoke-static {p3}, Lcom/jy/func/w/p;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jy/func/w/d;-><init>(Lcom/jy/func/w/p;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "charset"

    .prologue
    .line 73
    if-nez p3, :cond_0

    const-string p3, "UTF-8"

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/plain; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/jy/func/w/p;->fX:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Lcom/jy/func/w/p;->Q(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/jy/func/w/p;->fT:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/jy/func/w/p;->fT:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    const-string v1, "SimpleMultipartEntity"

    const-string v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/jy/func/w/p;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContent() is not supported. Use writeTo() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 8

    .prologue
    .line 137
    iget-object v4, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v0, v4

    .line 138
    .local v0, contentLen:J
    iget-object v4, p0, Lcom/jy/func/w/p;->fZ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/jy/func/w/p;->fY:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v0

    .line 146
    :goto_1
    return-wide v4

    .line 138
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jy/func/w/d;

    .line 139
    invoke-virtual {v4}, Lcom/jy/func/w/d;->dk()J

    move-result-wide v2

    .line 140
    .local v2, len:J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    .line 141
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 143
    :cond_1
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jy/func/w/p;->fW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i(Z)V
    .locals 0
    .parameter "isRepeatable"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/jy/func/w/p;->fE:Z

    .line 161
    return-void
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/jy/func/w/p;->fE:Z

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/jy/func/w/p;->gb:I

    .line 176
    invoke-virtual {p0}, Lcom/jy/func/w/p;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/jy/func/w/p;->gc:I

    .line 177
    iget-object v0, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 178
    iget-object v0, p0, Lcom/jy/func/w/p;->ga:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/p;->o(I)V

    .line 180
    iget-object v0, p0, Lcom/jy/func/w/p;->fZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/jy/func/w/p;->fY:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 184
    iget-object v0, p0, Lcom/jy/func/w/p;->fY:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/jy/func/w/p;->o(I)V

    .line 185
    return-void

    .line 180
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jy/func/w/d;

    .line 181
    invoke-virtual {v0, p1}, Lcom/jy/func/w/d;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
