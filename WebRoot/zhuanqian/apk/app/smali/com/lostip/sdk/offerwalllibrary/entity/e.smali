.class public Lcom/lostip/sdk/offerwalllibrary/entity/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_name"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "package_name"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "version"
    .end annotation
.end field

.field public d:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "has_sdk"
    .end annotation
.end field

.field public e:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "version_code"
    .end annotation
.end field

.field public f:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "is_system_app"
    .end annotation
.end field

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/e;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/e;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/lostip/sdk/offerwalllibrary/entity/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/lostip/sdk/offerwalllibrary/entity/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
