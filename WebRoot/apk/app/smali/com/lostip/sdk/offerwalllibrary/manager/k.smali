.class public Lcom/lostip/sdk/offerwalllibrary/manager/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/k;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a:Lcom/lostip/sdk/offerwalllibrary/manager/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/k;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/k;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a:Lcom/lostip/sdk/offerwalllibrary/manager/k;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/k;->a:Lcom/lostip/sdk/offerwalllibrary/manager/k;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 2
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

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/o;

    invoke-direct {v0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/o;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/manager/m;

    invoke-direct {v1, p0, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/m;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/k;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/o;->a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/o;->b()V

    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/g;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/g;-><init>()V

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/manager/l;

    invoke-direct {v1, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/l;-><init>(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/g;->a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/g;->b()V

    return-void
.end method
