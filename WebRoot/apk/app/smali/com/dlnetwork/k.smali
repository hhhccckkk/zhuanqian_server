.class Lcom/dlnetwork/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/dlnetwork/ay;

.field final synthetic d:Lcom/dlnetwork/DevNativeService;


# direct methods
.method constructor <init>(Lcom/dlnetwork/DevNativeService;)V
    .locals 1

    iput-object p1, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dlnetwork/k;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dlnetwork/k;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/dlnetwork/k;)Lcom/dlnetwork/DevNativeService;
    .locals 1

    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-static {v0}, Lcom/dlnetwork/DevNativeService;->e(Lcom/dlnetwork/DevNativeService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/dlnetwork/DevNativeService;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    const-string v1, "float_click"

    iget-object v5, p0, Lcom/dlnetwork/k;->c:Lcom/dlnetwork/ay;

    iget-object v5, v5, Lcom/dlnetwork/ay;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/dlnetwork/k;->c:Lcom/dlnetwork/ay;

    iget-object v6, v6, Lcom/dlnetwork/ay;->g:Ljava/lang/String;

    invoke-static {v0, v1, v5, v6, v4}, Lcom/dlnetwork/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-virtual {v0}, Lcom/dlnetwork/DevNativeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :goto_2
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-static {v0}, Lcom/dlnetwork/DevNativeService;->k(Lcom/dlnetwork/DevNativeService;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dlnetwork/be;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/download"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/dlnetwork/k;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".apk"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dlnetwork/bm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-virtual {v1, v0}, Lcom/dlnetwork/DevNativeService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dlnetwork/ay;

    iget-object v5, v0, Lcom/dlnetwork/ay;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/dlnetwork/ay;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v1, v0, Lcom/dlnetwork/ay;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/dlnetwork/k;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/dlnetwork/ay;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/dlnetwork/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dlnetwork/k;->c:Lcom/dlnetwork/ay;

    goto/16 :goto_0

    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/dlnetwork/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-virtual {v0}, Lcom/dlnetwork/DevNativeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ssp"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-virtual {v1, v0}, Lcom/dlnetwork/DevNativeService;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/dlnetwork/k;->d:Lcom/dlnetwork/DevNativeService;

    invoke-static {v0, v3}, Lcom/dlnetwork/DevNativeService;->b(Lcom/dlnetwork/DevNativeService;Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dlnetwork/l;

    invoke-direct {v1, p0, v4}, Lcom/dlnetwork/l;-><init>(Lcom/dlnetwork/k;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_6
    move v2, v3

    goto/16 :goto_2
.end method
