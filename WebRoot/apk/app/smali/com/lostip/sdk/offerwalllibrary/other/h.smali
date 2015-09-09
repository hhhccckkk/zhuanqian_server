.class public Lcom/lostip/sdk/offerwalllibrary/other/h;
.super Lcom/lostip/sdk/offerwalllibrary/other/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/c",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/lostip/sdk/offerwalllibrary/entity/d;


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

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/a;-><init>(SB)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/h;->b:Lcom/lostip/sdk/offerwalllibrary/entity/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/h;->b:Lcom/lostip/sdk/offerwalllibrary/entity/d;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V

    :cond_0
    return-object v0
.end method
