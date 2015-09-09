.class public Lcom/qidian/intwal/QDIntWaActivity;
.super Landroid/app/Activity;


# static fields
.field public static WEBVIEW_CLOSE:I


# instance fields
.field final a:Landroid/app/Activity;

.field b:I

.field c:Lcom/qidian/intwal/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field public isOnResumed:Z

.field public m_iStyle:I

.field public m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/qidian/intwal/QDIntWaActivity;->WEBVIEW_CLOSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcom/qidian/intwal/QDIntWaActivity;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    iput v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->isOnResumed:Z

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

    invoke-virtual {p0}, Lcom/qidian/intwal/QDIntWaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Wall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/qidian/intwal/QDIntWaActivity;->i:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_iStyle:I

    invoke-virtual {p0}, Lcom/qidian/intwal/QDIntWaActivity;->setWallActivity()V

    :cond_0
    const-string v1, "Recommend"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/qidian/intwal/QDIntWaActivity;->i:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_iStyle:I

    invoke-virtual {p0}, Lcom/qidian/intwal/QDIntWaActivity;->setWallActivity()V

    :cond_1
    const-string v1, "NOTID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/qidian/intwal/QDIntWaActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->b:I

    invoke-virtual {p0}, Lcom/qidian/intwal/QDIntWaActivity;->setDialogActivity()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;

    if-eqz v0, :cond_0

    const-string v0, "_________"

    const-string v1, "come in keyback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-virtual {v0}, Lcom/qidian/intwal/IntWaWebLayout;->goback()V

    :cond_0
    iget v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_iStyle:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_iStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/qidian/intwal/QDIntWaActivity;->finish()V

    :cond_1
    return v2
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume.loading.isOnResum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/qidian/intwal/QDIntWaActivity;->isOnResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->isOnResumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->isOnResumed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->isOnResumed:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume.loading"

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-virtual {v0}, Lcom/qidian/intwal/IntWaWebLayout;->reLoad()V

    goto :goto_0
.end method

.method public setDialogActivity()V
    .locals 3

    invoke-static {}, Lcom/qidian/intwal/c;->a()Lcom/qidian/intwal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->c:Lcom/qidian/intwal/c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qidian/intwal/QDIntWaActivity;->requestWindowFeature(I)Z

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

    new-instance v2, Lcom/qidian/intwal/v;

    invoke-direct {v2, p0}, Lcom/qidian/intwal/v;-><init>(Lcom/qidian/intwal/QDIntWaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    new-instance v2, Lcom/qidian/intwal/w;

    invoke-direct {v2, p0}, Lcom/qidian/intwal/w;-><init>(Lcom/qidian/intwal/QDIntWaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public setWallActivity()V
    .locals 3

    new-instance v0, Lcom/qidian/intwal/u;

    invoke-direct {v0, p0}, Lcom/qidian/intwal/u;-><init>(Lcom/qidian/intwal/QDIntWaActivity;)V

    new-instance v1, Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v2, p0, Lcom/qidian/intwal/QDIntWaActivity;->i:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/qidian/intwal/IntWaWebLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qidian/intwal/QDIntWaActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/qidian/intwal/QDIntWaActivity;->m_wallLayout:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-virtual {p0, v0}, Lcom/qidian/intwal/QDIntWaActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
