.class public Lcn/guomob/android/intwal/GuomobIntWaActivity;
.super Landroid/app/Activity;


# static fields
.field public static WEBVIEW_CLOSE:I


# instance fields
.field final a:Landroid/app/Activity;

.field b:I

.field c:Lcn/guomob/android/intwal/d;

.field private d:Ljava/lang/String;

.field public hasOnResume:Z

.field public m_iStyle:I

.field public m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->WEBVIEW_CLOSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->hasOnResume:Z

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcn/guomob/android/intwal/s;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Wall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_iStyle:I

    invoke-virtual {p0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->setWallActivity()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "NOTID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->b:I

    invoke-virtual {p0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->setDialogActivity()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "systeme.back is return"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->goback()V

    const-string v0, "webview go to back"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->hasOnResume:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->hasOnResume:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->hasOnResume:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume.loading"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->reLoad()V

    goto :goto_0
.end method

.method public setDialogActivity()V
    .locals 3

    const-string v0, "come in which="

    const-string v1, "DialogExitActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcn/guomob/android/intwal/d;->a()Lcn/guomob/android/intwal/d;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->c:Lcn/guomob/android/intwal/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u9000\u51fa\u4e0b\u8f7d?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lcn/guomob/android/intwal/o;

    invoke-direct {v2, p0}, Lcn/guomob/android/intwal/o;-><init>(Lcn/guomob/android/intwal/GuomobIntWaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    new-instance v2, Lcn/guomob/android/intwal/p;

    invoke-direct {v2, p0}, Lcn/guomob/android/intwal/p;-><init>(Lcn/guomob/android/intwal/GuomobIntWaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public setWallActivity()V
    .locals 3

    new-instance v0, Lcn/guomob/android/intwal/n;

    invoke-direct {v0, p0}, Lcn/guomob/android/intwal/n;-><init>(Lcn/guomob/android/intwal/GuomobIntWaActivity;)V

    new-instance v1, Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v2, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcn/guomob/android/intwal/IntWaWebLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->m_wallLayout:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
