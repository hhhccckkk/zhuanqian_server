.class public Lcom/lostip/sdk/offerwalllibrary/other/bk;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

.field private b:J

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Lcom/lostip/sdk/offerwalllibrary/other/bh;


# direct methods
.method protected constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/bh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->f:Lcom/lostip/sdk/offerwalllibrary/other/bh;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->d:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected varargs a(Lcom/lostip/sdk/offerwalllibrary/other/bi;[Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->c:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->d:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->e:Ljava/lang/Object;

    return-void
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->d:I

    return v0
.end method

.method protected c()J
    .locals 2

    iget-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->b:J

    return-wide v0
.end method

.method public d()Lcom/lostip/sdk/offerwalllibrary/other/bi;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    return-object v0
.end method

.method protected e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->c:[Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 7

    const/16 v6, 0xa

    :goto_0
    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->f:Lcom/lostip/sdk/offerwalllibrary/other/bh;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bh;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->c:[Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/bi;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    invoke-interface {v1, v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/bi;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/bk;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->b:J

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->f:Lcom/lostip/sdk/offerwalllibrary/other/bh;

    invoke-interface {v0, p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/bh;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Thread error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    invoke-interface {v0, v1, p0}, Lcom/lostip/sdk/offerwalllibrary/other/bi;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/bk;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->b:J

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->f:Lcom/lostip/sdk/offerwalllibrary/other/bh;

    invoke-interface {v0, p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/bh;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->a:Lcom/lostip/sdk/offerwalllibrary/other/bi;

    invoke-interface {v2, v1, p0}, Lcom/lostip/sdk/offerwalllibrary/other/bi;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/bk;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->b:J

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bk;->f:Lcom/lostip/sdk/offerwalllibrary/other/bh;

    invoke-interface {v1, p0, v6}, Lcom/lostip/sdk/offerwalllibrary/other/bh;->a(Lcom/lostip/sdk/offerwalllibrary/other/bk;I)V

    throw v0
.end method
