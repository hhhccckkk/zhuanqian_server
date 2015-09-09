.class Lcom/lostip/sdk/offerwalllibrary/manager/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/manager/v;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/manager/g;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/g;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/i;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/i;)Lcom/lostip/sdk/offerwalllibrary/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/i;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/i;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Lcom/lostip/sdk/offerwalllibrary/manager/g;)Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a()Lcom/lostip/sdk/offerwalllibrary/manager/k;

    move-result-object v0

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/manager/j;

    invoke-direct {v1, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/j;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
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

    return-void
.end method
