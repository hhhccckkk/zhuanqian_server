.class public Lcom/mob/tools/network/MultiPart;
.super Lcom/mob/tools/network/HTTPPart;


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/HTTPPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/network/HTTPPart;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/network/MultiPart;->parts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;
    .locals 1
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mob/tools/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mob/tools/network/MultiPartInputStream;

    invoke-direct {v0}, Lcom/mob/tools/network/MultiPartInputStream;-><init>()V

    .local v0, mpis:Lcom/mob/tools/network/MultiPartInputStream;
    iget-object v2, p0, Lcom/mob/tools/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/HTTPPart;

    .local v1, part:Lcom/mob/tools/network/HTTPPart;
    invoke-virtual {v1}, Lcom/mob/tools/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mob/tools/network/MultiPartInputStream;->addInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v1           #part:Lcom/mob/tools/network/HTTPPart;
    :cond_0
    return-object v0
.end method

.method protected length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .local v0, length:J
    iget-object v3, p0, Lcom/mob/tools/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/network/HTTPPart;

    .local v2, part:Lcom/mob/tools/network/HTTPPart;
    invoke-virtual {v2}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    .end local v2           #part:Lcom/mob/tools/network/HTTPPart;
    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mob/tools/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/HTTPPart;

    .local v0, part:Lcom/mob/tools/network/HTTPPart;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0           #part:Lcom/mob/tools/network/HTTPPart;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
