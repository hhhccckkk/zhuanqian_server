.class public interface abstract Lcom/jy/func/w/n;
.super Ljava/lang/Object;
.source "CYZResponseHandlerInterface.java"


# virtual methods
.method public abstract a(Ljava/net/URI;)V
.end method

.method public abstract a(Lorg/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a([Lorg/apache/http/Header;)V
.end method

.method public abstract b(I[Lorg/apache/http/Header;[B)V
.end method

.method public abstract b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract df()[Lorg/apache/http/Header;
.end method

.method public abstract dg()Z
.end method

.method public abstract dh()V
.end method

.method public abstract di()V
.end method

.method public abstract dj()V
.end method

.method public abstract e(II)V
.end method

.method public abstract e(Z)V
.end method

.method public abstract getRequestURI()Ljava/net/URI;
.end method

.method public abstract m(I)V
.end method
