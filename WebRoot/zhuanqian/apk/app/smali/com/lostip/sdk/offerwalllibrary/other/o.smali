.class public Lcom/lostip/sdk/offerwalllibrary/other/o;
.super Lcom/lostip/sdk/offerwalllibrary/other/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/c",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/lostip/sdk/offerwalllibrary/entity/Point;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/c;-><init>()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/Point;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/o;->b:Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/o;->b:Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->amount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/o;->b:Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    iput-object p2, v0, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Lcom/lostip/sdk/offerwalllibrary/other/a;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/a;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/a;-><init>(SB)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/o;->b:Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V

    return-object v0
.end method
