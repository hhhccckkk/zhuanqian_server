.class public Lnet/midi/wall/sdk/b/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/midi/wall/sdk/b/g;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/b/g;->a:Lnet/midi/wall/sdk/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lnet/midi/wall/sdk/b/g;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/b/g;->a:Lnet/midi/wall/sdk/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/b/g;

    invoke-direct {v0}, Lnet/midi/wall/sdk/b/g;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/b/g;->a:Lnet/midi/wall/sdk/b/g;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/b/g;->a:Lnet/midi/wall/sdk/b/g;
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
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/g;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/g;->c:Ljava/lang/String;

    return-object v0
.end method
