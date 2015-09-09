.class public Lnet/youmi/android/a/a/g/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lnet/youmi/android/a/a/g/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/a/g/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/a/a;->a:Landroid/content/Context;

    iput-object p1, p0, Lnet/youmi/android/a/a/g/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/a/a;->b:Lnet/youmi/android/a/a/g/a/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/a;->b:Lnet/youmi/android/a/a/g/a/g;

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Lnet/youmi/android/a/a/g/a/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/a;->b:Lnet/youmi/android/a/a/g/a/g;

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Lnet/youmi/android/a/a/g/a/g;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
