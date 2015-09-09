.class public Lnet/youmi/android/a/a/g/c/b/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/a/a/g/c/b/l;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/a;->d()Z

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/b;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/b;->a()Z

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
