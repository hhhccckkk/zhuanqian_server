.class public Lnet/youmi/android/offers/f/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lnet/youmi/android/offers/f/c;

    invoke-direct {v0, p0}, Lnet/youmi/android/offers/f/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lnet/youmi/android/offers/f/d;

    invoke-direct {v0, p0}, Lnet/youmi/android/offers/f/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lnet/youmi/android/offers/f/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lnet/youmi/android/offers/f/e;

    invoke-direct {v0, p0}, Lnet/youmi/android/offers/f/e;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lnet/youmi/android/offers/f/b;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lnet/youmi/android/offers/f/b;->f(Landroid/content/Context;)V

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/a/i/a/b/i;->b()V

    invoke-static {p0}, Lnet/youmi/android/offers/f/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "c"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    goto :goto_0

    :cond_2
    const-string v2, "d"

    invoke-static {v1, v2, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {p0}, Lnet/youmi/android/offers/f/b;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/offers/f/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0}, Lnet/youmi/android/offers/f/f;->a(Landroid/content/Context;)Lnet/youmi/android/offers/f/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/youmi/android/offers/f/f;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/offers/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v2, "svc"

    invoke-static {v1, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "url"

    invoke-static {v1, v2, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m5"

    invoke-static {v1, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {p0}, Lnet/youmi/android/offers/f/f;->a(Landroid/content/Context;)Lnet/youmi/android/offers/f/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/youmi/android/offers/f/f;->a(I)V

    invoke-static {p0}, Lnet/youmi/android/offers/f/f;->a(Landroid/content/Context;)Lnet/youmi/android/offers/f/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/youmi/android/offers/f/f;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lnet/youmi/android/offers/f/f;->a(Landroid/content/Context;)Lnet/youmi/android/offers/f/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/youmi/android/offers/f/f;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/offers/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "lvc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/offers/b/b;->o()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-static {p0, v2, v1, v3}, Lnet/youmi/android/a/a/g/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/youmi/android/a/b/i/a/b;

    invoke-direct {v3}, Lnet/youmi/android/a/b/i/a/b;-><init>()V

    const-string v1, "wl"

    invoke-virtual {v3, v1}, Lnet/youmi/android/a/b/i/a/b;->a(Ljava/lang/String;)V

    const-string v1, "a_w_oar"

    invoke-virtual {v3, v1}, Lnet/youmi/android/a/b/i/a/b;->b(Ljava/lang/String;)V

    const/16 v1, 0x1fe

    invoke-virtual {v3, v1}, Lnet/youmi/android/a/b/i/a/b;->a(I)V

    const/4 v1, 0x0

    :cond_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v2, v3}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lnet/youmi/android/offers/f/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
