.class public Lnet/midi/wall/sdk/b/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Lnet/midi/wall/sdk/b/e;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/b/e;->b:Lnet/midi/wall/sdk/b/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/midi/wall/sdk/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/b/e;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/b/e;->b:Lnet/midi/wall/sdk/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/b/e;

    invoke-direct {v0}, Lnet/midi/wall/sdk/b/e;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/b/e;->b:Lnet/midi/wall/sdk/b/e;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/b/e;->b:Lnet/midi/wall/sdk/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    .locals 2

    const-string v0, "version"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/midi/wall/sdk/b/h;->b(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private a(Lnet/midi/wall/sdk/b/h;)Z
    .locals 7

    invoke-virtual {p1}, Lnet/midi/wall/sdk/b/h;->d()Lnet/midi/wall/sdk/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/f;->d()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/f;->f()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/midi/wall/sdk/b/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    iget-object v3, v1, Lnet/midi/wall/sdk/b/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lnet/midi/wall/sdk/b/e;->a(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v2}, Lnet/midi/wall/sdk/b/e;->b(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v2}, Lnet/midi/wall/sdk/b/e;->c(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v2}, Lnet/midi/wall/sdk/b/e;->d(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v2}, Lnet/midi/wall/sdk/b/e;->e(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/f;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/f;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/f;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
.end method

.method private b(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const-string v1, "init"

    invoke-virtual {p2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private b(Lnet/midi/wall/sdk/b/h;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnet/midi/wall/sdk/b/h;->d()Lnet/midi/wall/sdk/b/f;

    move-result-object v1

    new-instance v2, Lnet/midi/wall/sdk/b/h;

    invoke-direct {v2, v1}, Lnet/midi/wall/sdk/b/h;-><init>(Lnet/midi/wall/sdk/b/f;)V

    invoke-virtual {p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lnet/midi/wall/sdk/b/e;->a(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lnet/midi/wall/sdk/b/e;->b(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lnet/midi/wall/sdk/b/e;->c(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lnet/midi/wall/sdk/b/e;->d(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lnet/midi/wall/sdk/b/e;->e(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "execute"

    invoke-virtual {p2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/midi/wall/sdk/b/h;->c(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private d(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    .locals 2

    const-string v0, "finish"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/midi/wall/sdk/b/h;->d(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private e(Lnet/midi/wall/sdk/b/h;Ljava/lang/Class;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "setUserActivity"

    invoke-virtual {p2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/midi/wall/sdk/b/h;->e(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lnet/midi/wall/sdk/b/h;)Z
    .locals 1

    iput-object p1, p0, Lnet/midi/wall/sdk/b/e;->a:Landroid/content/Context;

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lnet/midi/wall/sdk/b/e;->b(Lnet/midi/wall/sdk/b/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lnet/midi/wall/sdk/b/e;->a(Lnet/midi/wall/sdk/b/h;)Z

    move-result v0

    goto :goto_0
.end method
