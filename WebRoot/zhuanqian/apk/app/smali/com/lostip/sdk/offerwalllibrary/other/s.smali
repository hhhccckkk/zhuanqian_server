.class public Lcom/lostip/sdk/offerwalllibrary/other/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/other/s;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/lostip/sdk/offerwalllibrary/entity/h;

.field private i:J

.field private j:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/j;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/lostip/sdk/offerwalllibrary/entity/Point;

.field private o:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BC8F90EE5F74B18DAFB1DB14B017F56E2D322312B94D7FA1E9ED51FADA13F4820EB9BDC04A0848722025C49D0B6ABC935E200EE937261203E36805C6CA8EADB3"

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/other/s;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/s;->a:Lcom/lostip/sdk/offerwalllibrary/other/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/s;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/s;->a:Lcom/lostip/sdk/offerwalllibrary/other/s;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/s;->a:Lcom/lostip/sdk/offerwalllibrary/other/s;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/f;)V
    .locals 6

    :try_start_0
    invoke-static {p2}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    const-string v2, "com.lostip.default"

    const-string v3, "_ck"

    new-instance v4, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b([B)[B

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2, v3, v4}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Lcom/lostip/sdk/offerwalllibrary/entity/f;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "com.lostip.default"

    const-string v2, "_ck"

    invoke-static {p1, v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->c([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-static {v2, v0}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->i:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lostip_id"

    invoke-static {p1, v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->c:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->b(Landroid/content/Context;)Lcom/lostip/sdk/offerwalllibrary/entity/j;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->j:Ljava/lang/ref/SoftReference;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->f:Ljava/util/ArrayList;

    :goto_0
    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->c(Landroid/content/Context;)Lcom/lostip/sdk/offerwalllibrary/entity/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/i;

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/i;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/i;->b:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "10001"

    invoke-static {v1, p2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/w;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "10001"

    invoke-static {v0, p2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/w;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/lostip/sdk/offerwalllibrary/entity/i;

    invoke-direct {v3, v2, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    invoke-static {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/af;->a(IZ)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/af;->a(IZ)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-direct {v2}, Lcom/lostip/sdk/offerwalllibrary/entity/f;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/lostip/sdk/offerwalllibrary/entity/f;->h:Ljava/util/List;

    iget-object v3, v2, Lcom/lostip/sdk/offerwalllibrary/entity/f;->h:Ljava/util/List;

    new-instance v4, Lcom/lostip/sdk/offerwalllibrary/entity/i;

    invoke-direct {v4, v1, v0}, Lcom/lostip/sdk/offerwalllibrary/entity/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/lostip/sdk/offerwalllibrary/entity/f;->i:Ljava/lang/Long;

    invoke-direct {p0, p1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/f;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->n:Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->h:Lcom/lostip/sdk/offerwalllibrary/entity/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->k:Ljava/lang/String;

    return-void
.end method

.method public a(ZLcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->l:Z

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->m:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->c(Landroid/content/Context;)Lcom/lostip/sdk/offerwalllibrary/entity/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->i:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/f;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->b([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    const-string v2, "com.lostip.default"

    const-string v3, "_offerwall_ds"

    invoke-static {v1, v2, v3, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    const-string v1, "com.lostip.default"

    const-string v2, "_offerwall_ds"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->l:Z

    return v0
.end method

.method public e()Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->m:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x32

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->o:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/lostip/sdk/offerwalllibrary/entity/j;
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->j:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->b(Landroid/content/Context;)Lcom/lostip/sdk/offerwalllibrary/entity/j;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->j:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    const-string v1, "com.lostip.default"

    const-string v2, "_offerwall_ds"

    invoke-static {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->a()Lcom/lostip/sdk/offerwalllibrary/manager/c;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/c;->c([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "00000000000000000000000000000000"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public m()Lcom/lostip/sdk/offerwalllibrary/entity/h;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->h:Lcom/lostip/sdk/offerwalllibrary/entity/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/h;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/h;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->h:Lcom/lostip/sdk/offerwalllibrary/entity/h;

    goto :goto_0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->i:J

    return-wide v0
.end method

.method public o()Z
    .locals 2

    const-string v0, "00000000000000000000000000000000"

    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ac;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/s;->o:Ljava/lang/String;

    return-object v0
.end method
