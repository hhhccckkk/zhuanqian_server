.class public Lcom/lostip/sdk/offerwalllibrary/entity/Point;
.super Lcom/lostip/sdk/offerwalllibrary/entity/c;


# instance fields
.field public amount:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "amount"
    .end annotation
.end field

.field public balance:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "balance"
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "remark"
    .end annotation
.end field

.field public total:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "total"
    .end annotation
.end field

.field public used:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "used"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/entity/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V
    .locals 1

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/entity/c;-><init>()V

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->balance:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->balance:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->total:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->total:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->used:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->used:Ljava/lang/Integer;

    return-void
.end method
