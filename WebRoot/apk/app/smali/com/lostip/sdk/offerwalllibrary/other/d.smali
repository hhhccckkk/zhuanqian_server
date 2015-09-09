.class public Lcom/lostip/sdk/offerwalllibrary/other/d;
.super Lcom/lostip/sdk/offerwalllibrary/other/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/c",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/c;-><init>()V

    return-void
.end method

.method static c()Lcom/lostip/sdk/offerwalllibrary/other/a;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/a;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/a;-><init>(SB)V

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-direct {v1}, Lcom/lostip/sdk/offerwalllibrary/entity/f;-><init>()V

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/entity/f;->a()V

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V

    return-object v0
.end method


# virtual methods
.method a()Lcom/lostip/sdk/offerwalllibrary/other/a;
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/d;->c()Lcom/lostip/sdk/offerwalllibrary/other/a;

    move-result-object v0

    return-object v0
.end method
