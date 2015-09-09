.class Lcom/lostip/sdk/offerwalllibrary/manager/s;
.super Lcom/lostip/sdk/offerwalllibrary/other/bg;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/manager/r;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/r;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/s;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/s;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/s;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-static {v2}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/s;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-static {v2}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/s;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-static {v2}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c(Lcom/lostip/sdk/offerwalllibrary/manager/r;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/lostip/sdk/offerwalllibrary/other/i;

    invoke-direct {v2}, Lcom/lostip/sdk/offerwalllibrary/other/i;-><init>()V

    new-instance v3, Lcom/lostip/sdk/offerwalllibrary/manager/u;

    iget-object v4, p0, Lcom/lostip/sdk/offerwalllibrary/manager/s;->a:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-direct {v3, v4, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/u;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/r;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/i;->a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/i;->b()V

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
