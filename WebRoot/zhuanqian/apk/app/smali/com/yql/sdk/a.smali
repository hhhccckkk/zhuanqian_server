.class final Lcom/yql/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yql/sdk/DRCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasDetail(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final startService()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/yql/sdk/DRSdk;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yql/sdk/d;

    invoke-static {}, Lcom/yql/sdk/DRSdk;->access$1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yql/sdk/internal/DRPluginManager;->getInstance(Landroid/content/Context;)Lcom/yql/sdk/internal/DRPluginManager;

    move-result-object v1

    iget-object v2, v0, Lcom/yql/sdk/d;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/yql/sdk/internal/DRIntent;

    iget-object v3, v0, Lcom/yql/sdk/d;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/yql/sdk/d;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/yql/sdk/internal/DRIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yql/sdk/DRSdk;->access$1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/yql/sdk/internal/DRPluginManager;->startPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
