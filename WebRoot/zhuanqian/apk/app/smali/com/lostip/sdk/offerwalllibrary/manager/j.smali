.class Lcom/lostip/sdk/offerwalllibrary/manager/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/manager/i;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/i;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/j;->a:Lcom/lostip/sdk/offerwalllibrary/manager/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/j;->a:Lcom/lostip/sdk/offerwalllibrary/manager/i;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/i;->a(Lcom/lostip/sdk/offerwalllibrary/manager/i;)Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Lcom/lostip/sdk/offerwalllibrary/manager/g;)Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/j;->a:Lcom/lostip/sdk/offerwalllibrary/manager/i;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/i;->a(Lcom/lostip/sdk/offerwalllibrary/manager/i;)Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Lcom/lostip/sdk/offerwalllibrary/manager/g;)Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;->onSucceed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/j;->a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V

    return-void
.end method
