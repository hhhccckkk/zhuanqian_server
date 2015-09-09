.class public final Lcom/bb/dd/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/bb/dd/b/c;


# instance fields
.field private b:Lcom/bb/dd/listener/IRequestListener;

.field private c:Lcom/bb/dd/listener/IShowListener;

.field private d:I

.field private e:Lcom/bb/dd/listener/IRequestListener;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/bb/dd/listener/IActiveListener;

.field private i:Landroid/content/Context;

.field private j:Lcom/bb/dd/listener/IShowListener;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bb/dd/b/c;->a:Lcom/bb/dd/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/bb/dd/b/c;->d:I

    iput v1, p0, Lcom/bb/dd/b/c;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bb/dd/b/c;->k:Z

    iput v1, p0, Lcom/bb/dd/b/c;->l:I

    iput v1, p0, Lcom/bb/dd/b/c;->m:I

    iput v1, p0, Lcom/bb/dd/b/c;->n:I

    return-void
.end method

.method public static a()Lcom/bb/dd/b/c;
    .locals 1

    sget-object v0, Lcom/bb/dd/b/c;->a:Lcom/bb/dd/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bb/dd/b/c;

    invoke-direct {v0}, Lcom/bb/dd/b/c;-><init>()V

    sput-object v0, Lcom/bb/dd/b/c;->a:Lcom/bb/dd/b/c;

    :cond_0
    sget-object v0, Lcom/bb/dd/b/c;->a:Lcom/bb/dd/b/c;

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bb/dd/b/d;->b:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bb/dd/b/d;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

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

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bb/dd/b/d;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bb/dd/b/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/bb/dd/listener/IAddListener;)V
    .locals 3

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(ILcom/bb/dd/listener/IReduceListener;)V
    .locals 3

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/bb/dd/listener/IShowListener;Z)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bb/dd/b/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bb/dd/b/c;->l:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bb/dd/b/c;->i:Landroid/content/Context;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/bb/dd/b/c;->j:Lcom/bb/dd/listener/IShowListener;

    :cond_1
    iput-boolean p3, p0, Lcom/bb/dd/b/c;->k:Z

    :goto_0
    return-void

    :cond_2
    iput v2, p0, Lcom/bb/dd/b/c;->l:I

    iput-object v1, p0, Lcom/bb/dd/b/c;->i:Landroid/content/Context;

    iput-object v1, p0, Lcom/bb/dd/b/c;->j:Lcom/bb/dd/listener/IShowListener;

    iput-boolean v3, p0, Lcom/bb/dd/b/c;->k:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

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

    const-class v2, Lcom/bb/dd/BDService;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5.0.0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/bb/dd/MainActivity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/bb/dd/Browser;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/bb/dd/listener/IActiveListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bb/dd/b/c;->h:Lcom/bb/dd/listener/IActiveListener;

    iget v0, p0, Lcom/bb/dd/b/c;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bb/dd/b/c;->n:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/bb/dd/b/c;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bb/dd/b/c;->h:Lcom/bb/dd/listener/IActiveListener;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/bb/dd/listener/IGetListener;)V
    .locals 3

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bb/dd/b/c;->g:Ljava/lang/String;

    iget v0, p0, Lcom/bb/dd/b/c;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bb/dd/b/c;->m:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/bb/dd/b/c;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bb/dd/b/c;->g:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/bb/dd/b/c;->m:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bb/dd/b/c;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb/dd/b/c;->a(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/bb/dd/b/c;->n:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/bb/dd/b/c;->h:Lcom/bb/dd/listener/IActiveListener;

    invoke-virtual {p0, v0}, Lcom/bb/dd/b/c;->a(Lcom/bb/dd/listener/IActiveListener;)V

    :cond_3
    iget v0, p0, Lcom/bb/dd/b/c;->l:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/bb/dd/b/c;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/bb/dd/b/c;->j:Lcom/bb/dd/listener/IShowListener;

    iget-boolean v2, p0, Lcom/bb/dd/b/c;->k:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Lcom/bb/dd/listener/IShowListener;Z)V

    :cond_4
    iget v0, p0, Lcom/bb/dd/b/c;->d:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/bb/dd/b/c;->b:Lcom/bb/dd/listener/IRequestListener;

    iget-object v1, p0, Lcom/bb/dd/b/c;->c:Lcom/bb/dd/listener/IShowListener;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "LaunchManager"

    const-string v3, "setSpotListener."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/bb/dd/b/c;->d:I

    iput-object v5, p0, Lcom/bb/dd/b/c;->b:Lcom/bb/dd/listener/IRequestListener;

    iput-object v5, p0, Lcom/bb/dd/b/c;->c:Lcom/bb/dd/listener/IShowListener;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {v2}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    iget v0, p0, Lcom/bb/dd/b/c;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bb/dd/b/c;->e:Lcom/bb/dd/listener/IRequestListener;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "LaunchManager"

    const-string v2, "setBannerListener."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/bb/dd/b/c;->f:I

    iput-object v5, p0, Lcom/bb/dd/b/c;->e:Lcom/bb/dd/listener/IRequestListener;

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/bb/dd/b/c;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bb/dd/b/c;->d:I

    iput-object v0, p0, Lcom/bb/dd/b/c;->b:Lcom/bb/dd/listener/IRequestListener;

    iput-object v1, p0, Lcom/bb/dd/b/c;->c:Lcom/bb/dd/listener/IShowListener;

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/bb/dd/b/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bb/dd/b/c;->f:I

    iput-object v0, p0, Lcom/bb/dd/b/c;->e:Lcom/bb/dd/listener/IRequestListener;

    goto/16 :goto_0
.end method
