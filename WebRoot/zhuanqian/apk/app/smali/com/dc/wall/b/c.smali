.class public Lcom/dc/wall/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dc/wall/b/c;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/dc/wall/IEarnMoneyNotifier;

.field private d:Landroid/content/Context;

.field private e:Lcom/dc/wall/a;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dc/wall/b/c;->a:Lcom/dc/wall/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dc/wall/b/c;->f:Z

    iput v1, p0, Lcom/dc/wall/b/c;->g:I

    iput v1, p0, Lcom/dc/wall/b/c;->h:I

    iput v1, p0, Lcom/dc/wall/b/c;->i:I

    return-void
.end method

.method public static a()Lcom/dc/wall/b/c;
    .locals 1

    sget-object v0, Lcom/dc/wall/b/c;->a:Lcom/dc/wall/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dc/wall/b/c;

    invoke-direct {v0}, Lcom/dc/wall/b/c;-><init>()V

    sput-object v0, Lcom/dc/wall/b/c;->a:Lcom/dc/wall/b/c;

    :cond_0
    sget-object v0, Lcom/dc/wall/b/c;->a:Lcom/dc/wall/b/c;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/dc/wall/b/d;->b:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/dc/wall/b/d;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILcom/dc/wall/IAddMoneyNotifier;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(ILcom/dc/wall/IReduceMoneyNotifier;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/dc/wall/a;Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/dc/wall/b/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dc/wall/b/c;->g:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dc/wall/b/c;->d:Landroid/content/Context;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/dc/wall/b/c;->e:Lcom/dc/wall/a;

    :cond_1
    iput-boolean p3, p0, Lcom/dc/wall/b/c;->f:Z

    :goto_0
    return-void

    :cond_2
    iput v2, p0, Lcom/dc/wall/b/c;->g:I

    iput-object v1, p0, Lcom/dc/wall/b/c;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/dc/wall/b/c;->e:Lcom/dc/wall/a;

    iput-boolean v3, p0, Lcom/dc/wall/b/c;->f:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/dc/wall/DcActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/dc/wall/DC;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/dc/wall/c/b;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/dc/wall/IEarnMoneyNotifier;)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/dc/wall/b/c;->c:Lcom/dc/wall/IEarnMoneyNotifier;

    iget v0, p0, Lcom/dc/wall/b/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dc/wall/b/c;->i:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/dc/wall/b/c;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dc/wall/b/c;->c:Lcom/dc/wall/IEarnMoneyNotifier;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/dc/wall/IQueryMoneyNotifier;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/dc/wall/b/c;->b:Ljava/lang/String;

    iget v0, p0, Lcom/dc/wall/b/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dc/wall/b/c;->h:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/dc/wall/b/c;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dc/wall/b/c;->b:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/dc/wall/b/d;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/dc/wall/b/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lcom/dc/wall/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/dc/wall/b/c;->h:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/dc/wall/b/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/dc/wall/b/c;->i:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/dc/wall/b/c;->c:Lcom/dc/wall/IEarnMoneyNotifier;

    invoke-virtual {p0, v0}, Lcom/dc/wall/b/c;->a(Lcom/dc/wall/IEarnMoneyNotifier;)V

    :cond_3
    iget v0, p0, Lcom/dc/wall/b/c;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dc/wall/b/c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dc/wall/b/c;->e:Lcom/dc/wall/a;

    iget-boolean v2, p0, Lcom/dc/wall/b/c;->f:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/dc/wall/b/c;->a(Landroid/content/Context;Lcom/dc/wall/a;Z)V

    goto :goto_0
.end method
