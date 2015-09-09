.class public Lnet/midi/wall/sdk/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lnet/midi/wall/sdk/c/a;->c:Ljava/lang/Object;

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->showAppOffers(Lnet/midi/wall/sdk/IAdWallShowAppsNotifier;)Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/midi/wall/sdk/IAdWallGetPointsNotifier;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->getPoints(Lnet/midi/wall/sdk/IAdWallGetPointsNotifier;)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lnet/midi/wall/sdk/c/a;->c:Ljava/lang/Object;

    check-cast v1, Lnet/midi/wall/sdk/IAdWallSpendPointsNotifier;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Lnet/midi/wall/sdk/AdWall;->spendPoints(ILnet/midi/wall/sdk/IAdWallSpendPointsNotifier;)Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lnet/midi/wall/sdk/c/a;->c:Ljava/lang/Object;

    check-cast v1, Lnet/midi/wall/sdk/IAdWallAwardPointsNotifier;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Lnet/midi/wall/sdk/AdWall;->awardPoints(ILnet/midi/wall/sdk/IAdWallAwardPointsNotifier;)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->setUserParam(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->requestAdSource(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->requestAdSourceList(Lnet/midi/wall/sdk/IAdWallRequestAdSourceNotifier;)Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->requestAdEffect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->setEarnPointsListener(Lnet/midi/wall/sdk/IAdWallEarnPointsNotifier;)V

    const/4 v0, 0x1

    return v0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/midi/wall/sdk/AdWall;->requestAppSignInEffect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private m()Z
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/AdWall;->showFeedback()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lnet/midi/wall/sdk/c/a;)Ljava/lang/Boolean;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/midi/wall/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/midi/wall/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lnet/midi/wall/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lnet/midi/wall/sdk/d/f;->a()Lnet/midi/wall/sdk/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/midi/wall/sdk/d/f;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lnet/midi/wall/sdk/c/a;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method
