.class public Lcom/lostip/sdk/offerwalllibrary/manager/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/g;


# instance fields
.field private b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:I

.field private g:J

.field private h:Lcom/lostip/sdk/offerwalllibrary/manager/p;

.field private i:Lcom/lostip/sdk/offerwalllibrary/manager/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->d:I

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/h;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/h;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/g;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->h:Lcom/lostip/sdk/offerwalllibrary/manager/p;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/i;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/i;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/g;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->i:Lcom/lostip/sdk/offerwalllibrary/manager/v;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/g;)Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->c:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-object v0
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/g;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/g;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/g;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/g;I)V
    .locals 0

    iput p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->f:I

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->c()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a(Z)V

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->f:I

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->g:J

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a()Lcom/lostip/sdk/offerwalllibrary/other/ax;

    move-result-object v1

    const-string v2, "lostip.offerwall/cache"

    invoke-virtual {v1, p1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a()Lcom/lostip/sdk/offerwalllibrary/other/ax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a(Z)V

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->d(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->e:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->e:Z

    :try_start_0
    const-string v1, "com.lostip.default"

    const-string v2, "_offerwall_ld"

    invoke-static {p1, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v1

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(I)Lcom/lostip/sdk/offerwalllibrary/entity/m;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->d:I

    :cond_1
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a()Lcom/lostip/sdk/offerwalllibrary/manager/n;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a()Lcom/lostip/sdk/offerwalllibrary/manager/n;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->h:Lcom/lostip/sdk/offerwalllibrary/manager/p;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a(Lcom/lostip/sdk/offerwalllibrary/manager/p;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a()Lcom/lostip/sdk/offerwalllibrary/manager/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->i:Lcom/lostip/sdk/offerwalllibrary/manager/v;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/manager/v;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->m()Lcom/lostip/sdk/offerwalllibrary/entity/h;

    move-result-object v0

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/h;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;->onSucceed(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->v:Lcom/lostip/sdk/offerwalllibrary/other/e;

    iget v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->K:I

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/e;->v:Lcom/lostip/sdk/offerwalllibrary/other/e;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/e;->a(Lcom/lostip/sdk/offerwalllibrary/other/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(ZLcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    goto :goto_0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-void
.end method

.method public b()Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;
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

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->b:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a()Lcom/lostip/sdk/offerwalllibrary/manager/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->i:Lcom/lostip/sdk/offerwalllibrary/manager/v;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b(Lcom/lostip/sdk/offerwalllibrary/manager/v;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->b()V

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->f:I

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->a(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->e:Z

    :goto_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->b(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lostip.default"

    const-string v2, "_offerwall_ld"

    invoke-static {p1, v1, v2, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(ZLcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    goto :goto_0
.end method

.method public b(Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->c:Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/g;->d:I

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lostip.offerwall.action.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
