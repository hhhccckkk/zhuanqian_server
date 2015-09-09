.class final Lnet/youmi/android/a/a/g/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/d/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/d/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/d/d;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lnet/youmi/android/a/a/g/d/i;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lnet/youmi/android/a/a/g/d/e;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/a/a/g/d/i;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/d/i;->a()Ljava/lang/String;

    goto :goto_0
.end method
