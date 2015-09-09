.class public Lnet/youmi/android/a/a/g/c/b/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lnet/youmi/android/a/a/g/c/b/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lnet/youmi/android/a/a/g/c/b/l;

    invoke-direct {v0, p0}, Lnet/youmi/android/a/a/g/c/b/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/l;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p0, p1, v0}, Lnet/youmi/android/a/a/g/c/b/f;->b(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    :try_start_1
    new-instance v0, Lnet/youmi/android/a/a/g/c/b/k;

    invoke-direct {v0, p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/k;-><init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/k;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    :try_start_1
    new-instance v0, Lnet/youmi/android/a/a/g/c/b/k;

    invoke-direct {v0, p0, p1}, Lnet/youmi/android/a/a/g/c/b/k;-><init>(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/k;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lnet/youmi/android/a/a/g/c/b/i;

    invoke-direct {v0, p0}, Lnet/youmi/android/a/a/g/c/b/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V
    .locals 1

    new-instance v0, Lnet/youmi/android/a/a/g/c/b/g;

    invoke-direct {v0, p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/g;-><init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V
    .locals 1

    new-instance v0, Lnet/youmi/android/a/a/g/c/b/h;

    invoke-direct {v0, p0, p1}, Lnet/youmi/android/a/a/g/c/b/h;-><init>(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V

    invoke-static {v0}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
