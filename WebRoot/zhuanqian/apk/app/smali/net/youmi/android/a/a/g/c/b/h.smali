.class final Lnet/youmi/android/a/a/g/c/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lnet/youmi/android/a/a/g/c/b/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/c/b/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/c/b/h;->b:Lnet/youmi/android/a/a/g/c/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/h;->b:Lnet/youmi/android/a/a/g/c/b/d;

    invoke-static {v0, v1}, Lnet/youmi/android/a/a/g/c/b/f;->a(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V

    return-void
.end method
