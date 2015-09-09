.class public Lcom/lostip/sdk/offerwalllibrary/entity/c;
.super Ljava/lang/Object;


# instance fields
.field public compressible:Z

.field public hasCommonParams:Z

.field private mode:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "mode"
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "model"
    .end annotation
.end field

.field public network:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "network"
    .end annotation
.end field

.field private os:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "os"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->hasCommonParams:Z

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->compressible:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->os:Ljava/lang/Integer;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->model:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->mode:Ljava/lang/Integer;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/c;->network:Ljava/lang/Integer;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
