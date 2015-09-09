.class public Lcom/yql/sdk/internal/DRPluginPackage;
.super Ljava/lang/Object;


# instance fields
.field public assetManager:Landroid/content/res/AssetManager;

.field public classLoader:Ldalvik/system/DexClassLoader;

.field public defaultActivity:Ljava/lang/String;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public packageName:Ljava/lang/String;

.field public resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/yql/sdk/internal/DRPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/yql/sdk/internal/DRPluginPackage;->resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/yql/sdk/internal/DRPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Lcom/yql/sdk/internal/DRPluginPackage;->parseDefaultActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRPluginPackage;->defaultActivity:Ljava/lang/String;

    return-void
.end method

.method private final parseDefaultActivityName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
