.class public Lcom/yql/sdk/internal/DRPluginManager;
.super Ljava/lang/Object;


# static fields
.field public static final START_RESULT_NO_CLASS:I = 0x2

.field public static final START_RESULT_NO_PKG:I = 0x1

.field public static final START_RESULT_SUCCESS:I = 0x0

.field public static final START_RESULT_TYPE_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DRPluginManager"

.field private static sInstance:Lcom/yql/sdk/internal/DRPluginManager;


# instance fields
.field private dexOutputPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFrom:I

.field private mNativeLibDir:Ljava/lang/String;

.field private final mPackagesHolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yql/sdk/internal/DRPluginPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iput v2, p0, Lcom/yql/sdk/internal/DRPluginManager;->mFrom:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    const-string v1, "pluginlib"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mNativeLibDir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/yql/sdk/internal/DRPluginManager;I)V
    .locals 0

    iput p1, p0, Lcom/yql/sdk/internal/DRPluginManager;->mResult:I

    return-void
.end method

.method private copySoLib(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/yql/sdk/utils/f;->a()Lcom/yql/sdk/utils/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yql/sdk/internal/DRPluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/yql/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 6

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->dexOutputPath:Ljava/lang/String;

    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRPluginManager;->dexOutputPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/yql/sdk/internal/DRPluginManager;->mNativeLibDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fetchProxyServiceClass(Lcom/yql/sdk/internal/DRIntent;Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disallow null packageName."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yql/sdk/internal/DRPluginPackage;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v0, v2}, Lcom/yql/sdk/internal/DRPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/yql/sdk/internal/DRPluginManager;->getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    :cond_3
    const-string v3, "extra.class"

    invoke-virtual {p1, v3, v2}, Lcom/yql/sdk/internal/DRIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra.package"

    invoke-virtual {p1, v2, v1}, Lcom/yql/sdk/internal/DRIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yql/sdk/internal/DRPluginManager;
    .locals 2

    sget-object v0, Lcom/yql/sdk/internal/DRPluginManager;->sInstance:Lcom/yql/sdk/internal/DRPluginManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/yql/sdk/internal/DRPluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yql/sdk/internal/DRPluginManager;->sInstance:Lcom/yql/sdk/internal/DRPluginManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yql/sdk/internal/DRPluginManager;

    invoke-direct {v0, p0}, Lcom/yql/sdk/internal/DRPluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yql/sdk/internal/DRPluginManager;->sInstance:Lcom/yql/sdk/internal/DRPluginManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/yql/sdk/internal/DRPluginManager;->sInstance:Lcom/yql/sdk/internal/DRPluginManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPluginActivityFullPath(Lcom/yql/sdk/internal/DRIntent;Lcom/yql/sdk/internal/DRPluginPackage;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/yql/sdk/internal/DRPluginPackage;->defaultActivity:Ljava/lang/String;

    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/yql/sdk/DRBasePluginActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/yql/sdk/DRProxyActivity;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-class v1, Lcom/yql/sdk/DRBasePluginFragmentActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v0, Lcom/yql/sdk/DRProxyFragmentActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/yql/sdk/DRBasePluginService;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v0, Lcom/yql/sdk/DRProxyService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private performStartActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)V
    .locals 3

    :try_start_0
    const-string v0, "DRPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yql/sdk/internal/DRIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/yql/sdk/internal/DRPluginPackage;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yql/sdk/internal/DRPluginPackage;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/yql/sdk/internal/DRPluginManager;->createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/yql/sdk/internal/DRPluginManager;->createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yql/sdk/internal/DRPluginManager;->createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Lcom/yql/sdk/internal/DRPluginPackage;

    invoke-direct {v0, v1, v2, p1}, Lcom/yql/sdk/internal/DRPluginPackage;-><init>(Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)V

    iget-object v1, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;Landroid/content/ServiceConnection;I)I
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mFrom:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yql/sdk/internal/DRIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/yql/sdk/internal/DRPluginManager$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yql/sdk/internal/DRPluginManager$2;-><init>(Lcom/yql/sdk/internal/DRPluginManager;Lcom/yql/sdk/internal/DRIntent;Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    invoke-direct {p0, p2, v0}, Lcom/yql/sdk/internal/DRPluginManager;->fetchProxyServiceClass(Lcom/yql/sdk/internal/DRIntent;Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;)V

    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/yql/sdk/internal/DRPluginPackage;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yql/sdk/internal/DRPluginPackage;

    goto :goto_0
.end method

.method public loadApk(Ljava/lang/String;)Lcom/yql/sdk/internal/DRPluginPackage;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yql/sdk/internal/DRPluginManager;->loadApk(Ljava/lang/String;Z)Lcom/yql/sdk/internal/DRPluginPackage;

    move-result-object v0

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;Z)Lcom/yql/sdk/internal/DRPluginPackage;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput v1, p0, Lcom/yql/sdk/internal/DRPluginManager;->mFrom:I

    :try_start_0
    iget-object v1, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/yql/sdk/internal/DRPluginManager;->preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/yql/sdk/internal/DRPluginPackage;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/yql/sdk/internal/DRPluginManager;->copySoLib(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPluginActivity(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yql/sdk/internal/DRPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mFrom:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yql/sdk/internal/DRIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2, p3}, Lcom/yql/sdk/internal/DRPluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disallow null packageName."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yql/sdk/internal/DRPluginPackage;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/yql/sdk/internal/DRPluginManager;->getPluginActivityFullPath(Lcom/yql/sdk/internal/DRIntent;Lcom/yql/sdk/internal/DRPluginPackage;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v0, v3}, Lcom/yql/sdk/internal/DRPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/yql/sdk/internal/DRPluginManager;->getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v4, "extra.class"

    invoke-virtual {p2, v4, v3}, Lcom/yql/sdk/internal/DRIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra.package"

    invoke-virtual {p2, v3, v2}, Lcom/yql/sdk/internal/DRIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/yql/sdk/internal/DRPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2, v0}, Lcom/yql/sdk/internal/DRIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2, p3}, Lcom/yql/sdk/internal/DRPluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0
.end method

.method public startPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;)I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mFrom:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yql/sdk/internal/DRIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/yql/sdk/internal/DRPluginManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/yql/sdk/internal/DRPluginManager$1;-><init>(Lcom/yql/sdk/internal/DRPluginManager;Lcom/yql/sdk/internal/DRIntent;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/yql/sdk/internal/DRPluginManager;->fetchProxyServiceClass(Lcom/yql/sdk/internal/DRIntent;Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;)V

    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public unBindPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;Landroid/content/ServiceConnection;)I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mFrom:I

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/yql/sdk/internal/DRPluginManager$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/yql/sdk/internal/DRPluginManager$3;-><init>(Lcom/yql/sdk/internal/DRPluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p2, v0}, Lcom/yql/sdk/internal/DRPluginManager;->fetchProxyServiceClass(Lcom/yql/sdk/internal/DRIntent;Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;)V

    iget v0, p0, Lcom/yql/sdk/internal/DRPluginManager;->mResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method
