.class final Lcom/jy/func/w/a$a;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "CYZAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private eh:Ljava/io/PushbackInputStream;

.field private ei:Ljava/util/zip/GZIPInputStream;

.field private wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/jy/func/w/a$a;->wrappedStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 779
    iget-object v0, p0, Lcom/jy/func/w/a$a;->eh:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 780
    iget-object v0, p0, Lcom/jy/func/w/a$a;->ei:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/jy/func/w/a;->a(Ljava/io/InputStream;)V

    .line 781
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 782
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 762
    iget-object v2, p0, Lcom/jy/func/w/a$a;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/w/a$a;->wrappedStream:Ljava/io/InputStream;

    .line 763
    new-instance v2, Ljava/io/PushbackInputStream;

    iget-object v3, p0, Lcom/jy/func/w/a$a;->wrappedStream:Ljava/io/InputStream;

    invoke-direct {v2, v3, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/jy/func/w/a$a;->eh:Ljava/io/PushbackInputStream;

    .line 764
    iget-object v2, p0, Lcom/jy/func/w/a$a;->eh:Ljava/io/PushbackInputStream;

    if-eqz v2, :cond_0

    new-array v3, v6, [B

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread([B)V

    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    if-ne v4, v6, :cond_0

    const v3, 0x8b1f

    if-ne v3, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 765
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/jy/func/w/a$a;->eh:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jy/func/w/a$a;->ei:Ljava/util/zip/GZIPInputStream;

    .line 766
    iget-object v0, p0, Lcom/jy/func/w/a$a;->ei:Ljava/util/zip/GZIPInputStream;

    .line 768
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 764
    goto :goto_0

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/jy/func/w/a$a;->eh:Ljava/io/PushbackInputStream;

    goto :goto_1
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 773
    const-wide/16 v0, -0x1

    return-wide v0
.end method
