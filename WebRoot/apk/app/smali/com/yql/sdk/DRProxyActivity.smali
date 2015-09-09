.class public Lcom/yql/sdk/DRProxyActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/yql/sdk/internal/DRAttachable;


# instance fields
.field private a:Lcom/yql/sdk/DRPlugin;

.field private b:Lcom/yql/sdk/internal/DRProxyImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-direct {v0, p0}, Lcom/yql/sdk/internal/DRProxyImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    return-void
.end method


# virtual methods
.method public attach(Lcom/yql/sdk/DRPlugin;Lcom/yql/sdk/internal/DRPluginManager;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    :cond_0
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {v0}, Lcom/yql/sdk/internal/DRProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/yql/sdk/DRPlugin;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onBackPressed()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yql/sdk/DRProxyActivity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->b:Lcom/yql/sdk/internal/DRProxyImpl;

    invoke-virtual {p0}, Lcom/yql/sdk/DRProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yql/sdk/internal/DRProxyImpl;->onCreate(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1, p2}, Lcom/yql/sdk/DRPlugin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1, p2}, Lcom/yql/sdk/DRPlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onRestart()V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onStart()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0}, Lcom/yql/sdk/DRPlugin;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/DRProxyActivity;->a:Lcom/yql/sdk/DRPlugin;

    invoke-interface {v0, p1}, Lcom/yql/sdk/DRPlugin;->onWindowFocusChanged(Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
