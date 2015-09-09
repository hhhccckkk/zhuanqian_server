.class public Lcom/bb/dd/BeiduoPlatform;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMoney(Ljava/lang/Integer;Lcom/bb/dd/listener/IAddListener;)V
    .locals 2

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/bb/dd/b/c;->a(ILcom/bb/dd/listener/IAddListener;)V

    return-void
.end method

.method public static getMoney(Lcom/bb/dd/listener/IGetListener;)V
    .locals 1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bb/dd/b/c;->a(Lcom/bb/dd/listener/IGetListener;)V

    return-void
.end method

.method public static reduceMoney(Ljava/lang/Integer;Lcom/bb/dd/listener/IReduceListener;)V
    .locals 2

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/bb/dd/b/c;->a(ILcom/bb/dd/listener/IReduceListener;)V

    return-void
.end method

.method public static setActiveAppListener(Lcom/bb/dd/listener/IActiveListener;)V
    .locals 1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bb/dd/b/c;->a(Lcom/bb/dd/listener/IActiveListener;)V

    return-void
.end method

.method public static setAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/bb/dd/BeiduoPlatform;->setAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static setAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bb/dd/c/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    invoke-static {p0}, Lcom/bb/dd/b/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/d;->c()V

    :cond_0
    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/c;->c()V

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/bb/dd/b/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/bb/dd/b/a;->a()Lcom/bb/dd/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bb/dd/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bb/dd/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static showMoreApps()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Lcom/bb/dd/listener/IShowListener;Z)V

    return-void
.end method

.method public static showMoreApps(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Lcom/bb/dd/listener/IShowListener;Z)V

    return-void
.end method

.method public static showOfferWall()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Lcom/bb/dd/listener/IShowListener;Z)V

    return-void
.end method

.method public static showOfferWall(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Lcom/bb/dd/listener/IShowListener;Z)V

    return-void
.end method

.method public static versionName()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.0"

    return-object v0
.end method
