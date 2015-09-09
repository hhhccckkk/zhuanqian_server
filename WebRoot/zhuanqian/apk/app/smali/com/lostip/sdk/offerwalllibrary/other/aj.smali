.class public abstract Lcom/lostip/sdk/offerwalllibrary/other/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/other/bj;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/other/bk;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/other/ak;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/other/al;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->k:Z

    iput p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_POST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->e:Ljava/lang/String;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/am;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/am;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->f:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->h:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/aj;Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/String;ZLcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs declared-synchronized a(Ljava/lang/String;ZLcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ak;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/ak;)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {v0, p3}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;Lcom/lostip/sdk/offerwalllibrary/other/al;)V

    invoke-static {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;Z)V

    invoke-static {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->j:I

    if-ge v1, v2, :cond_5

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bk;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a()Lcom/lostip/sdk/offerwalllibrary/other/bl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bn;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a()Lcom/lostip/sdk/offerwalllibrary/other/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0, p4}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/bi;Lcom/lostip/sdk/offerwalllibrary/other/bj;[Ljava/lang/Object;)Lcom/lostip/sdk/offerwalllibrary/other/bk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p4}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a()Lcom/lostip/sdk/offerwalllibrary/other/bl;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0, p4}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/bi;Lcom/lostip/sdk/offerwalllibrary/other/bj;[Ljava/lang/Object;)Lcom/lostip/sdk/offerwalllibrary/other/bk;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p4}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->k:Z

    if-eqz v1, :cond_6

    invoke-static {v0, p4}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0, p1, p4}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Lcom/lostip/sdk/offerwalllibrary/other/al;)V

    return-void
.end method

.method private a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)V
    .locals 6

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->h:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/ak;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Lcom/lostip/sdk/offerwalllibrary/other/al;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->b(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->c(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Z

    move-result v3

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Lcom/lostip/sdk/offerwalllibrary/other/al;

    move-result-object v4

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->d(Lcom/lostip/sdk/offerwalllibrary/other/ak;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/String;ZLcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->b(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->d(Lcom/lostip/sdk/offerwalllibrary/other/ak;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->d()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c([Ljava/lang/Object;)V

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Lcom/lostip/sdk/offerwalllibrary/other/al;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c(Lcom/lostip/sdk/offerwalllibrary/other/al;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/lostip/sdk/offerwalllibrary/other/al;)V
    .locals 2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/lostip/sdk/offerwalllibrary/other/al;)V
    .locals 2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/al;
    .locals 4

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/al;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/al;->a(Lcom/lostip/sdk/offerwalllibrary/other/al;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Lcom/lostip/sdk/offerwalllibrary/other/al;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->f:Landroid/os/Handler;

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/al;->b(Lcom/lostip/sdk/offerwalllibrary/other/al;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/al;->a(Lcom/lostip/sdk/offerwalllibrary/other/al;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bk;
    .locals 4

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/bk;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public varargs a(Ljava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/String;ZLcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/al;

    invoke-direct {v0, p0, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/al;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/al;->a(I)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->f:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/al;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/lostip/sdk/offerwalllibrary/other/bk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bk;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a()Lcom/lostip/sdk/offerwalllibrary/other/bl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/al;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c:Ljava/lang/String;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/aj;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/ak;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs declared-synchronized c([Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
