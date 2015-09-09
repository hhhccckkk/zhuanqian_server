.class public Lnet/youmi/android/a/a/g/c/b/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/e/g/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1}, Lnet/youmi/android/a/a/e/g/b;->e()I

    move-result v2

    if-ne v1, v2, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lnet/youmi/android/a/a/e/g/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "at"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/e/g/b;->e()I

    move-result v3

    invoke-static {p0}, Lnet/youmi/android/a/a/g/c/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lnet/youmi/android/a/a/g/c/a/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/youmi/android/a/a/e/g/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    const-string v7, "5.1.0"

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2}, Lnet/youmi/android/a/a/g/c/a;->a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method
