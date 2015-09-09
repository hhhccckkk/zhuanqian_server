.class public Lnet/youmi/android/a/a/g/d/b/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/k/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lnet/youmi/android/a/b/i/a/b;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lnet/youmi/android/a/b/i/a/b;

    invoke-direct {v0}, Lnet/youmi/android/a/b/i/a/b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "none"

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/i/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/a/c/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/i/a/b;->a(I)V

    invoke-virtual {v0, p0}, Lnet/youmi/android/a/b/i/a/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lnet/youmi/android/a/a/g/d/b/b;

    invoke-direct {v0, p0}, Lnet/youmi/android/a/a/g/d/b/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lnet/youmi/android/a/a/g/d/b/c;)Z
    .locals 1

    invoke-static {p0, p1}, Lnet/youmi/android/a/a/g/d/b/a;->b(Landroid/content/Context;Lnet/youmi/android/a/a/g/d/b/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/b/c;
    .locals 1

    invoke-static {p0}, Lnet/youmi/android/a/a/g/d/b/a;->c(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/b/c;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lnet/youmi/android/a/a/g/d/b/c;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/d/b/c;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lnet/youmi/android/a/a/e/g/b;

    invoke-direct {v2}, Lnet/youmi/android/a/a/e/g/b;-><init>()V

    iget-object v3, p1, Lnet/youmi/android/a/a/g/d/b/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/youmi/android/a/a/e/g/b;->c(Ljava/lang/String;)V

    iget-object v3, p1, Lnet/youmi/android/a/a/g/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/youmi/android/a/a/e/g/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/a/a/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/a/a/e/g/b;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lnet/youmi/android/a/a/g/d/b/c;->c:Ljava/util/ArrayList;

    invoke-static {p0, v4}, Lnet/youmi/android/a/a/g/d/b/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/a/a/e/g/b;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/youmi/android/a/a/e/g/b;->f()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "%s gwparam invalid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pn rp error!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Lnet/youmi/android/a/a/g/c/a;->a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a_sdk_cpl_r"

    invoke-static {v3}, Lnet/youmi/android/a/a/g/d/b/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/b/i/a/b;

    move-result-object v3

    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    const-string v1, "%s url or nec is null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pn rp error!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, v2, v3}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, "%s response json is null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pn rp error!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v3, "c"

    const/16 v4, -0x3e7

    invoke-static {v2, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "%s check error! error code = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "pn rp error!"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/b/c;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lnet/youmi/android/a/a/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {}, Lnet/youmi/android/a/c/b;->a()I

    move-result v4

    invoke-static {p0, v0, v3, v4}, Lnet/youmi/android/a/a/g/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "a_sdk_cpl_g"

    invoke-static {v3}, Lnet/youmi/android/a/a/g/d/b/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/b/i/a/b;

    move-result-object v3

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "%s url or nec is null."

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "pn check error!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, v0, v3}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "%s response json is null."

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "pn check error!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v3, "c"

    const/16 v4, -0x3e7

    invoke-static {v0, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "%s check error! error code = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "pn check error!"

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lnet/youmi/android/a/a/g/d/b/c;

    invoke-direct {v3}, Lnet/youmi/android/a/a/g/d/b/c;-><init>()V

    const-string v4, "e"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/youmi/android/a/a/g/d/b/c;->b:Ljava/lang/String;

    const-string v4, "rsd"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/youmi/android/a/a/g/d/b/c;->a:Ljava/lang/String;

    const-string v4, "data"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "%s data is null"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "pn check error!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lnet/youmi/android/a/c/b/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lnet/youmi/android/a/a/g/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/youmi/android/a/a/g/c/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/youmi/android/a/b/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/d/a;->b([B)[B

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v4}, Lnet/youmi/android/a/b/d/k;->b([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/d/l;->b([B)[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "package"

    invoke-static {v0, v4, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    iput-object v4, v3, Lnet/youmi/android/a/a/g/d/b/c;->c:Ljava/util/ArrayList;

    :cond_6
    move-object v1, v3

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_3
.end method
