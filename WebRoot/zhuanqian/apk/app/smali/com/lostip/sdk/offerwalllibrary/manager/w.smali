.class public Lcom/lostip/sdk/offerwalllibrary/manager/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/w;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a()Lcom/lostip/sdk/offerwalllibrary/manager/w;
    .locals 2

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/manager/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a:Lcom/lostip/sdk/offerwalllibrary/manager/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/w;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/w;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a:Lcom/lostip/sdk/offerwalllibrary/manager/w;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a:Lcom/lostip/sdk/offerwalllibrary/manager/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bf;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bf;-><init>()V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.lostip.offerwall.key.ads.install"

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lostip/sdk/offerwalllibrary/other/bf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/entity/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->m()Lcom/lostip/sdk/offerwalllibrary/entity/h;

    move-result-object v0

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/h;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, v1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method declared-synchronized b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bf;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bf;-><init>()V

    const-string v1, "com.lostip.offerwall.key.ads.install"

    const-class v4, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/lostip/sdk/offerwalllibrary/other/bf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appVersion:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/entity/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/entity/a;
    .locals 5

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    iget-object v4, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
