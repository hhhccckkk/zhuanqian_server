.class public Lcom/datouniao/AdPublisher/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/datouniao/AdPublisher/ReceiveNotifier;

.field private b:Lcom/datouniao/AdPublisher/b;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/datouniao/AdPublisher/a;->a:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    iput-object p1, p0, Lcom/datouniao/AdPublisher/a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/a;)Lcom/datouniao/AdPublisher/ReceiveNotifier;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a;->a:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.datouniao.AdPublish.ActivityAdsApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "currency_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :try_start_1
    const-string v3, "receive_amount"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    :goto_0
    :try_start_2
    const-string v4, "total_amount"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    :goto_1
    :try_start_3
    const-string v0, "server_orderid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "app_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "app_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/datouniao/AdPublisher/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/datouniao/AdPublisher/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/datouniao/AdPublisher/b;-><init>(Lcom/datouniao/AdPublisher/a;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/a;->b:Lcom/datouniao/AdPublisher/b;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/a;->b:Lcom/datouniao/AdPublisher/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v3

    move v3, v0

    goto :goto_0

    :catch_1
    move-exception v4

    move v4, v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method
