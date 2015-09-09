.class public Lnet/midi/wall/sdk/b/c;
.super Ljava/lang/Object;


# static fields
.field private static b:Lnet/midi/wall/sdk/b/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/b/c;->b:Lnet/midi/wall/sdk/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/midi/wall/sdk/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/b/c;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/b/c;->b:Lnet/midi/wall/sdk/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/b/c;

    invoke-direct {v0}, Lnet/midi/wall/sdk/b/c;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/b/c;->b:Lnet/midi/wall/sdk/b/c;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/b/c;->b:Lnet/midi/wall/sdk/b/c;
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
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/midi/wall/sdk/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/c;->a:Landroid/content/Context;

    return-object v0
.end method
