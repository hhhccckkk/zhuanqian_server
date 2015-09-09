.class public Lnet/midi/wall/sdk/AdWall;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awardPoints(ILnet/midi/wall/sdk/IAdWallAwardPointsNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/Integer;Lnet/midi/wall/sdk/IAdWallAwardPointsNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static enableSdkWork()Z
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPoints(Lnet/midi/wall/sdk/IAdWallGetPointsNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->a(Lnet/midi/wall/sdk/IAdWallGetPointsNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/d/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lnet/midi/wall/sdk/d/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lnet/midi/wall/sdk/d/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/c;->a(Landroid/content/Context;)V

    new-instance v0, Lnet/midi/wall/sdk/a/e;

    invoke-direct {v0, p0, p1, p2}, Lnet/midi/wall/sdk/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/midi/wall/sdk/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    check-cast p1, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    const-string v0, "no network"

    invoke-interface {p1, v0}, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;->onFailedGetAdSource(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v0, Lnet/midi/wall/sdk/c/a;

    invoke-direct {v0, p0, p1, p2}, Lnet/midi/wall/sdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/midi/wall/sdk/c/b;->a()Lnet/midi/wall/sdk/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/midi/wall/sdk/c/b;->a(Lnet/midi/wall/sdk/c/a;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lnet/midi/wall/sdk/a/d;->a()Lnet/midi/wall/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->c()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lnet/midi/wall/sdk/c/b;->a()Lnet/midi/wall/sdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/c/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static requestAdEffect(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAdSigninEffect(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAdSource(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->a(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAdSourceList(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->b(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAdSourceSignin(Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->a(Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAdSourceSigninList(Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->s()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->b(Lnet/midi/wall/sdk/IAdWallRequestAdSourceSigninNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAdWallToggle()Z
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAppSignInEffect(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->x()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestAppSignInList()Ljava/util/List;
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestCreditTitle()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEarnPointsListener(Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;)V
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->v()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->a(Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;)V

    goto :goto_0
.end method

.method public static setUserActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lnet/midi/wall/sdk/d/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/d;->a()Lnet/midi/wall/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/midi/wall/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUserParam(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showAppOffers(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->a(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static showAppOffersNoScore(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/midi/wall/sdk/b/i;->b(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static showFeedback()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->h()V

    goto :goto_0
.end method

.method public static spendPoints(ILnet/midi/wall/sdk/IAdWallSpendPointsNotifier;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->enableSdkWork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/d/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnet/midi/wall/sdk/AdWall;->putTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/Integer;Lnet/midi/wall/sdk/IAdWallSpendPointsNotifier;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
