.class final Lnet/youmi/android/offers/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/offers/f/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/offers/f/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/offers/f/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/f/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/offers/f/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/offers/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/offers/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v0, p0, Lnet/youmi/android/offers/f/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/offers/f/b;->e(Landroid/content/Context;)V

    goto :goto_0
.end method
