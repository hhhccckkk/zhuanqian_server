.class final Lnet/youmi/android/a/a/g/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/d/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/d/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lnet/youmi/android/a/a/g/d/i;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lnet/youmi/android/a/a/g/d/f;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/a/a/g/d/i;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/d/i;->a()Ljava/lang/String;

    return-void
.end method
