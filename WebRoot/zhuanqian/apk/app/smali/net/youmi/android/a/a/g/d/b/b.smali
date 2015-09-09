.class final Lnet/youmi/android/a/a/g/d/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/d/b/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/b/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/b/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/d/b/a;->b(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/b/c;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/a/a/g/d/b/a;->a(Landroid/content/Context;Lnet/youmi/android/a/a/g/d/b/c;)Z

    return-void
.end method
