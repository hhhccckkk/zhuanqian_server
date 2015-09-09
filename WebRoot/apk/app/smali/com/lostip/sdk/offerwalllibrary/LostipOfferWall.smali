.class public Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static final destroy(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static final getPoint(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a()Lcom/lostip/sdk/offerwalllibrary/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static final open(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    return-void
.end method

.method public static final setOnActivatedListener(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->b(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    return-void
.end method

.method public static final setOnCloseListener(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    return-void
.end method

.method public static final setPlatformId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final usePoint(ILjava/lang/String;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a()Lcom/lostip/sdk/offerwalllibrary/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a(ILjava/lang/String;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    return-void
.end method
