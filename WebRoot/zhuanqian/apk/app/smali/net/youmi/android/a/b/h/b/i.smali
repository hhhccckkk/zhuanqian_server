.class Lnet/youmi/android/a/b/h/b/i;
.super Lnet/youmi/android/a/b/h/b/c;


# static fields
.field private static a:Lnet/youmi/android/a/b/h/b/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/b/h/b/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/b/h/b/c;-><init>(Landroid/content/Context;Lnet/youmi/android/a/b/h/b/b;)V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/i;
    .locals 4

    const-class v1, Lnet/youmi/android/a/b/h/b/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/b/h/b/i;->a:Lnet/youmi/android/a/b/h/b/i;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/a/b/h/b/b;

    const-string v2, "slx93hldx"

    invoke-direct {v0, p0, v2}, Lnet/youmi/android/a/b/h/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lnet/youmi/android/a/b/h/b/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lnet/youmi/android/a/b/h/b/i;-><init>(Landroid/content/Context;Lnet/youmi/android/a/b/h/b/b;)V

    sput-object v2, Lnet/youmi/android/a/b/h/b/i;->a:Lnet/youmi/android/a/b/h/b/i;

    :cond_0
    sget-object v0, Lnet/youmi/android/a/b/h/b/i;->a:Lnet/youmi/android/a/b/h/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
