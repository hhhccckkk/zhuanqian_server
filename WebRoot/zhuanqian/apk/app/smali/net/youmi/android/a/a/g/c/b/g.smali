.class final Lnet/youmi/android/a/a/g/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lnet/youmi/android/a/a/e/g/b;

.field final synthetic c:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/c/b/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/c/b/g;->b:Lnet/youmi/android/a/a/e/g/b;

    iput-object p3, p0, Lnet/youmi/android/a/a/g/c/b/g;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/g;->b:Lnet/youmi/android/a/a/e/g/b;

    iget-object v2, p0, Lnet/youmi/android/a/a/g/c/b/g;->c:[I

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/a/g/c/b/f;->a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V

    return-void
.end method
