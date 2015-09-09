.class public Lnet/midi/wall/sdk/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/io/File;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lnet/midi/wall/sdk/b/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "chmod"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "705"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lnet/midi/wall/sdk/d/c;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lnet/midi/wall/sdk/b/f;->a:I

    iput v0, p0, Lnet/midi/wall/sdk/b/f;->b:I

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/midi/wall/sdk/b/f;->c:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/b/g;->a()Lnet/midi/wall/sdk/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/midi/wall/sdk/b/f;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lnet/midi/wall/sdk/b/f;)Z
    .locals 2

    iget v0, p0, Lnet/midi/wall/sdk/b/f;->a:I

    iget v1, p1, Lnet/midi/wall/sdk/b/f;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/midi/wall/sdk/b/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/midi/wall/sdk/b/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/midi/wall/sdk/b/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/midi/wall/sdk/b/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lnet/midi/wall/sdk/b/f;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lnet/midi/wall/sdk/b/f;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lnet/midi/wall/sdk/b/f;->h()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
