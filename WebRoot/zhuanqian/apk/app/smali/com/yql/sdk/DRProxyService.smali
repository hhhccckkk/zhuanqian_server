.class public Lcom/yql/sdk/DRProxyService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/yql/sdk/internal/DRServiceAttachable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DRProxyService"


# instance fields
.field private mImpl:Lcom/yql/sdk/internal/DRServiceProxyImpl;

.field private mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

.field private mRemoteService:Lcom/yql/sdk/DRServicePlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/yql/sdk/internal/DRServiceProxyImpl;

    invoke-direct {v0, p0}, Lcom/yql/sdk/internal/DRServiceProxyImpl;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/yql/sdk/DRProxyService;->mImpl:Lcom/yql/sdk/internal/DRServiceProxyImpl;

    return-void
.end method


# virtual methods
.method public attach(Lcom/yql/sdk/DRServicePlugin;Lcom/yql/sdk/internal/DRPluginManager;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/yql/sdk/DRProxyService;->mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mImpl:Lcom/yql/sdk/internal/DRServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/yql/sdk/internal/DRServiceProxyImpl;->init(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRServicePlugin;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRServicePlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRServicePlugin;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRServicePlugin;->onLowMemory()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRServicePlugin;->onRebind(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    :try_start_0
    const-string v0, "DRProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DRProxyService onStartCommand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mImpl:Lcom/yql/sdk/internal/DRServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/yql/sdk/internal/DRServiceProxyImpl;->init(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRServicePlugin;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRServicePlugin;->onTrimMemory(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onTrimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "DRProxyService"

    const-string v1, "DRProxyService onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyService;->mRemoteService:Lcom/yql/sdk/DRServicePlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRServicePlugin;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
