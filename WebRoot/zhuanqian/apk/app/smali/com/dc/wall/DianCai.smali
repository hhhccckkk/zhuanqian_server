.class public Lcom/dc/wall/DianCai;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMoney(Ljava/lang/Integer;Lcom/dc/wall/IAddMoneyNotifier;)V
    .locals 2

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/dc/wall/b/c;->a(ILcom/dc/wall/IAddMoneyNotifier;)V

    return-void
.end method

.method public static initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/dc/wall/DianCai;->initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dc/wall/c/d;->a(Landroid/content/Context;)V

    invoke-static {p0, p2}, Lcom/dc/wall/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dc/wall/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dc/wall/b/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dc/wall/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dc/wall/b/c;->c()V

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/dc/wall/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dc/wall/b/a;->a()Lcom/dc/wall/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dc/wall/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/dc/wall/b/a;->a()Lcom/dc/wall/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dc/wall/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static queryMoney(Lcom/dc/wall/IQueryMoneyNotifier;)V
    .locals 1

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dc/wall/b/c;->a(Lcom/dc/wall/IQueryMoneyNotifier;)V

    return-void
.end method

.method public static reduceMoney(Ljava/lang/Integer;Lcom/dc/wall/IReduceMoneyNotifier;)V
    .locals 2

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/dc/wall/b/c;->a(ILcom/dc/wall/IReduceMoneyNotifier;)V

    return-void
.end method

.method public static setEarnMoneyListener(Lcom/dc/wall/IEarnMoneyNotifier;)V
    .locals 1

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dc/wall/b/c;->a(Lcom/dc/wall/IEarnMoneyNotifier;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dc/wall/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static showGoodApps()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/dc/wall/b/c;->a(Landroid/content/Context;Lcom/dc/wall/a;Z)V

    return-void
.end method

.method public static showOfferWall()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/dc/wall/b/c;->a(Landroid/content/Context;Lcom/dc/wall/a;Z)V

    return-void
.end method

.method public static versionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dc/wall/c/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
