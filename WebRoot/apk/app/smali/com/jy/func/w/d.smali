.class public Lcom/jy/func/w/d;
.super Ljava/lang/Object;
.source "CYZBase64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/w/d$a;,
        Lcom/jy/func/w/d$b;,
        Lcom/jy/func/w/d$c;
    }
.end annotation


# static fields
.field private static CRLF:I = 0x4

.field private static DEFAULT:I = 0x0

.field private static NO_CLOSE:I = 0x10

.field private static NO_PADDING:I = 0x1

.field private static NO_WRAP:I = 0x2

.field private static URL_SAFE:I = 0x8


# instance fields
.field public eG:[B

.field final synthetic eH:Lcom/jy/func/w/p;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jy/func/w/p;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/jy/func/w/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/w/d;->eG:[B

    .line 212
    iput-object p3, p0, Lcom/jy/func/w/d;->file:Ljava/io/File;

    .line 213
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter "key"
    .parameter "filename"
    .parameter "type"

    .prologue
    .line 216
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v1, headerStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    invoke-static {v2}, Lcom/jy/func/w/p;->a(Lcom/jy/func/w/p;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 220
    iget-object v2, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    invoke-static {v2, p1, p2}, Lcom/jy/func/w/p;->a(Lcom/jy/func/w/p;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 221
    iget-object v2, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    invoke-static {v2, p3}, Lcom/jy/func/w/p;->a(Lcom/jy/func/w/p;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    invoke-static {}, Lcom/jy/func/w/p;->dz()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    invoke-static {}, Lcom/jy/func/w/p;->dA()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SimpleMultipartEntity"

    const-string v3, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static decode(Ljava/lang/String;I)[B
    .locals 5
    .parameter "str"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/jy/func/w/d$b;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-direct {v2, p1, v3}, Lcom/jy/func/w/d$b;-><init>(I[B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v1, v3}, Lcom/jy/func/w/d$b;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v2, Lcom/jy/func/w/d$b;->eJ:I

    iget-object v1, v2, Lcom/jy/func/w/d$b;->eI:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcom/jy/func/w/d$b;->eI:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v2, Lcom/jy/func/w/d$b;->eJ:I

    new-array v0, v0, [B

    iget-object v1, v2, Lcom/jy/func/w/d$b;->eI:[B

    iget v2, v2, Lcom/jy/func/w/d$b;->eJ:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static decode([BI)[B
    .locals 4
    .parameter "input"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 24
    array-length v0, p0

    new-instance v1, Lcom/jy/func/w/d$b;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, p1, v2}, Lcom/jy/func/w/d$b;-><init>(I[B)V

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/jy/func/w/d$b;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v1, Lcom/jy/func/w/d$b;->eJ:I

    iget-object v2, v1, Lcom/jy/func/w/d$b;->eI:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/jy/func/w/d$b;->eI:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v1, Lcom/jy/func/w/d$b;->eJ:I

    new-array v0, v0, [B

    iget-object v2, v1, Lcom/jy/func/w/d$b;->eI:[B

    iget v1, v1, Lcom/jy/func/w/d$b;->eJ:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static decode([BIII)[B
    .locals 5
    .parameter "input"
    .parameter
    .parameter "len"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/jy/func/w/d$b;

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v0, p3, v2}, Lcom/jy/func/w/d$b;-><init>(I[B)V

    .line 31
    .local v0, decoder:Lcom/jy/func/w/d$b;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v4, p2, v2}, Lcom/jy/func/w/d$b;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_0
    iget v2, v0, Lcom/jy/func/w/d$b;->eJ:I

    iget-object v3, v0, Lcom/jy/func/w/d$b;->eI:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 36
    iget-object v1, v0, Lcom/jy/func/w/d$b;->eI:[B

    .line 41
    :goto_0
    return-object v1

    .line 39
    :cond_1
    iget v2, v0, Lcom/jy/func/w/d$b;->eJ:I

    new-array v1, v2, [B

    .line 40
    .local v1, temp:[B
    iget-object v2, v0, Lcom/jy/func/w/d$b;->eI:[B

    iget v3, v0, Lcom/jy/func/w/d$b;->eJ:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static encode([BI)[B
    .locals 2
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/jy/func/w/d;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static encode([BIII)[B
    .locals 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    .line 73
    new-instance v0, Lcom/jy/func/w/d$c;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Lcom/jy/func/w/d$c;-><init>(I[B)V

    .line 75
    .local v0, encoder:Lcom/jy/func/w/d$c;
    div-int/lit8 v2, p2, 0x3

    shl-int/lit8 v1, v2, 0x2

    .line 77
    .local v1, output_len:I
    iget-boolean v2, v0, Lcom/jy/func/w/d$c;->eU:Z

    if-eqz v2, :cond_2

    .line 78
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 79
    add-int/lit8 v1, v1, 0x4

    .line 94
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Lcom/jy/func/w/d$c;->eV:Z

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 95
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v4, v2, 0x1

    iget-boolean v2, v0, Lcom/jy/func/w/d$c;->eW:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 98
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/jy/func/w/d$c;->eI:[B

    .line 99
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/jy/func/w/d$c;->a([BIIZ)Z

    .line 101
    iget-object v2, v0, Lcom/jy/func/w/d$c;->eI:[B

    return-object v2

    .line 82
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 87
    goto :goto_0

    .line 89
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 95
    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodeToString([BI)Ljava/lang/String;
    .locals 4
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, p1}, Lcom/jy/func/w/d;->encode([BIII)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static encodeToString([BIII)Ljava/lang/String;
    .locals 4
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "flags"

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/jy/func/w/d;->encode([BIII)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public dk()J
    .locals 6

    .prologue
    .line 232
    iget-object v2, p0, Lcom/jy/func/w/d;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/jy/func/w/p;->dA()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 233
    .local v0, streamLength:J
    iget-object v2, p0, Lcom/jy/func/w/d;->eG:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v3, p0, Lcom/jy/func/w/d;->eG:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 238
    iget-object v3, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    iget-object v4, p0, Lcom/jy/func/w/d;->eG:[B

    array-length v4, v4

    invoke-static {v3, v4}, Lcom/jy/func/w/p;->a(Lcom/jy/func/w/p;I)V

    .line 240
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/jy/func/w/d;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 241
    .local v1, inputStream:Ljava/io/FileInputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 243
    .local v2, tmp:[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 247
    invoke-static {}, Lcom/jy/func/w/p;->dA()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 248
    iget-object v3, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    invoke-static {}, Lcom/jy/func/w/p;->dA()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v4}, Lcom/jy/func/w/p;->a(Lcom/jy/func/w/p;I)V

    .line 249
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 250
    invoke-static {v1}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 251
    return-void

    .line 244
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 245
    iget-object v3, p0, Lcom/jy/func/w/d;->eH:Lcom/jy/func/w/p;

    invoke-static {v3, v0}, Lcom/jy/func/w/p;->a(Lcom/jy/func/w/p;I)V

    goto :goto_0
.end method
