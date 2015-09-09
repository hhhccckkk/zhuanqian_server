.class public Lcom/lostip/sdk/offerwalllibrary/other/ay;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Lcom/lostip/sdk/offerwalllibrary/other/ay;


# instance fields
.field private c:Lcom/lostip/sdk/offerwalllibrary/other/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/other/ba",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40

    sput v0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/ay;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/lostip/sdk/offerwalllibrary/other/ay;
    .locals 2

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/other/ay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->b:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/ay;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ay;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->b:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->b:Lcom/lostip/sdk/offerwalllibrary/other/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 2

    sget v0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->a:I

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/other/az;

    invoke-direct {v1, p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/az;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/ay;I)V

    iput-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->c:Lcom/lostip/sdk/offerwalllibrary/other/ba;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->c:Lcom/lostip/sdk/offerwalllibrary/other/ba;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ba;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->c:Lcom/lostip/sdk/offerwalllibrary/other/ba;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ba;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ay;->c:Lcom/lostip/sdk/offerwalllibrary/other/ba;

    invoke-virtual {v0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/ba;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
