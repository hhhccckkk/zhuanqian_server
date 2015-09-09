.class public Lnet/youmi/android/a/a/g/c/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;Lorg/json/JSONObject;IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v2, "1"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/a/a/g/c/a/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lnet/youmi/android/a/c/c/b;

    invoke-direct {v2, p0}, Lnet/youmi/android/a/c/c/b;-><init>(Landroid/content/Context;)V

    const-string v4, "smv"

    invoke-static {v3, v4, p2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v4, "ext"

    invoke-static {v3, v4, p1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    const-string v4, "andid"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bd"

    invoke-virtual {v2}, Lnet/youmi/android/a/c/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cid"

    invoke-virtual {v2}, Lnet/youmi/android/a/c/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dd"

    invoke-static {}, Lnet/youmi/android/a/b/h/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dv"

    invoke-static {}, Lnet/youmi/android/a/b/h/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ei"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "si"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fei"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fsi"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gvid"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "osv"

    invoke-static {}, Lnet/youmi/android/a/b/h/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "po"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lnet/youmi/android/a/b/k/g;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/k/g;

    move-result-object v4

    const-string v2, "sd"

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/g;->d()I

    move-result v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "sw"

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/g;->f()I

    move-result v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "sh"

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/g;->g()I

    move-result v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "scid"

    const-string v5, ""

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "sds"

    invoke-static {}, Lnet/youmi/android/a/b/k/n;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Lnet/youmi/android/a/a/g/d/p;

    invoke-direct {v2, p0}, Lnet/youmi/android/a/a/g/d/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lnet/youmi/android/a/a/g/d/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, ""

    :cond_1
    const-string v5, "tid"

    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    const-string v5, "ise"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/i;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_2
    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v5, "rot"

    invoke-static {}, Lnet/youmi/android/a/b/k/b;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_3
    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "apn"

    invoke-static {p0}, Lnet/youmi/android/a/b/i/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cn"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {p0}, Lnet/youmi/android/a/a/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/a/a/f/a;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    :goto_4
    :try_start_4
    const-string v5, "lat"

    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {p0}, Lnet/youmi/android/a/a/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/a/a/f/a;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    :goto_5
    :try_start_6
    const-string v5, "lon"

    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    const-string v2, "bsi"

    invoke-static {p0}, Lnet/youmi/android/a/a/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :goto_6
    :try_start_8
    const-string v2, "cc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nt"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->j(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "bssid"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-static {p0}, Lnet/youmi/android/a/b/h/g;->b(Landroid/content/Context;)Lnet/youmi/android/a/b/h/a/a;

    move-result-object v2

    const-string v5, "rb"

    iget v6, v2, Lnet/youmi/android/a/b/h/a/a;->a:I

    invoke-static {v3, v5, v6}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v5, "usb"

    iget v2, v2, Lnet/youmi/android/a/b/h/a/a;->c:I

    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :goto_7
    :try_start_a
    const-string v2, "3gst"

    const/4 v5, -0x1

    invoke-static {v3, v2, v5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v5, "hv"

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/g;->c()I

    move-result v2

    invoke-virtual {v4}, Lnet/youmi/android/a/b/k/g;->g()I

    move-result v4

    if-ne v2, v4, :cond_7

    move v2, v0

    :goto_8
    invoke-static {v3, v5, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "sft"

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v2, "sut"

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v4, "dvm"

    invoke-static {p0}, Lnet/youmi/android/a/b/h/g;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_9
    invoke-static {v3, v4, v2}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    if-lez p3, :cond_2

    const-string v2, "pd"

    invoke-static {v3, v2, p3}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_2
    const-string v2, "rt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ts"

    invoke-static {}, Lnet/youmi/android/a/c/c/a;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_a
    invoke-static {v3, v2, v0}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v0, "pn"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "avn"

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "avc"

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->f(Landroid/content/Context;)I

    move-result v1

    invoke-static {v3, v0, v1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v0, "chn"

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->g(Landroid/content/Context;)I

    move-result v1

    invoke-static {v3, v0, v1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v0, "user"

    invoke-static {p0}, Lnet/youmi/android/a/c/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sv"

    invoke-static {v3, v0, p5}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-lez p4, :cond_3

    const-string v0, "spc"

    invoke-static {v3, v0, p4}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_3
    const-string v0, "sty"

    invoke-static {}, Lnet/youmi/android/a/b/h/i;->a()I

    move-result v1

    invoke-static {v3, v0, v1}, Lnet/youmi/android/a/b/b/b;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :goto_b
    return-object v3

    :cond_4
    move v2, v1

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto/16 :goto_2

    :cond_6
    move v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const-string v2, ""

    goto/16 :goto_4

    :catch_1
    move-exception v2

    const-string v2, ""
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x2

    goto/16 :goto_8

    :cond_8
    move v2, v1

    goto :goto_9

    :cond_9
    move v0, v1

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v2

    goto/16 :goto_7

    :catch_4
    move-exception v2

    goto/16 :goto_6

    :catch_5
    move-exception v2

    goto/16 :goto_1
.end method
