.class public Lcom/bb/dd/Browser;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bb/dd/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bb/dd/c/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/d;->c()V

    :cond_0
    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {}, Lcom/bb/dd/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    invoke-static {v0}, Lcom/bb/dd/b/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
