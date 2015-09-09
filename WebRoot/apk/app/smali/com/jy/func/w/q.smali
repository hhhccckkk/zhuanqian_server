.class final Lcom/jy/func/w/q;
.super Ljava/lang/Object;
.source "CYZSimpleMultipartEntity.java"


# instance fields
.field private eG:[B

.field private synthetic eH:Lcom/jy/func/w/p;

.field private file:Ljava/io/File;


# direct methods
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

    invoke-super {p0, p2, v0, p4}, Lcom/jy/func/w/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

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


# virtual methods
.method public final dk()J
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

.method public final writeTo(Ljava/io/OutputStream;)V
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
