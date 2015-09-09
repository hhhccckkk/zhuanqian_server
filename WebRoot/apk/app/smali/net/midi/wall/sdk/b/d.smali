.class public Lnet/midi/wall/sdk/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/midi/wall/sdk/a/c;


# static fields
.field private static c:Lnet/midi/wall/sdk/b/d;


# instance fields
.field public a:Lnet/midi/wall/sdk/b/f;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/b/d;->c:Lnet/midi/wall/sdk/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/midi/wall/sdk/b/d;->b:Z

    new-instance v0, Lnet/midi/wall/sdk/b/f;

    invoke-direct {v0}, Lnet/midi/wall/sdk/b/f;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    iget-object v0, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/f;->a()V

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/midi/wall/sdk/b/d;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->g()V

    :cond_0
    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/b/d;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/b/d;->c:Lnet/midi/wall/sdk/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/b/d;

    invoke-direct {v0}, Lnet/midi/wall/sdk/b/d;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/b/d;->c:Lnet/midi/wall/sdk/b/d;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/b/d;->c:Lnet/midi/wall/sdk/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 5

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->g()V

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v1

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/midi/wall/sdk/b/i;->e(Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f40

    if-eq v1, v2, :cond_1

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v1

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/Integer;)V

    :cond_1
    invoke-static {v0}, Lnet/midi/wall/sdk/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lnet/midi/wall/sdk/d/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v2, v4}, Lnet/midi/wall/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lnet/midi/wall/sdk/b/f;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lnet/midi/wall/sdk/d/d;->a(Landroid/content/Context;Ljava/util/Date;)V

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->f()Z

    invoke-direct {p0}, Lnet/midi/wall/sdk/b/d;->i()V

    invoke-static {}, Lnet/midi/wall/sdk/c/b;->a()Lnet/midi/wall/sdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/c/b;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/c/b;->a()Lnet/midi/wall/sdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/c/b;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/midi/wall/sdk/a/d;->a()Lnet/midi/wall/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/a/d;->a()Lnet/midi/wall/sdk/a/d;

    move-result-object v1

    iget-object v2, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    invoke-virtual {v1, v0, v2, p0}, Lnet/midi/wall/sdk/a/d;->a(Landroid/content/Context;Lnet/midi/wall/sdk/b/f;Lnet/midi/wall/sdk/a/c;)Z

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/f;->d()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    iget-object v1, p0, Lnet/midi/wall/sdk/b/d;->a:Lnet/midi/wall/sdk/b/f;

    invoke-virtual {v0, v1}, Lnet/midi/wall/sdk/b/i;->a(Lnet/midi/wall/sdk/b/f;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/midi/wall/sdk/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v1

    const-class v2, Lnet/midi/wall/sdk/MyWallActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/midi/wall/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/midi/wall/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lnet/midi/wall/sdk/d/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    invoke-static {}, Lnet/midi/wall/sdk/b/g;->a()Lnet/midi/wall/sdk/b/g;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnet/midi/wall/sdk/b/g;->a()Lnet/midi/wall/sdk/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lnet/midi/wall/sdk/b/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
