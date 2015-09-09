.class public Lnet/midi/wall/sdk/MyWallActivity;
.super Landroid/app/Activity;


# static fields
.field static a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/midi/wall/sdk/MyWallActivity;->requestWindowFeature(I)Z

    sput-object p1, Lnet/midi/wall/sdk/MyWallActivity;->a:Landroid/os/Bundle;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->c()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnet/midi/wall/sdk/b/i;->a(Ljava/lang/Integer;Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/midi/wall/sdk/b/i;->d()V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/midi/wall/sdk/b/i;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/midi/wall/sdk/b/i;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lnet/midi/wall/sdk/b/i;->a()Lnet/midi/wall/sdk/b/i;

    move-result-object v0

    sget-object v1, Lnet/midi/wall/sdk/MyWallActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0, v1}, Lnet/midi/wall/sdk/b/i;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
