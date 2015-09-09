.class final Lnet/youmi/android/a/a/g/f/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/f/a/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lnet/youmi/android/a/a/g/f/a/a;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/f/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/youmi/android/a/a/g/f/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/a/a;->a()Z

    return-void
.end method
