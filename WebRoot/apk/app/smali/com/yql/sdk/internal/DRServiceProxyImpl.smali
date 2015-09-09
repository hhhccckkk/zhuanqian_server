.class public Lcom/yql/sdk/internal/DRServiceProxyImpl;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DRServiceProxyImpl"


# instance fields
.field private mProxyService:Landroid/app/Service;

.field private mRemoteService:Lcom/yql/sdk/DRServicePlugin;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mProxyService:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Intent;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/yql/sdk/utils/a;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "extra.package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra.class"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DRServiceProxyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clazz="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-static {v3}, Lcom/yql/sdk/internal/DRPluginManager;->getInstance(Landroid/content/Context;)Lcom/yql/sdk/internal/DRPluginManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yql/sdk/internal/DRPluginManager;->getPackage(Ljava/lang/String;)Lcom/yql/sdk/internal/DRPluginPackage;

    move-result-object v4

    iget-object v1, v4, Lcom/yql/sdk/internal/DRPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/yql/sdk/DRServicePlugin;

    move-object v1, v0

    iput-object v1, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mProxyService:Landroid/app/Service;

    check-cast v1, Lcom/yql/sdk/internal/DRServiceAttachable;

    iget-object v5, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v1, v5, v3}, Lcom/yql/sdk/internal/DRServiceAttachable;->attach(Lcom/yql/sdk/DRServicePlugin;Lcom/yql/sdk/internal/DRPluginManager;)V

    const-string v1, "DRServiceProxyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "instance = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    iget-object v2, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-interface {v1, v2, v4}, Lcom/yql/sdk/DRServicePlugin;->attach(Landroid/app/Service;Lcom/yql/sdk/internal/DRPluginPackage;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra.from"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/yql/sdk/internal/DRServiceProxyImpl;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v1}, Lcom/yql/sdk/DRServicePlugin;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
