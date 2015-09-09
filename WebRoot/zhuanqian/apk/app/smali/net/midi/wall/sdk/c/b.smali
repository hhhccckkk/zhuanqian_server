.class public Lnet/midi/wall/sdk/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/midi/wall/sdk/c/b;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/c/b;->a:Lnet/midi/wall/sdk/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/c/b;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/c/b;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/c/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/c/b;->a:Lnet/midi/wall/sdk/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/c/b;

    invoke-direct {v0}, Lnet/midi/wall/sdk/c/b;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/c/b;->a:Lnet/midi/wall/sdk/c/b;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/c/b;->a:Lnet/midi/wall/sdk/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lnet/midi/wall/sdk/c/a;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/midi/wall/sdk/c/a;

    invoke-virtual {v0, p1}, Lnet/midi/wall/sdk/c/a;->a(Lnet/midi/wall/sdk/c/a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lnet/midi/wall/sdk/c/a;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lnet/midi/wall/sdk/c/b;->b(Lnet/midi/wall/sdk/c/a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lnet/midi/wall/sdk/c/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lnet/midi/wall/sdk/c/b;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/midi/wall/sdk/c/a;

    invoke-virtual {v0}, Lnet/midi/wall/sdk/c/a;->b()Ljava/lang/Boolean;

    iget-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
