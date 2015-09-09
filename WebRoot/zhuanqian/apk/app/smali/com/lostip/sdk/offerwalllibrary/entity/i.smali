.class public Lcom/lostip/sdk/offerwalllibrary/entity/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "sign"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "sign_iv"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/i;->b:Ljava/lang/String;

    return-void
.end method
