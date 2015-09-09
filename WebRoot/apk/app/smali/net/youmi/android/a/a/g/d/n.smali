.class Lnet/youmi/android/a/a/g/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/d/n;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/d/c;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/d/c;->b()V

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/d/d;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/d/d;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
