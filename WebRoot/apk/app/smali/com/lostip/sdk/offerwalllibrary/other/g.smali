.class public Lcom/lostip/sdk/offerwalllibrary/other/g;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/c;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/lostip/sdk/offerwalllibrary/other/a;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/a;

    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/a;-><init>(SB)V

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-direct {v1}, Lcom/lostip/sdk/offerwalllibrary/entity/Point;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V

    return-object v0
.end method
