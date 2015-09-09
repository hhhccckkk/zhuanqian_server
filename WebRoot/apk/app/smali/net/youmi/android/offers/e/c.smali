.class public Lnet/youmi/android/offers/e/c;
.super Lnet/youmi/android/offers/e/a;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;IIIIII)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lnet/youmi/android/offers/e/a;-><init>(Landroid/content/Context;IIIIII)V

    const/4 v0, 0x2

    iput v0, p0, Lnet/youmi/android/offers/e/c;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/offers/e/c;->p:Ljava/lang/String;

    iput-object p2, p0, Lnet/youmi/android/offers/e/c;->j:Ljava/lang/String;

    iput-wide p3, p0, Lnet/youmi/android/offers/e/c;->h:J

    iput-object p5, p0, Lnet/youmi/android/offers/e/c;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v2, v0, :cond_7

    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/a/a/g/f/c;

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->f()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/youmi/android/a/b/k/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->d()I

    move-result v3

    if-nez v3, :cond_6

    if-nez v1, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    :cond_5
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_6
    move-object v0, v1

    move-object v1, v0

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/youmi/android/a/a/g/d/d;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/youmi/android/a/a/g/d/d;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lnet/youmi/android/a/a/g/d/d;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->k:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v0, "d"

    invoke-static {v6, v0, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "ad"

    invoke-static {v0, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    :try_start_0
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v2, "pn"

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-nez v9, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_2
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    :goto_2
    move v5, v3

    move v3, v2

    :goto_3
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "a"

    if-eqz v5, :cond_2

    move v2, v4

    :goto_4
    invoke-virtual {v10, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    const-string v2, "d"

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    :goto_5
    const-string v3, "e"

    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "localr"

    invoke-virtual {v8, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move v2, v1

    :goto_6
    move v3, v1

    move v5, v2

    goto :goto_3

    :cond_2
    move v2, v1

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v2

    move v2, v4

    goto :goto_6

    :cond_4
    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v1

    move v3, v1

    goto :goto_2
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput v3, p0, Lnet/youmi/android/offers/e/c;->o:I

    iput-object p1, p0, Lnet/youmi/android/offers/e/c;->k:Ljava/lang/String;

    iput-object p1, p0, Lnet/youmi/android/offers/e/c;->p:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->k:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "d"

    invoke-static {v0, v1, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "can\'t get data of list! error key : d"

    invoke-static {v0}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "rsd"

    const-string v1, ""

    invoke-static {v4, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    const-string v5, ""

    invoke-static {v4, v1, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v5, v1}, Lnet/youmi/android/a/a/g/c/a/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v1, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lnet/youmi/android/a/a/g/c/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/f;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/offers/d/b/h;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    const-string v0, "u"

    const-string v1, ""

    invoke-static {v4, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->I()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "ts"

    invoke-static {v4, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {}, Lnet/youmi/android/a/a/j/a/b;->a()Lnet/youmi/android/a/a/j/a/b;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/youmi/android/a/a/j/a/b;->a(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lnet/youmi/android/offers/OffersManager;->isUsingServerCallBack()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lnet/youmi/android/offers/OffersBrowserConfig;->setPointsLayoutVisibility(Z)V

    :cond_4
    :goto_3
    const-string v0, "ad"

    invoke-static {v4, v0, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v0, "can\'t get data of list! error key : ad"

    invoke-static {v0}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    invoke-static {}, Lnet/youmi/android/offers/OffersBrowserConfig;->isPointsLayoutVisbility()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-static {v1}, Lnet/youmi/android/offers/OffersBrowserConfig;->setPointsLayoutVisibility(Z)V

    sget-boolean v1, Lnet/youmi/android/offers/OffersBrowserConfig;->isUsingSdkPointsUnitApi:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Lnet/youmi/android/offers/OffersBrowserConfig;->setPointsUnit(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_e

    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "wadid"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_7
    :try_start_3
    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "pn"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    const-string v4, "aid : %s has some pn problem, please contact us."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v0, "wadid"

    const-string v5, ""

    invoke-static {v4, v0, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    const-string v6, "name"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isr"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "er"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "at"

    const/4 v10, 0x0

    invoke-static {v4, v9, v10}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    new-instance v10, Lnet/youmi/android/a/a/g/f/c;

    invoke-direct {v10}, Lnet/youmi/android/a/a/g/f/c;-><init>()V

    invoke-virtual {v10, v5}, Lnet/youmi/android/a/a/g/f/c;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/g/f/c;->b(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Lnet/youmi/android/a/a/g/f/c;->c(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lnet/youmi/android/a/a/g/f/c;->a(I)V

    invoke-virtual {v10, v8}, Lnet/youmi/android/a/a/g/f/c;->b(I)V

    if-nez v7, :cond_d

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/g/f/c;->c(I)V

    :goto_8
    invoke-virtual {v10, v9}, Lnet/youmi/android/a/a/g/f/c;->d(I)V

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "urlt"

    const/4 v6, 0x0

    invoke-static {v4, v0, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    const-string v0, "url"

    const/4 v6, 0x0

    invoke-static {v4, v0, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/g/f/c;->c(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lnet/youmi/android/offers/e/c;->e()V

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    invoke-direct {p0, v0}, Lnet/youmi/android/offers/e/c;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lnet/youmi/android/offers/e/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/offers/e/c;->p:Ljava/lang/String;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lnet/youmi/android/offers/e/c;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/offers/e/c;->p:Ljava/lang/String;

    return-void
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/offers/e/c;->o:I

    return-void
.end method

.method protected d()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lnet/youmi/android/offers/e/c;->o:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lnet/youmi/android/a/a/e/f/a;->a()Lnet/youmi/android/a/a/e/f/a;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/youmi/android/a/a/e/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->n:Ljava/util/List;

    invoke-direct {p0, v0}, Lnet/youmi/android/offers/e/c;->b(Ljava/util/List;)V

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->m:Ljava/util/List;

    invoke-direct {p0, v0}, Lnet/youmi/android/offers/e/c;->b(Ljava/util/List;)V

    iget-object v0, p0, Lnet/youmi/android/offers/e/c;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lnet/youmi/android/offers/e/c;->b(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :pswitch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/offers/e/c;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/youmi/android/offers/e/c;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/youmi/android/offers/e/c;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/offers/e/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/youmi/android/offers/e/c;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/youmi/android/offers/e/c;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lnet/youmi/android/offers/e/c;->a()V

    return-void
.end method
