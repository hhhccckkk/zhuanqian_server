.class public Lcom/yql/sdk/internal/DRIntent;
.super Landroid/content/Intent;


# instance fields
.field private mPluginClass:Ljava/lang/String;

.field private mPluginPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginPackage:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginClass:Ljava/lang/String;

    return-void
.end method

.method private setupExtraClassLoader(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/yql/sdk/utils/a;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Lcom/yql/sdk/internal/DRIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPluginClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginPackage:Ljava/lang/String;

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p2}, Lcom/yql/sdk/internal/DRIntent;->setupExtraClassLoader(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p2}, Lcom/yql/sdk/internal/DRIntent;->setupExtraClassLoader(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setPluginClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginClass:Ljava/lang/String;

    return-void
.end method

.method public setPluginClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginClass:Ljava/lang/String;

    return-void
.end method

.method public setPluginPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/internal/DRIntent;->mPluginPackage:Ljava/lang/String;

    return-void
.end method
