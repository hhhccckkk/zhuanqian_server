.class public final Lnet/youmi/android/a/a/e/c/a/h;
.super Lnet/youmi/android/a/a/e/a/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/a/a/e/a/b/l;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "a"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;Lnet/youmi/android/a/a/e/a/b/h;)Lorg/json/JSONObject;
    .locals 6

    const/4 v5, 0x1

    if-nez p3, :cond_1

    :try_start_0
    invoke-virtual {p8}, Lnet/youmi/android/a/a/e/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {p9, v0, p8}, Lnet/youmi/android/a/a/e/a/b/h;->a(ILnet/youmi/android/a/a/e/g/b;)Lnet/youmi/android/a/a/e/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "a"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_1
    if-eqz p2, :cond_0

    :try_start_2
    invoke-static {p1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "a"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->d()I

    move-result v1

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->e()I

    move-result v2

    invoke-static {p1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/youmi/android/a/a/g/a/e;->b(Ljava/lang/String;)Lnet/youmi/android/a/a/g/a/g;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lnet/youmi/android/a/a/g/a/g;

    invoke-direct {v0}, Lnet/youmi/android/a/a/g/a/g;-><init>()V

    invoke-virtual {v0, p2}, Lnet/youmi/android/a/a/g/a/g;->a(Ljava/lang/String;)V

    :cond_3
    mul-int/lit16 v3, p3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lnet/youmi/android/a/a/g/a/g;->c(J)V

    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-static {p1, p2, p8}, Lnet/youmi/android/a/a/g/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/a/g;->b(I)V

    invoke-virtual {v0, p6}, Lnet/youmi/android/a/a/g/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lnet/youmi/android/a/a/g/a/h;->a(Landroid/content/Context;Lnet/youmi/android/a/a/g/a/g;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-ne p4, v5, :cond_0

    invoke-static {p1, p2}, Lnet/youmi/android/a/a/g/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2, p8}, Lnet/youmi/android/a/a/g/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;)Z

    invoke-direct {p0, p1, p5}, Lnet/youmi/android/a/a/e/c/a/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/a/g;->b(I)V

    invoke-virtual {v0, p7}, Lnet/youmi/android/a/a/g/a/g;->d(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lnet/youmi/android/a/a/g/a/h;->a(Landroid/content/Context;Lnet/youmi/android/a/a/g/a/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/youmi/android/a/b/k/m;->a()Lnet/youmi/android/a/b/k/m;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/a/a/e/c/a/i;

    invoke-direct {v1, p0, p1, p2}, Lnet/youmi/android/a/a/e/c/a/i;-><init>(Lnet/youmi/android/a/a/e/c/a/h;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/k/m;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lnet/youmi/android/a/a/e/a/b/h;Lnet/youmi/android/a/a/e/a/b/f;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    if-nez p1, :cond_0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lnet/youmi/android/a/a/e/a/b/h;->a()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lnet/youmi/android/a/a/g/f/a/a;->a(Landroid/content/Context;)V

    const-string v0, "a"

    const/4 v2, 0x0

    invoke-static {p3, v0, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "b"

    const/4 v3, 0x1

    invoke-static {p3, v0, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lnet/youmi/android/a/a/e/c/a/h;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "d"

    const/4 v4, 0x0

    invoke-static {p3, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    new-instance v8, Lnet/youmi/android/a/a/e/g/b;

    invoke-direct {v8}, Lnet/youmi/android/a/a/e/g/b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "e"

    const/4 v4, 0x0

    invoke-static {p3, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "a"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "d"

    const/4 v9, 0x0

    invoke-static {v3, v7, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v4}, Lnet/youmi/android/a/a/e/g/b;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lnet/youmi/android/a/a/e/g/b;->b(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lnet/youmi/android/a/a/e/g/b;->c(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lnet/youmi/android/a/a/e/g/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_1
    :try_start_2
    const-string v3, "f"

    const/4 v4, 0x0

    invoke-static {p3, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_5

    :try_start_3
    const-string v4, "f"

    const-string v5, "0"

    invoke-static {p3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    :cond_5
    :goto_2
    :try_start_4
    const-string v4, "h"

    const/4 v5, 0x0

    invoke-static {p3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "i"

    const/4 v6, 0x0

    invoke-static {p3, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "j"

    const/4 v7, 0x0

    invoke-static {p3, v6, v7}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "k"

    const/4 v9, 0x0

    invoke-static {p3, v6, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "l"

    const/4 v11, 0x0

    invoke-static {p3, v9, v11}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/youmi/android/a/a/e/g/b;->a(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v0, :cond_9

    :try_start_5
    const-string v0, "d"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1, v2}, Lnet/youmi/android/a/b/k/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lnet/youmi/android/a/a/e/c/a/h;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;Lnet/youmi/android/a/a/e/a/b/h;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lnet/youmi/android/a/a/e/c/a/h;->a()Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_7
    :try_start_6
    invoke-static {v1, v2, v10}, Lnet/youmi/android/a/b/k/i;->d(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lnet/youmi/android/a/a/e/c/a/h;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;Lnet/youmi/android/a/a/e/a/b/h;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lnet/youmi/android/a/a/e/c/a/h;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x1

    if-ne v0, v9, :cond_b

    invoke-static {v1, v2, v10}, Lnet/youmi/android/a/b/k/i;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v2, v10}, Lnet/youmi/android/a/a/e/c/a/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lnet/youmi/android/a/a/e/c/a/h;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;Lnet/youmi/android/a/a/e/a/b/h;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lnet/youmi/android/a/a/e/c/a/h;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x2

    if-ne v0, v9, :cond_d

    const-string v0, "c"

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->o()Ljava/lang/String;

    move-result-object v9

    invoke-static {p3, v0, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v10, v0}, Lnet/youmi/android/a/b/k/i;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v2, v10}, Lnet/youmi/android/a/a/e/c/a/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lnet/youmi/android/a/a/e/c/a/h;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;Lnet/youmi/android/a/a/e/a/b/h;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lnet/youmi/android/a/a/e/c/a/h;->a()Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_2

    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method
