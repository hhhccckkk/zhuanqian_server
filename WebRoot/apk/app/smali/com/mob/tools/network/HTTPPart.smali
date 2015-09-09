.class public abstract Lcom/mob/tools/network/HTTPPart;
.super Ljava/lang/Object;


# instance fields
.field private listener:Lcom/mob/tools/network/OnReadListener;

.field private offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferedHttpEntity()Lorg/apache/http/entity/BufferedHttpEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mob/tools/network/ByteCounterInputStream;

    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mob/tools/network/ByteCounterInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, is:Lcom/mob/tools/network/ByteCounterInputStream;
    iget-object v3, p0, Lcom/mob/tools/network/HTTPPart;->listener:Lcom/mob/tools/network/OnReadListener;

    invoke-virtual {v0, v3}, Lcom/mob/tools/network/ByteCounterInputStream;->setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V

    iget-wide v3, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/network/ByteCounterInputStream;->skip(J)J

    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    sub-long v1, v3, v5

    .local v1, length:J
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-object v3
.end method

.method protected abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public setOffset(J)V
    .locals 0
    .parameter "offset"

    .prologue
    iput-wide p1, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    return-void
.end method

.method public setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Lcom/mob/tools/network/HTTPPart;->listener:Lcom/mob/tools/network/OnReadListener;

    return-void
.end method
