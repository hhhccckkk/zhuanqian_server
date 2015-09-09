.class final Lnet/youmi/android/a/b/h/b/e;
.super Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->a(Z)Z

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->b()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-static {v1}, Lnet/youmi/android/a/b/h/b/d;->b(Z)Z

    invoke-static {v1}, Lnet/youmi/android/a/b/h/b/d;->c(Z)Z

    invoke-static {v1}, Lnet/youmi/android/a/b/h/b/d;->d(Z)Z

    :cond_0
    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->c()I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
