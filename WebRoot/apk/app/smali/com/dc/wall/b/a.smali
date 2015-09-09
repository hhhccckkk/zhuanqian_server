.class public Lcom/dc/wall/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dc/wall/b/a;


# instance fields
.field private b:Lcom/dc/wall/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dc/wall/b/a;->a:Lcom/dc/wall/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dc/wall/b/a;->b:Lcom/dc/wall/b/b;

    return-void
.end method

.method public static a()Lcom/dc/wall/b/a;
    .locals 1

    sget-object v0, Lcom/dc/wall/b/a;->a:Lcom/dc/wall/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dc/wall/b/a;

    invoke-direct {v0}, Lcom/dc/wall/b/a;-><init>()V

    sput-object v0, Lcom/dc/wall/b/a;->a:Lcom/dc/wall/b/a;

    :cond_0
    sget-object v0, Lcom/dc/wall/b/a;->a:Lcom/dc/wall/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/dc/wall/b/a;->b:Lcom/dc/wall/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dc/wall/b/a;->b:Lcom/dc/wall/b/b;

    invoke-virtual {v0}, Lcom/dc/wall/b/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dc/wall/c/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dc/wall/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/dc/wall/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dc/wall/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/dc/wall/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/dc/wall/b/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dc/wall/b/b;-><init>(Lcom/dc/wall/b/a;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/dc/wall/b/a;->b:Lcom/dc/wall/b/b;

    iget-object v1, p0, Lcom/dc/wall/b/a;->b:Lcom/dc/wall/b/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/dc/wall/b/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
