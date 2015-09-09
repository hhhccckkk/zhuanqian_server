.class public Lnet/midi/wall/sdk/b/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/midi/wall/sdk/b/f;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lnet/midi/wall/sdk/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->a:Lnet/midi/wall/sdk/b/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/midi/wall/sdk/b/h;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/midi/wall/sdk/b/h;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/midi/wall/sdk/b/h;->b:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/midi/wall/sdk/b/h;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method public c(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->e:Ljava/lang/reflect/Method;

    return-void
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/b/c;->a()Lnet/midi/wall/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lnet/midi/wall/sdk/b/e;->a()Lnet/midi/wall/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lnet/midi/wall/sdk/b/e;->a(Landroid/content/Context;Lnet/midi/wall/sdk/b/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v0
.end method

.method public d()Lnet/midi/wall/sdk/b/f;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/b/h;->a:Lnet/midi/wall/sdk/b/f;

    return-object v0
.end method

.method public d(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method public e(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lnet/midi/wall/sdk/b/h;->g:Ljava/lang/reflect/Method;

    return-void
.end method
