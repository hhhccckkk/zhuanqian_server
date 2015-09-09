.class public Lcom/yql/sdk/DRBasePluginService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/yql/sdk/DRServicePlugin;


# static fields
.field public static final TAG:Ljava/lang/String; = "DRBasePluginService"


# instance fields
.field protected mFrom:I

.field private mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

.field private mProxyService:Landroid/app/Service;

.field protected that:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p0, p0, Lcom/yql/sdk/DRBasePluginService;->that:Landroid/app/Service;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yql/sdk/DRBasePluginService;->mFrom:I

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Service;Lcom/yql/sdk/internal/DRPluginPackage;)V
    .locals 2

    :try_start_0
    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService attach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/yql/sdk/DRBasePluginService;->mProxyService:Landroid/app/Service;

    iput-object p2, p0, Lcom/yql/sdk/DRBasePluginService;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginService;->mProxyService:Landroid/app/Service;

    iput-object v0, p0, Lcom/yql/sdk/DRBasePluginService;->that:Landroid/app/Service;

    const/4 v0, 0x1

    iput v0, p0, Lcom/yql/sdk/DRBasePluginService;->mFrom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected isInternalCall()Z
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginService;->mFrom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onTrimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "DRBasePluginService"

    const-string v1, "DRBasePluginService onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
