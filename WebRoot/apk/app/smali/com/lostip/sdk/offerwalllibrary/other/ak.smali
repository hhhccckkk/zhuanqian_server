.class Lcom/lostip/sdk/offerwalllibrary/other/ak;
.super Lcom/lostip/sdk/offerwalllibrary/other/bg;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

.field private b:Ljava/lang/Object;

.field private c:Lcom/lostip/sdk/offerwalllibrary/other/al;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/Object;

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;)V
    .locals 1

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/bg;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ak;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Lcom/lostip/sdk/offerwalllibrary/other/al;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->c:Lcom/lostip/sdk/offerwalllibrary/other/al;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ak;Lcom/lostip/sdk/offerwalllibrary/other/al;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->c:Lcom/lostip/sdk/offerwalllibrary/other/al;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ak;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ak;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->f:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/lostip/sdk/offerwalllibrary/other/ak;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->f:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/bk;)V
    .locals 2

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->b(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->c(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-static {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/ak;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->d:Z

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ak;->f:[Ljava/lang/Object;

    return-object v0
.end method
