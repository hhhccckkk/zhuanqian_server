.class public Lcom/jy/func/i/a;
.super Ljava/lang/Object;
.source "FileCache.java"


# instance fields
.field private aw:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "JYList"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jy/func/i/a;->aw:Ljava/io/File;

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/jy/func/i/a;->aw:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/jy/func/i/a;->aw:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/i/a;->aw:Ljava/io/File;

    goto :goto_0
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


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/jy/func/i/a;->aw:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 41
    :cond_0
    return-void

    .line 39
    :cond_1
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final q(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "url"

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jy/func/i/a;->aw:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    return-object v1
.end method
