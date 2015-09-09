.class Lcom/lostip/sdk/offerwalllibrary/manager/m;
.super Lcom/lostip/sdk/offerwalllibrary/other/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/f",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/lostip/sdk/offerwalllibrary/manager/k;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/k;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/m;->c:Lcom/lostip/sdk/offerwalllibrary/manager/k;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/f;-><init>()V

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/m;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/m;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/m;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    iget v1, p3, Lcom/lostip/sdk/offerwalllibrary/other/e;->K:I

    invoke-static {p3}, Lcom/lostip/sdk/offerwalllibrary/other/e;->a(Lcom/lostip/sdk/offerwalllibrary/other/e;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;->onError(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-direct {v1, p1}, Lcom/lostip/sdk/offerwalllibrary/entity/Point;-><init>(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/m;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/m;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    invoke-interface {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;->onSucceed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/m;->a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/m;->a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V

    return-void
.end method
