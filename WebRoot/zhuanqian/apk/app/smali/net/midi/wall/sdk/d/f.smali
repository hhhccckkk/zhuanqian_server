.class public Lnet/midi/wall/sdk/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static F:Lnet/midi/wall/sdk/d/f; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/midi/wall/sdk/d/f;->F:Lnet/midi/wall/sdk/d/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity_onCreate"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->a:Ljava/lang/String;

    const-string v0, "activity_onRestoreInstanceState"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->b:Ljava/lang/String;

    const-string v0, "activity_onSaveInstanceState"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->c:Ljava/lang/String;

    const-string v0, "activity_onKeyDown"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->d:Ljava/lang/String;

    const-string v0, "activity_onDestroy"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->e:Ljava/lang/String;

    const-string v0, "activity_onRestart"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->f:Ljava/lang/String;

    const-string v0, "showAppOffers"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->g:Ljava/lang/String;

    const-string v0, "getPoints"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->h:Ljava/lang/String;

    const-string v0, "getPointsBlock"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->i:Ljava/lang/String;

    const-string v0, "spendPoints"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->j:Ljava/lang/String;

    const-string v0, "spendPointsBlock"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->k:Ljava/lang/String;

    const-string v0, "awardPoints"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->l:Ljava/lang/String;

    const-string v0, "awardPointsBlock"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->m:Ljava/lang/String;

    const-string v0, "requestAdWallToggle"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->n:Ljava/lang/String;

    const-string v0, "requestCreditTitle"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->o:Ljava/lang/String;

    const-string v0, "setUserParam"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->p:Ljava/lang/String;

    const-string v0, "requestAdSourceBlock"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->q:Ljava/lang/String;

    const-string v0, "requestAdSource"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->r:Ljava/lang/String;

    const-string v0, "requestAdSourceSignin"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->s:Ljava/lang/String;

    const-string v0, "requestAdSourceListBlock"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->t:Ljava/lang/String;

    const-string v0, "requestAdSourceList"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->u:Ljava/lang/String;

    const-string v0, "requestAdSourceSigninList"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->v:Ljava/lang/String;

    const-string v0, "requestAdEffect"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->w:Ljava/lang/String;

    const-string v0, "requestAdSigninEffect"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->x:Ljava/lang/String;

    const-string v0, "setEarnPointsListener"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->y:Ljava/lang/String;

    const-string v0, "requestAppSignInList"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->z:Ljava/lang/String;

    const-string v0, "requestAppSignInEffect"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->A:Ljava/lang/String;

    const-string v0, "setVersion"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->B:Ljava/lang/String;

    const-string v0, "setMarketId"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->C:Ljava/lang/String;

    const-string v0, "setProjectGroup"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->D:Ljava/lang/String;

    const-string v0, "feedback"

    iput-object v0, p0, Lnet/midi/wall/sdk/d/f;->E:Ljava/lang/String;

    return-void
.end method

.method public static final declared-synchronized a()Lnet/midi/wall/sdk/d/f;
    .locals 2

    const-class v1, Lnet/midi/wall/sdk/d/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/midi/wall/sdk/d/f;->F:Lnet/midi/wall/sdk/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lnet/midi/wall/sdk/d/f;

    invoke-direct {v0}, Lnet/midi/wall/sdk/d/f;-><init>()V

    sput-object v0, Lnet/midi/wall/sdk/d/f;->F:Lnet/midi/wall/sdk/d/f;

    :cond_0
    sget-object v0, Lnet/midi/wall/sdk/d/f;->F:Lnet/midi/wall/sdk/d/f;
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
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->E:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 0x2
        0x6et 0x0t
        0x65t 0x0t
        0x74t 0x0t
        0x2et 0x0t
        0x6dt 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x64t 0x0t
        0x69t 0x0t
        0x2et 0x0t
        0x77t 0x0t
        0x61t 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x2et 0x0t
        0x73t 0x0t
        0x64t 0x0t
        0x6bt 0x0t
        0x2et 0x0t
        0x50t 0x0t
        0x6ct 0x0t
        0x75t 0x0t
        0x67t 0x0t
        0x49t 0x0t
        0x6et 0x0t
        0x57t 0x0t
        0x61t 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
    .end array-data
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->u:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->y:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->z:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->A:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->D:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/d/f;->B:Ljava/lang/String;

    return-object v0
.end method
