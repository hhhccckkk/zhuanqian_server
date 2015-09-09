.class public final Lcom/jy/func/i/d;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "is"
    .parameter "os"

    .prologue
    .line 9
    const/16 v2, 0x400

    :try_start_0
    new-array v0, v2, [B

    .line 15
    .local v0, bytes:[B
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 16
    .local v1, count:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 17
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #bytes:[B
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 22
    :cond_0
    return-void
.end method
