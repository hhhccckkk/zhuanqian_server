.class public Lcom/lostip/sdk/offerwalllibrary/entity/f;
.super Lcom/lostip/sdk/offerwalllibrary/entity/c;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "public_key"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "client_id"
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "send_app_list"
    .end annotation
.end field

.field public d:Lcom/lostip/sdk/offerwalllibrary/entity/h;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "config"
    .end annotation
.end field

.field public e:Ljava/lang/Long;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "server_time"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "device_sign"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "offerwall_url"
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "key"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/i;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Long;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "generate_key_time"
    .end annotation
.end field

.field j:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "body"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/entity/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->a:Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->h:Ljava/util/List;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/g;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/g;-><init>()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/g;->a:Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/g;->b:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/g;->c:Ljava/lang/Integer;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/g;->d:Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->g()Lcom/lostip/sdk/offerwalllibrary/entity/j;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/g;->e:Lcom/lostip/sdk/offerwalllibrary/entity/j;

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v2

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a([B)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
