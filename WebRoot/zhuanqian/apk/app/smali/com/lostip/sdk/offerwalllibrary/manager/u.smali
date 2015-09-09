.class Lcom/lostip/sdk/offerwalllibrary/manager/u;
.super Lcom/lostip/sdk/offerwalllibrary/other/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/f",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/n;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/lostip/sdk/offerwalllibrary/manager/r;


# direct methods
.method public constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/r;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->c:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/f;-><init>()V

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/n;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->c:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/manager/r;Ljava/util/List;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->c:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/manager/v;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/v;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/n;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->c:Lcom/lostip/sdk/offerwalllibrary/manager/r;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/manager/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/manager/v;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/v;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/other/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Lcom/lostip/sdk/offerwalllibrary/other/a;)V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/n;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/n;-><init>()V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/u;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/n;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/u;->a(Lcom/lostip/sdk/offerwalllibrary/entity/n;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/u;->a(Lcom/lostip/sdk/offerwalllibrary/entity/n;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V

    return-void
.end method
