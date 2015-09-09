.class public abstract Lnet/youmi/android/offers/e/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/offers/e/a;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lnet/youmi/android/offers/e/a;->c:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/offers/e/a;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput p2, p0, Lnet/youmi/android/offers/e/a;->b:I

    iput p3, p0, Lnet/youmi/android/offers/e/a;->c:I

    iput p4, p0, Lnet/youmi/android/offers/e/a;->d:I

    iput p5, p0, Lnet/youmi/android/offers/e/a;->e:I

    iput p6, p0, Lnet/youmi/android/offers/e/a;->f:I

    iput p7, p0, Lnet/youmi/android/offers/e/a;->g:I

    return-void

    :catch_0
    move-exception v0

    iput-object p1, p0, Lnet/youmi/android/offers/e/a;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method private e()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lnet/youmi/android/offers/e/a;->b:I

    if-ge v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lnet/youmi/android/offers/e/a;->c:I

    if-lt v2, v1, :cond_0

    iget v2, p0, Lnet/youmi/android/offers/e/a;->d:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    iget v2, p0, Lnet/youmi/android/offers/e/a;->d:I

    if-lt v2, v1, :cond_0

    :cond_2
    iget v2, p0, Lnet/youmi/android/offers/e/a;->f:I

    if-eq v2, v4, :cond_3

    iget v2, p0, Lnet/youmi/android/offers/e/a;->f:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lnet/youmi/android/offers/e/a;->f:I

    if-ne v2, v5, :cond_0

    :cond_3
    iget v2, p0, Lnet/youmi/android/offers/e/a;->g:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lnet/youmi/android/offers/e/a;->g:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lnet/youmi/android/offers/e/a;->g:I

    if-ne v2, v5, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 9

    const/4 v6, 0x1

    const/4 v4, -0x1

    :try_start_0
    invoke-static {}, Lnet/youmi/android/offers/b/b;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "p"

    iget v3, p0, Lnet/youmi/android/offers/e/a;->b:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "n"

    iget v3, p0, Lnet/youmi/android/offers/e/a;->c:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "rtype"

    iget v3, p0, Lnet/youmi/android/offers/e/a;->d:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lnet/youmi/android/offers/e/a;->f:I

    if-eq v0, v4, :cond_0

    const-string v0, "dtype"

    iget v3, p0, Lnet/youmi/android/offers/e/a;->f:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget v0, p0, Lnet/youmi/android/offers/e/a;->g:I

    if-eq v0, v4, :cond_1

    const-string v0, "sp"

    iget v3, p0, Lnet/youmi/android/offers/e/a;->g:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/offers/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/youmi/android/offers/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/a/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lnet/youmi/android/a/b/i/a/b;

    invoke-direct {v8}, Lnet/youmi/android/a/b/i/a/b;-><init>()V

    const-string v0, "wl"

    invoke-virtual {v8, v0}, Lnet/youmi/android/a/b/i/a/b;->a(Ljava/lang/String;)V

    iget v0, p0, Lnet/youmi/android/offers/e/a;->b:I

    if-le v0, v6, :cond_2

    const-string v0, "a_w_np"

    :goto_0
    invoke-virtual {v8, v0}, Lnet/youmi/android/a/b/i/a/b;->b(Ljava/lang/String;)V

    const/16 v0, 0x1fe

    invoke-virtual {v8, v0}, Lnet/youmi/android/a/b/i/a/b;->a(I)V

    iget-object v0, p0, Lnet/youmi/android/offers/e/a;->a:Landroid/content/Context;

    const/4 v3, 0x3

    const/4 v6, 0x1

    const-string v7, "5.1.0"

    invoke-static/range {v0 .. v8}, Lnet/youmi/android/a/a/g/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const-string v0, "a_w_req"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/offers/e/a;->b()V

    invoke-direct {p0}, Lnet/youmi/android/offers/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "request ow list failed, url params error!"

    invoke-static {v0}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lnet/youmi/android/offers/e/a;->d()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0}, Lnet/youmi/android/offers/e/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "can\'t request ow list data!"

    invoke-static {v0}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Lnet/youmi/android/offers/e/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {p0}, Lnet/youmi/android/offers/e/a;->d()V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v1, "request ow list success"

    invoke-static {v1}, Lnet/youmi/android/a/c/b/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0, v0}, Lnet/youmi/android/offers/e/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/youmi/android/offers/e/a;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/youmi/android/offers/e/a;->d()V

    throw v0
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method
