.class public Lnet/youmi/android/offers/f/f;
.super Lnet/youmi/android/a/b/g/c;


# static fields
.field private static a:Lnet/youmi/android/offers/f/f;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/b/g/c/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/b/g/c;-><init>(Landroid/content/Context;Lnet/youmi/android/a/b/g/c/a;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/offers/f/f;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lnet/youmi/android/offers/f/f;
    .locals 4

    const-class v1, Lnet/youmi/android/offers/f/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/youmi/android/offers/f/f;->a:Lnet/youmi/android/offers/f/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lnet/youmi/android/offers/f/f;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lnet/youmi/android/a/a/d/a/b;->b(Landroid/content/Context;I)Lnet/youmi/android/a/a/d/a/a;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lnet/youmi/android/offers/f/f;-><init>(Landroid/content/Context;Lnet/youmi/android/a/b/g/c/a;)V

    sput-object v2, Lnet/youmi/android/offers/f/f;->a:Lnet/youmi/android/offers/f/f;

    :cond_0
    sget-object v0, Lnet/youmi/android/offers/f/f;->a:Lnet/youmi/android/offers/f/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lnet/youmi/android/offers/f/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/offers/f/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/youmi/android/a/b/k/h;->a(Ljava/io/File;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lnet/youmi/android/a/b/g/e/a;ZZ)Z
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    sget-object v2, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lnet/youmi/android/offers/f/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v3

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v4}, Lnet/youmi/android/offers/f/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".zip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v4

    new-instance v1, Ljava/io/File;

    sget-object v2, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lnet/youmi/android/offers/f/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v1

    move v2, v1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lnet/youmi/android/a/b/g/e/a;->g()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/offers/f/f;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, -0x1

    iget v0, p0, Lnet/youmi/android/offers/f/f;->c:I

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    sget-object v1, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/offers/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/youmi/android/offers/f/f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/offers/f/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    sget-object v1, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/offers/f/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/offers/f/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_1
    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    sget-object v1, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/offers/f/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v3, v4}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_2
    return-void
.end method

.method private declared-synchronized o(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/a/b/g/e/a;->g()Ljava/io/File;

    move-result-object v7

    new-instance v5, Ljava/io/File;

    sget-object v0, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/offers/f/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    sget-object v0, Lnet/youmi/android/offers/f/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/offers/f/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0, v8}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v0

    invoke-direct {p0, v5}, Lnet/youmi/android/offers/f/f;->a(Ljava/io/File;)Z

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v8}, Lnet/youmi/android/a/b/k/h;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v7, v0}, Lnet/youmi/android/a/b/k/h;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez v0, :cond_2

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lnet/youmi/android/offers/f/g;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lnet/youmi/android/offers/f/g;-><init>(Lnet/youmi/android/offers/f/f;JLjava/io/File;Ljava/io/File;Lnet/youmi/android/a/b/g/e/a;Ljava/io/File;Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-static {v8, v9, v0, v1}, Lnet/youmi/android/a/b/k/p;->a(Ljava/io/File;Ljava/lang/String;Lnet/youmi/android/a/b/k/a/a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/offers/f/f;->c:I

    return-void
.end method

.method protected a(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/offers/f/f;->d:Ljava/lang/String;

    return-void
.end method

.method protected b(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 0

    return-void
.end method

.method protected b(Lnet/youmi/android/a/b/g/e/a;JJIJ)V
    .locals 0

    return-void
.end method

.method public g_(Lnet/youmi/android/a/b/g/e/a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lnet/youmi/android/a/b/g/e/a;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lnet/youmi/android/offers/f/a;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lnet/youmi/android/offers/f/f;->d:Ljava/lang/String;

    invoke-static {v3}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lnet/youmi/android/a/b/g/e/a;->g()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/d/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/youmi/android/offers/f/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1, v1}, Lnet/youmi/android/offers/f/f;->a(Lnet/youmi/android/a/b/g/e/a;ZZ)Z

    const-string v3, "ow md5 error!\nonline md5: %s\nlocal md5 : %s\nplease try to re-download."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lnet/youmi/android/offers/f/f;->d:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0
.end method

.method protected k(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/offers/f/f;->o(Lnet/youmi/android/a/b/g/e/a;)V

    return-void
.end method

.method protected l(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 1

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    return-void
.end method

.method protected m(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/offers/f/f;->o(Lnet/youmi/android/a/b/g/e/a;)V

    return-void
.end method

.method protected n(Lnet/youmi/android/a/b/g/e/a;)V
    .locals 0

    return-void
.end method
