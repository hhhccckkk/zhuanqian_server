.class public Lcom/lostip/sdk/offerwalllibrary/manager/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/r;


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/manager/v;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/lostip/sdk/offerwalllibrary/other/bf;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d:Ljava/util/List;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bf;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bf;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->e:Lcom/lostip/sdk/offerwalllibrary/other/bf;

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/r;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/r;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->f()V

    monitor-exit v2

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lostip/sdk/offerwalllibrary/manager/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->f()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a()Lcom/lostip/sdk/offerwalllibrary/other/bl;

    move-result-object v0

    const-string v1, "resumeReportEvents"

    new-instance v2, Lcom/lostip/sdk/offerwalllibrary/manager/s;

    invoke-direct {v2, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/s;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/r;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/bl;->a(Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)Lcom/lostip/sdk/offerwalllibrary/other/bk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->e:Lcom/lostip/sdk/offerwalllibrary/other/bf;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.lostip.offerwall.r"

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lostip/sdk/offerwalllibrary/other/bf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ac;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b()V

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/manager/v;

    invoke-interface {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/v;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    goto :goto_0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/manager/v;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/i;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/i;-><init>()V

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/manager/u;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b:Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/u;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/r;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/i;->a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/lostip/sdk/offerwalllibrary/manager/v;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->e:Lcom/lostip/sdk/offerwalllibrary/other/bf;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.lostip.offerwall.r"

    const-class v3, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lostip/sdk/offerwalllibrary/other/bf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a()V

    goto :goto_0
.end method
