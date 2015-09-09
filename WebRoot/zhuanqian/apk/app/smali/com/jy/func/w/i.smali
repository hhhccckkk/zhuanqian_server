.class public final Lcom/jy/func/w/i;
.super Ljava/lang/Object;
.source "CYZJsonStreamerEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final dL:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final ez:I = 0x1000

.field private static final fl:Ljava/lang/UnsupportedOperationException;

.field private static final fm:Ljava/lang/StringBuilder;

.field private static final fn:[B

.field private static final fo:[B

.field private static final fp:[B

.field private static final fq:[B

.field private static final fr:[B

.field private static final fs:[B

.field private static final ft:[B

.field private static final fu:Lorg/apache/http/Header;

.field private static final fv:Lorg/apache/http/Header;


# instance fields
.field private final buffer:[B

.field private final contentEncoding:Lorg/apache/http/Header;

.field private final fw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fx:Lcom/jy/func/w/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jy/func/w/i;->fl:Ljava/lang/UnsupportedOperationException;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->fn:[B

    .line 36
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->fo:[B

    .line 37
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->fp:[B

    .line 38
    const-string v0, "name"

    invoke-static {v0}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->fq:[B

    .line 39
    const-string v0, "type"

    invoke-static {v0}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->fr:[B

    .line 40
    const-string v0, "contents"

    invoke-static {v0}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->fs:[B

    .line 41
    const-string v0, "_elapsed"

    invoke-static {v0}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jy/func/w/i;->ft:[B

    .line 43
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jy/func/w/i;->fu:Lorg/apache/http/Header;

    .line 45
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jy/func/w/i;->fv:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/jy/func/w/n;Z)V
    .locals 1
    .parameter "progressHandler"
    .parameter "useGZipCompression"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jy/func/w/i;->buffer:[B

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jy/func/w/i;->fw:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/jy/func/w/i;->fx:Lcom/jy/func/w/n;

    .line 54
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jy/func/w/i;->fv:Lorg/apache/http/Header;

    :goto_0
    iput-object v0, p0, Lcom/jy/func/w/i;->contentEncoding:Lorg/apache/http/Header;

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static O(Ljava/lang/String;)[B
    .locals 10
    .parameter "string"

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x0

    .line 235
    if-nez p0, :cond_0

    .line 236
    sget-object v6, Lcom/jy/func/w/i;->fp:[B

    .line 285
    :goto_0
    return-object v6

    .line 237
    :cond_0
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v4, -0x1

    .line 241
    .local v4, pos:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_6

    .line 242
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 243
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 266
    if-ltz v0, :cond_1

    const/16 v6, 0x1f

    if-le v0, v6, :cond_3

    :cond_1
    const/16 v6, 0x7f

    if-lt v0, v6, :cond_2

    const/16 v6, 0x9f

    if-le v0, v6, :cond_3

    :cond_2
    const/16 v6, 0x2000

    if-lt v0, v6, :cond_5

    const/16 v6, 0x20ff

    if-gt v0, v6, :cond_5

    .line 267
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, intString:Ljava/lang/String;
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v1, v6, 0x4

    .line 270
    .local v1, intLength:I
    const/4 v5, 0x0

    .local v5, zero:I
    :goto_2
    if-lt v5, v1, :cond_4

    .line 273
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 245
    .end local v1           #intLength:I
    .end local v2           #intString:Ljava/lang/String;
    .end local v5           #zero:I
    :sswitch_0
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 248
    :sswitch_1
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 251
    :sswitch_2
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    :sswitch_3
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    :sswitch_4
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    :sswitch_5
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :sswitch_6
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const-string v7, "\\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    .restart local v1       #intLength:I
    .restart local v2       #intString:Ljava/lang/String;
    .restart local v5       #zero:I
    :cond_4
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 275
    .end local v1           #intLength:I
    .end local v2           #intString:Ljava/lang/String;
    .end local v5           #zero:I
    :cond_5
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 282
    .end local v0           #ch:C
    :cond_6
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :try_start_0
    sget-object v6, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 289
    sget-object v7, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 288
    :catchall_0
    move-exception v6

    .line 289
    sget-object v7, Lcom/jy/func/w/i;->fm:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 290
    throw v6

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/io/OutputStream;Lcom/jy/func/w/m$a;)V
    .locals 7
    .parameter "os"
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v5, p2, Lcom/jy/func/w/m$a;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/jy/func/w/m$a;->contentType:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/jy/func/w/i;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x0

    .local v2, bytesWritten:I
    iget-object v5, p2, Lcom/jy/func/w/m$a;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 195
    .local v4, totalSize:I
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/jy/func/w/m$a;->file:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 197
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v0, Lcom/jy/func/w/f;

    const/16 v5, 0x12

    invoke-direct {v0, p1, v5}, Lcom/jy/func/w/f;-><init>(Ljava/io/OutputStream;I)V

    .line 199
    .local v0, bos:Lcom/jy/func/w/f;
    :goto_0
    iget-object v5, p0, Lcom/jy/func/w/i;->buffer:[B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 205
    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/OutputStream;)V

    .line 207
    const/16 v5, 0x22

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 209
    invoke-static {v3}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 210
    return-void

    .line 200
    :cond_0
    iget-object v5, p0, Lcom/jy/func/w/i;->buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Lcom/jy/func/w/f;->write([BII)V

    .line 201
    add-int/2addr v2, v1

    .line 202
    iget-object v5, p0, Lcom/jy/func/w/i;->fx:Lcom/jy/func/w/n;

    invoke-interface {v5, v2, v4}, Lcom/jy/func/w/n;->e(II)V

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;Lcom/jy/func/w/m$b;)V
    .locals 4
    .parameter "os"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v2, p2, Lcom/jy/func/w/m$b;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/jy/func/w/m$b;->contentType:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/jy/func/w/i;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/jy/func/w/f;

    const/16 v2, 0x12

    invoke-direct {v0, p1, v2}, Lcom/jy/func/w/f;-><init>(Ljava/io/OutputStream;I)V

    .line 174
    .local v0, bos:Lcom/jy/func/w/f;
    :goto_0
    iget-object v2, p2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/jy/func/w/i;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 178
    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/OutputStream;)V

    .line 180
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 182
    iget-boolean v2, p2, Lcom/jy/func/w/m$b;->fN:Z

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 186
    :cond_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/jy/func/w/i;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/jy/func/w/f;->write([BII)V

    goto :goto_0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "os"
    .parameter "name"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2c

    const/16 v1, 0x3a

    .line 214
    sget-object v0, Lcom/jy/func/w/i;->fq:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 216
    invoke-static {p1}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 219
    sget-object v0, Lcom/jy/func/w/i;->fr:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 221
    invoke-static {p2}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 224
    sget-object v0, Lcom/jy/func/w/i;->fs:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 226
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 227
    return-void
.end method

.method private static b(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 231
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jy/func/w/i;->fw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public final consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/jy/func/w/i;->fl:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jy/func/w/i;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/jy/func/w/i;->fu:Lorg/apache/http/Header;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 14
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x7b

    const/16 v12, 0x3a

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Output stream cannot be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 109
    .local v4, now:J
    iget-object v8, p0, Lcom/jy/func/w/i;->contentEncoding:Lorg/apache/http/Header;

    if-eqz v8, :cond_2

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v6, p1, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 111
    .local v6, os:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v6, v13}, Ljava/io/OutputStream;->write(I)V

    .line 113
    iget-object v8, p0, Lcom/jy/func/w/i;->fw:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 115
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 156
    sget-object v8, Lcom/jy/func/w/i;->ft:[B

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 157
    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write(I)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 159
    .local v0, elapsedTime:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 161
    const-string v8, "JsonStreamerEntity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Uploaded JSON in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " seconds"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 164
    invoke-static {v6}, Lcom/jy/func/w/a;->a(Ljava/io/OutputStream;)V

    .line 165
    return-void

    .end local v0           #elapsedTime:J
    .end local v6           #os:Ljava/io/OutputStream;
    :cond_2
    move-object v6, p1

    .line 109
    goto :goto_0

    .line 115
    .restart local v6       #os:Ljava/io/OutputStream;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/jy/func/w/i;->fw:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 119
    .local v7, value:Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 121
    invoke-static {v3}, Lcom/jy/func/w/i;->O(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 122
    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write(I)V

    .line 124
    instance-of v2, v7, Lcom/jy/func/w/m$a;

    .line 126
    .local v2, isFileWrapper:Z
    if-nez v2, :cond_4

    instance-of v8, v7, Lcom/jy/func/w/m$b;

    if-eqz v8, :cond_6

    .line 128
    :cond_4
    invoke-virtual {v6, v13}, Ljava/io/OutputStream;->write(I)V

    .line 130
    if-eqz v2, :cond_5

    .line 131
    check-cast v7, Lcom/jy/func/w/m$a;

    .end local v7           #value:Ljava/lang/Object;
    invoke-direct {p0, v6, v7}, Lcom/jy/func/w/i;->a(Ljava/io/OutputStream;Lcom/jy/func/w/m$a;)V

    .line 136
    :goto_2
    const/16 v8, 0x7d

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write(I)V

    .line 151
    :goto_3
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 133
    .restart local v7       #value:Ljava/lang/Object;
    :cond_5
    check-cast v7, Lcom/jy/func/w/m$b;

    .end local v7           #value:Ljava/lang/Object;
    invoke-direct {p0, v6, v7}, Lcom/jy/func/w/i;->a(Ljava/io/OutputStream;Lcom/jy/func/w/m$b;)V

    goto :goto_2

    .line 137
    .restart local v7       #value:Ljava/lang/Object;
    :cond_6
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 138
    check-cast v7, Ljava/lang/Boolean;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/jy/func/w/i;->fn:[B

    :goto_4
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/jy/func/w/i;->fo:[B

    goto :goto_4

    .line 139
    .restart local v7       #value:Ljava/lang/Object;
    :cond_8
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_9

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    check-cast v7, Ljava/lang/Number;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 141
    .restart local v7       #value:Ljava/lang/Object;
    :cond_9
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_a

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    check-cast v7, Ljava/lang/Number;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 143
    .restart local v7       #value:Ljava/lang/Object;
    :cond_a
    instance-of v8, v7, Ljava/lang/Float;

    if-eqz v8, :cond_b

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    check-cast v7, Ljava/lang/Number;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 145
    .restart local v7       #value:Ljava/lang/Object;
    :cond_b
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_c

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    check-cast v7, Ljava/lang/Number;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 148
    .restart local v7       #value:Ljava/lang/Object;
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3
.end method
