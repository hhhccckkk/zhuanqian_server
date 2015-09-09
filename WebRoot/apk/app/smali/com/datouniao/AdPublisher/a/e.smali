.class public Lcom/datouniao/AdPublisher/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/datouniao/AdPublisher/a/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/ArrayList;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/a/e;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/a/e;->a:Lcom/datouniao/AdPublisher/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datouniao/AdPublisher/a/e;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/datouniao/AdPublisher/a/e;->a:Lcom/datouniao/AdPublisher/a/e;

    :cond_0
    sget-object v0, Lcom/datouniao/AdPublisher/a/e;->a:Lcom/datouniao/AdPublisher/a/e;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datouniao/AdPublisher/a/d;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private b(Lcom/datouniao/AdPublisher/a/d;)V
    .locals 4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)J

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v1, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/datouniao/AdPublisher/a/e;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/a/e;->e:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private c(Lcom/datouniao/AdPublisher/a/d;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->l()I

    move-result v0

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->m()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/a/e;->d(Lcom/datouniao/AdPublisher/a/d;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/a/e;->e:Z

    return-void
.end method

.method private d(Lcom/datouniao/AdPublisher/a/d;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/datouniao/AdPublisher/a/a;->b(Lcom/datouniao/AdPublisher/a/d;)I

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->o()V

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/service/AdsService;->callAdsServiceFeedBack(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/datouniao/AdPublisher/a/d;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/datouniao/AdPublisher/a/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/a/e;->c(Lcom/datouniao/AdPublisher/a/d;)V

    goto :goto_1
.end method

.method public a(J)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    const-wide/32 v1, 0x5265c00

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/a;->b()I

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->d()V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->f()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->h()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    mul-long v6, p1, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/a/e;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/datouniao/AdPublisher/a/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/datouniao/AdPublisher/a/a;->a(Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->d()V

    goto :goto_0
.end method

.method public a(Lcom/datouniao/AdPublisher/a/d;)Z
    .locals 4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/datouniao/AdPublisher/a/a;->c(Lcom/datouniao/AdPublisher/a/d;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/a/e;->b(Lcom/datouniao/AdPublisher/a/d;)V

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->d()V

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/datouniao/AdPublisher/a/d;

    invoke-direct {v1}, Lcom/datouniao/AdPublisher/a/d;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/datouniao/AdPublisher/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/datouniao/AdPublisher/a/e;->d(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/datouniao/AdPublisher/a/e;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/datouniao/AdPublisher/a/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/datouniao/AdPublisher/a/a;->a(Lcom/datouniao/AdPublisher/a/d;)I

    invoke-direct {p0, v1}, Lcom/datouniao/AdPublisher/a/e;->b(Lcom/datouniao/AdPublisher/a/d;)V

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->d()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/datouniao/AdPublisher/a/e;->a(Lcom/datouniao/AdPublisher/a/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;
    .locals 3

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;
    .locals 3

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/a/e;->c()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
