.class public Lnet/midi/wall/sdk/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/midi/wall/sdk/InnerRequestAdSourceNotifier;


# static fields
.field private static d:Lnet/midi/wall/sdk/b/i;


# instance fields
.field private a:Lnet/midi/wall/sdk/b/h;

.field private b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

.field private c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/b/i;->d:Lnet/midi/wall/sdk/b/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    iput-object v0, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/b/i;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/b/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/b/i;->d:Lnet/midi/wall/sdk/b/i;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/b/i;

    invoke-direct {v0}, Lnet/midi/wall/sdk/b/i;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/b/i;->d:Lnet/midi/wall/sdk/b/i;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/b/i;->d:Lnet/midi/wall/sdk/b/i;
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
.method public a(Ljava/lang/Integer;Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Lnet/midi/wall/sdk/IAdWallAwardPointsNotifier;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Lnet/midi/wall/sdk/IAdWallSpendPointsNotifier;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lnet/midi/wall/sdk/IAdWallGetPointsNotifier;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lnet/midi/wall/sdk/b/f;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lnet/midi/wall/sdk/b/h;

    invoke-direct {v0, p1}, Lnet/midi/wall/sdk/b/h;-><init>(Lnet/midi/wall/sdk/b/f;)V

    iput-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/h;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-virtual {v0, p1, p2}, Lnet/midi/wall/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/midi/wall/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;)V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->v()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/h;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->t()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public b(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public b(Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->s()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public b(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Ljava/lang/Boolean;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v2

    invoke-virtual {v2}, Lnet/midi/wall/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->x()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v2

    invoke-virtual {v2}, Lnet/midi/wall/sdk/d/f;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnet/midi/wall/sdk/b/a;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/midi/wall/sdk/b/i;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/midi/wall/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    if-nez v0, :cond_0

    const-string v0, "2.6.7"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->a:Lnet/midi/wall/sdk/b/h;

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/h;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onFailedGetAdSource(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    invoke-interface {v0, p1}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;->onFailedGetAdSource(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    invoke-interface {v0, p1}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;->onFailedGetAdSource(Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    iput-object v1, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    return-void
.end method

.method public onGetAdSource(Lorg/json/JSONArray;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    invoke-interface {v0, v2}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;->onGetAdSource(Ljava/util/List;)V

    :cond_0
    :goto_0
    iput-object v2, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    return-void

    :cond_1
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->b:Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    invoke-static {p1}, Lnet/midi/wall/sdk/b/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;->onGetAdSource(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onGetAdSource(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    invoke-interface {v0, v3, v3}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;->onGetAdSource(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    :goto_0
    iput-object v3, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    return-void

    :cond_1
    iget-object v0, p0, Lnet/midi/wall/sdk/b/i;->c:Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;

    invoke-static {p1}, Lnet/midi/wall/sdk/b/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Lnet/midi/wall/sdk/b/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;->onGetAdSource(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
