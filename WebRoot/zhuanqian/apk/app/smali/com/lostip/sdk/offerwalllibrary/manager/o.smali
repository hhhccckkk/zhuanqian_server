.class Lcom/lostip/sdk/offerwalllibrary/manager/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/manager/n;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/n;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/o;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "networkInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/o;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a(Lcom/lostip/sdk/offerwalllibrary/manager/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/manager/p;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/p;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/o;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a(Lcom/lostip/sdk/offerwalllibrary/manager/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/manager/p;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/p;->a(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/o;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a(Lcom/lostip/sdk/offerwalllibrary/manager/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/manager/p;

    invoke-virtual {v0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/p;->a(Landroid/content/Context;)V

    goto :goto_2
.end method
