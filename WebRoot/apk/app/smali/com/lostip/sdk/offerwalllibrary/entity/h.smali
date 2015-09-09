.class public Lcom/lostip/sdk/offerwalllibrary/entity/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "cfg_ad_auto_activation"
    .end annotation
.end field

.field public b:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "cfg_offerwall_switch"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/h;->a:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/h;->b:Ljava/lang/Integer;

    return-void
.end method
