.class public Lcom/lostip/sdk/offerwalllibrary/other/ax;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/lostip/sdk/offerwalllibrary/other/ax;


# instance fields
.field private a:Lcom/lostip/sdk/offerwalllibrary/other/aw;

.field private b:Z

.field private c:I

.field private d:Lcom/lostip/sdk/offerwalllibrary/other/ay;

.field private e:Z

.field private f:I

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->c:I

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->e:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->f:I

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->g:Z

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ay;->a()Lcom/lostip/sdk/offerwalllibrary/other/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->d:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/aw;->a()Lcom/lostip/sdk/offerwalllibrary/other/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a:Lcom/lostip/sdk/offerwalllibrary/other/aw;

    return-void
.end method

.method public static declared-synchronized a()Lcom/lostip/sdk/offerwalllibrary/other/ax;
    .locals 2

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/other/ax;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->h:Lcom/lostip/sdk/offerwalllibrary/other/ax;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/ax;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ax;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->h:Lcom/lostip/sdk/offerwalllibrary/other/ax;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->h:Lcom/lostip/sdk/offerwalllibrary/other/ax;
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
.method public a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->g:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->d:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ay;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a:Lcom/lostip/sdk/offerwalllibrary/other/aw;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aw;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p1, p3, p4}, Lcom/lostip/sdk/offerwalllibrary/other/at;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a:Lcom/lostip/sdk/offerwalllibrary/other/aw;

    invoke-virtual {v1, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aw;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->d:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    invoke-virtual {v1, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ay;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->d:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    invoke-virtual {v1, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ay;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a:Lcom/lostip/sdk/offerwalllibrary/other/aw;

    invoke-virtual {v0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/aw;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ax;->b:Z

    return-void
.end method
