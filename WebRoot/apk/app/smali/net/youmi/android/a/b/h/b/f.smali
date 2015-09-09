.class final Lnet/youmi/android/a/b/h/b/f;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/b/h/b/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/b/h/b/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->b(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->d()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->d()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->a(Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
