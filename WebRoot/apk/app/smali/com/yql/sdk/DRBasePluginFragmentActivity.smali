.class public Lcom/yql/sdk/DRBasePluginFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/yql/sdk/DRPlugin;


# static fields
.field private static final a:Ljava/lang/String; = "DRBasePluginFragmentActivity"


# instance fields
.field private b:Landroid/support/v4/app/FragmentActivity;

.field private c:Landroid/support/v4/app/FragmentActivity;

.field private d:I

.field private e:Lcom/yql/sdk/internal/DRPluginManager;

.field private f:Lcom/yql/sdk/internal/DRPluginPackage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    return-void
.end method

.method private a(Lcom/yql/sdk/internal/DRIntent;)I
    .locals 3

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setPluginPackage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->e:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v1, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/yql/sdk/internal/DRPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)I

    move-result v0

    return v0
.end method

.method private a(Lcom/yql/sdk/internal/DRIntent;I)I
    .locals 3

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setPluginPackage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->e:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v1, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/yql/sdk/internal/DRPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;I)I

    move-result v0

    return v0
.end method

.method private a(Lcom/yql/sdk/internal/DRIntent;Landroid/content/ServiceConnection;)I
    .locals 2

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setPluginPackage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->e:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v1, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/yql/sdk/internal/DRPluginManager;->unBindPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/yql/sdk/internal/DRIntent;Landroid/content/ServiceConnection;I)I
    .locals 2

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setPluginPackage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->e:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v1, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/yql/sdk/internal/DRPluginManager;->bindPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;Landroid/content/ServiceConnection;I)I

    move-result v0

    return v0
.end method

.method private b(Lcom/yql/sdk/internal/DRIntent;)I
    .locals 2

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yql/sdk/internal/DRIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yql/sdk/internal/DRIntent;->setPluginPackage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->e:Lcom/yql/sdk/internal/DRPluginManager;

    iget-object v1, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/yql/sdk/internal/DRPluginManager;->startPluginService(Landroid/content/Context;Lcom/yql/sdk/internal/DRIntent;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach(Landroid/app/Activity;Lcom/yql/sdk/internal/DRPluginPackage;)V
    .locals 3

    const-string v0, "DRBasePluginFragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: proxyActivity= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->f:Lcom/yql/sdk/internal/DRPluginPackage;

    iget-object v0, v0, Lcom/yql/sdk/internal/DRPluginPackage;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "extra.from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    :cond_0
    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    :cond_1
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/yql/sdk/internal/DRPluginManager;->getInstance(Landroid/content/Context;)Lcom/yql/sdk/internal/DRPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->e:Lcom/yql/sdk/internal/DRPluginManager;

    const-string v1, "DRBasePluginFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onCreate: from= "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_2

    const-string v0, "DRConstants.FROM_INTERNAL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "FROM_EXTERNAL"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yql/sdk/DRBasePluginFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRBasePluginFragmentActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
