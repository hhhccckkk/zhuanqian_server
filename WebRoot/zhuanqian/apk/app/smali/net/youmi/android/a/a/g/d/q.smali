.class Lnet/youmi/android/a/a/g/d/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/a/a/g/d/p;


# direct methods
.method constructor <init>(Lnet/youmi/android/a/a/g/d/p;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/d/q;->a:Lnet/youmi/android/a/a/g/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/d/q;->a:Lnet/youmi/android/a/a/g/d/p;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/d/p;->a(Lnet/youmi/android/a/a/g/d/p;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/a/g/d/c;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/d/c;->b()V

    return-void
.end method
