.class public Lcom/lostip/sdk/offerwalllibrary/manager/b;
.super Lcom/lostip/sdk/offerwalllibrary/other/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/f",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/f;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/lostip/sdk/offerwalllibrary/manager/b;


# instance fields
.field private c:Lcom/lostip/sdk/offerwalllibrary/other/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/f;-><init>()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/d;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/d;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/b;->c:Lcom/lostip/sdk/offerwalllibrary/other/d;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/b;->c:Lcom/lostip/sdk/offerwalllibrary/other/d;

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/d;->a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/b;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b:Lcom/lostip/sdk/offerwalllibrary/manager/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/b;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b:Lcom/lostip/sdk/offerwalllibrary/manager/b;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b:Lcom/lostip/sdk/offerwalllibrary/manager/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/f;Lcom/lostip/sdk/offerwalllibrary/other/b;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v0

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/e;->a:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a(Lcom/lostip/sdk/offerwalllibrary/entity/f;)V

    :cond_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a(Landroid/content/Context;)Ljava/util/List;

    invoke-super {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-virtual {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a(Lcom/lostip/sdk/offerwalllibrary/entity/f;Lcom/lostip/sdk/offerwalllibrary/other/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/f;)V
    .locals 7

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->d:Lcom/lostip/sdk/offerwalllibrary/entity/h;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Lcom/lostip/sdk/offerwalllibrary/entity/h;)V

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(J)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->d()V

    :cond_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->c(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/q;->a()Lcom/lostip/sdk/offerwalllibrary/manager/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/q;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/f;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 3

    const-string v0, "\u9519\u8bef"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42Client ID\u9519\u8bef!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v2

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/f;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->e()Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/LostipOfferWall;->open(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(ZLcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/other/b;)V
    .locals 3

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a(Lcom/lostip/sdk/offerwalllibrary/entity/f;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a(Lcom/lostip/sdk/offerwalllibrary/entity/f;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/b;->c:Lcom/lostip/sdk/offerwalllibrary/other/d;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/d;->b()V

    return-void
.end method

.method public b(Lcom/lostip/sdk/offerwalllibrary/entity/f;)V
    .locals 3

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/lostip/sdk/offerwalllibrary/entity/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/lostip/sdk/offerwalllibrary/other/b;)V
    .locals 2

    const-string v0, "\u9519\u8bef"

    const-string v1, "PLATFORM ID\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(Lcom/lostip/sdk/offerwalllibrary/other/b;)V
    .locals 3

    const-string v0, "\u9519\u8bef"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42Client ID\u9519\u8bef\uff01"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v2

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
