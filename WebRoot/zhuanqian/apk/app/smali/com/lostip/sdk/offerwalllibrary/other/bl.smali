.class public Lcom/lostip/sdk/offerwalllibrary/other/bl;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/lostip/sdk/offerwalllibrary/other/bl;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/other/bk;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/lostip/sdk/offerwalllibrary/other/bm;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/other/bn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "thread_lock"

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->c:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->d:I

    const v0, 0x1869f

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->f:I

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bm;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/bl;Lcom/lostip/sdk/offerwalllibrary/other/bm;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->g:Lcom/lostip/sdk/offerwalllibrary/other/bm;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->h:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/other/bl;
    .locals 2

    const-string v1, "instance_lock"

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->b:Lcom/lostip/sdk/offerwalllibrary/other/bl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bl;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bl;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->b:Lcom/lostip/sdk/offerwalllibrary/other/bl;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->b:Lcom/lostip/sdk/offerwalllibrary/other/bl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V
    .locals 5

    const-string v2, "thread_lock"

    monitor-enter v2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->h:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->setName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    iget-object v3, v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a(Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;->d:Lcom/lostip/sdk/offerwalllibrary/other/bj;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;->d:Lcom/lostip/sdk/offerwalllibrary/other/bj;

    invoke-interface {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bj;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->c:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gtz v1, :cond_4

    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    const-string v0, "free"

    invoke-virtual {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->e()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a(Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/bk;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->b()I

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->c:I

    if-lt v0, v3, :cond_2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/bl;Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V

    return-void
.end method

.method private a(Lcom/lostip/sdk/offerwalllibrary/other/bk;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/lostip/sdk/offerwalllibrary/other/bk;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    :goto_1
    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/bk;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->d()Lcom/lostip/sdk/offerwalllibrary/other/bi;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->b()I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public varargs declared-synchronized a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/bi;Lcom/lostip/sdk/offerwalllibrary/other/bj;[Ljava/lang/Object;)Lcom/lostip/sdk/offerwalllibrary/other/bk;
    .locals 3

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4efb\u52a1\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->b()Lcom/lostip/sdk/offerwalllibrary/other/bk;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->f:I

    if-ge v1, v2, :cond_2

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bk;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->g:Lcom/lostip/sdk/offerwalllibrary/other/bm;

    invoke-direct {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/bh;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p4}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a(Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/other/bn;

    invoke-direct {v1, p0}, Lcom/lostip/sdk/offerwalllibrary/other/bn;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/bl;)V

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iput-object p1, v1, Lcom/lostip/sdk/offerwalllibrary/other/bn;->c:Ljava/lang/String;

    iput-object p2, v1, Lcom/lostip/sdk/offerwalllibrary/other/bn;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    iput-object p4, v1, Lcom/lostip/sdk/offerwalllibrary/other/bn;->b:[Ljava/lang/Object;

    iput-object p3, v1, Lcom/lostip/sdk/offerwalllibrary/other/bn;->d:Lcom/lostip/sdk/offerwalllibrary/other/bj;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->h:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p4}, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a(Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public varargs declared-synchronized a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)Lcom/lostip/sdk/offerwalllibrary/other/bk;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/bi;Lcom/lostip/sdk/offerwalllibrary/other/bj;[Ljava/lang/Object;)Lcom/lostip/sdk/offerwalllibrary/other/bk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/bn;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bl;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;

    iget-object v2, v0, Lcom/lostip/sdk/offerwalllibrary/other/bn;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
