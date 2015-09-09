.class public Lnet/youmi/android/offers/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/a/a/i/a/b/a;


# static fields
.field static a:Lnet/youmi/android/offers/f/h;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/offers/f/h;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lnet/youmi/android/offers/f/h;
    .locals 2

    const-class v1, Lnet/youmi/android/offers/f/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/youmi/android/offers/f/h;->a:Lnet/youmi/android/offers/f/h;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/offers/f/h;

    invoke-direct {v0, p0}, Lnet/youmi/android/offers/f/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/offers/f/h;->a:Lnet/youmi/android/offers/f/h;

    :cond_0
    sget-object v0, Lnet/youmi/android/offers/f/h;->a:Lnet/youmi/android/offers/f/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/offers/f/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/offers/f/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
