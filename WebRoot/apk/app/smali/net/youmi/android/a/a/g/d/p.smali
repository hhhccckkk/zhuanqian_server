.class public Lnet/youmi/android/a/a/g/d/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/a/a/g/d/p;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/a/a/g/d/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/p;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/p;->a:Landroid/content/Context;

    const-string v1, "J372ksjxls"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/c/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J372ksjxls"

    invoke-static {v0, v1}, Lnet/youmi/android/a/c/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/d/c;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/d/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/youmi/android/a/a/g/d/q;

    invoke-direct {v1, p0}, Lnet/youmi/android/a/a/g/d/q;-><init>(Lnet/youmi/android/a/a/g/d/p;)V

    invoke-static {v1}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method
