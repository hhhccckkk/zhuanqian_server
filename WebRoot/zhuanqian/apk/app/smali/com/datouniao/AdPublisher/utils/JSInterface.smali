.class public Lcom/datouniao/AdPublisher/utils/JSInterface;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isPackageInstalled(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/datouniao/AdPublisher/utils/f;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/datouniao/AdPublisher/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackKeyPressed()V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public openPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/datouniao/AdPublisher/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->b:Landroid/os/Handler;

    return-void
.end method

.method public signInFromWeb(Ljava/lang/String;FFLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.datouniao.AdPublish.ActivityAdsApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "currency_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_amount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "total_amount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "server_orderid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public toastMsg(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/utils/JSInterface;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
