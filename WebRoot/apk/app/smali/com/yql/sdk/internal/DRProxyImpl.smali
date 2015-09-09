.class public Lcom/yql/sdk/internal/DRProxyImpl;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DRProxyImpl"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mClass:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field protected mPluginActivity:Lcom/yql/sdk/DRPlugin;

.field public mPluginClassLoader:Ljava/lang/ClassLoader;

.field private mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

.field private mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

.field private mProxyActivity:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mProxyActivity:Landroid/app/Activity;

    return-void
.end method

.method private handleActivityInfo()V
    .locals 3

    const-string v0, "DRProxyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleActivityInfo, theme="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :try_start_0
    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initializeActivityInfo()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v1, v1, Lcom/yql/sdk/internal/DRPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mClass:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mClass:Ljava/lang/String;

    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    aget-object v4, v1, v0

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    if-nez v4, :cond_3

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput v2, v4, Landroid/content/pm/ActivityInfo;->theme:I

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_5

    iget-object v4, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v5, 0x1030128

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v5, 0x1030005

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public getRemoteActivity()Lcom/yql/sdk/DRPlugin;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginActivity:Lcom/yql/sdk/DRPlugin;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected launchTargetActivity()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/yql/sdk/internal/DRProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

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

    check-cast v0, Lcom/yql/sdk/DRPlugin;

    move-object v1, v0

    iput-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginActivity:Lcom/yql/sdk/DRPlugin;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mProxyActivity:Landroid/app/Activity;

    check-cast v1, Lcom/yql/sdk/internal/DRAttachable;

    iget-object v3, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginActivity:Lcom/yql/sdk/DRPlugin;

    iget-object v4, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

    invoke-interface {v1, v3, v4}, Lcom/yql/sdk/internal/DRAttachable;->attach(Lcom/yql/sdk/DRPlugin;Lcom/yql/sdk/internal/DRPluginManager;)V

    const-string v1, "DRProxyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "instance = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginActivity:Lcom/yql/sdk/DRPlugin;

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    invoke-interface {v1, v2, v3}, Lcom/yql/sdk/DRPlugin;->attach(Landroid/app/Activity;Lcom/yql/sdk/internal/DRPluginPackage;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra.from"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginActivity:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v2, v1}, Lcom/yql/sdk/DRPlugin;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/yql/sdk/utils/a;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "extra.package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPackageName:Ljava/lang/String;

    const-string v0, "extra.class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mClass:Ljava/lang/String;

    const-string v0, "DRProxyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mClass="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yql/sdk/internal/DRPluginManager;->getInstance(Landroid/content/Context;)Lcom/yql/sdk/internal/DRPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginManager:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yql/sdk/internal/DRPluginManager;->getPackage(Ljava/lang/String;)Lcom/yql/sdk/internal/DRPluginPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mPluginPackage:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->resources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/yql/sdk/internal/DRProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/yql/sdk/internal/DRProxyImpl;->initializeActivityInfo()V

    invoke-direct {p0}, Lcom/yql/sdk/internal/DRProxyImpl;->handleActivityInfo()V

    invoke-virtual {p0}, Lcom/yql/sdk/internal/DRProxyImpl;->launchTargetActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
