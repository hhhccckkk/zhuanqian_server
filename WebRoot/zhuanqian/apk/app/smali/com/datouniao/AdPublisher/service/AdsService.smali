.class public Lcom/datouniao/AdPublisher/service/AdsService;
.super Landroid/app/Service;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/ComponentName;

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/datouniao/AdPublisher/service/a;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/service/a;-><init>(Lcom/datouniao/AdPublisher/service/AdsService;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->e:Z

    new-instance v0, Lcom/datouniao/AdPublisher/service/b;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/service/b;-><init>(Lcom/datouniao/AdPublisher/service/AdsService;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/a/e;->e(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;

    move-result-object v1

    const-string v0, "\u4f53\u9a8c\u65f6\u95f4\u4e0d\u591f\uff0c\u8bf7\u7ee7\u7eed\u4f53\u9a8c"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->k()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/e;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->e:Z

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/AdsService;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Lcom/datouniao/AdPublisher/a/d;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_need_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/utils/a;->a()Z

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->d:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/AdsService;->d:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->d:Landroid/content/ComponentName;

    :cond_1
    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/a/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/service/AdsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->b()V

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/service/AdsService;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/service/AdsService;->d:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/service/AdsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->a:I

    :goto_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/AdsService;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/datouniao/AdPublisher/service/AdsService;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/16 v0, 0x2328

    iput v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->a:I

    goto :goto_0
.end method

.method private a(Lcom/datouniao/AdPublisher/a/d;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Lcom/datouniao/AdPublisher/z;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Success"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-static {v3}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->j()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/a/d;)V

    iget-object v2, p0, Lcom/datouniao/AdPublisher/service/AdsService;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/datouniao/AdPublisher/service/AdsService;->c:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ErrorMsg"

    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "[REMOVE]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/a/d;)V

    :cond_3
    if-eqz v1, :cond_0

    const-string v2, "[TIP]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/utils/c;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/datouniao/AdPublisher/utils/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/service/AdsService;Lcom/datouniao/AdPublisher/a/d;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/a/d;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/service/AdsService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/datouniao/AdPublisher/z;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "CurrencyName"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiveAmount"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-static {v3}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TotalAmount"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ServerOrderID"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppID"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppName"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.datouniao.AdPublish.ActivityAdsApp"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "app_id"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "currency_name"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "receive_amount"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "total_amount"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "server_orderid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/service/AdsService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/datouniao/AdPublisher/service/AdsService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->d:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic b(Lcom/datouniao/AdPublisher/service/AdsService;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->e:Z

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->stopSelf()V

    return-void
.end method

.method static synthetic c(Lcom/datouniao/AdPublisher/service/AdsService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static callAdsServiceAppInstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_app_installed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static callAdsServiceAppUninstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_app_uninstalled"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static callAdsServiceFeedBack(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_app_feed_back"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static callAdsServiceStart(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_app_installed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static callServiceNewTaskGet(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_app_new_task_get"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "server_time_stamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static callServiceStop(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/c;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/c;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/datouniao/AdPublisher/service/AppReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.datouniao.AdPublisher.service.check"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/service/AdsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    const-wide/16 v4, 0x4e20

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/service/AdsService;->e:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_app_installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/datouniao/AdPublisher/a/e;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/a/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/c;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/utils/c;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->a()V

    return v4

    :cond_1
    const-string v1, "intent_app_uninstalled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/datouniao/AdPublisher/a/e;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/a/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/c;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/utils/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "intent_app_feed_back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "task_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/a/e;->d(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/AdsService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/datouniao/AdPublisher/service/c;

    invoke-direct {v1, p0, v0}, Lcom/datouniao/AdPublisher/service/c;-><init>(Lcom/datouniao/AdPublisher/service/AdsService;Lcom/datouniao/AdPublisher/a/d;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/service/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string v1, "intent_app_new_task_get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "server_time_stamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/datouniao/AdPublisher/a/e;->a(J)V

    goto :goto_0

    :cond_4
    const-string v1, "intent_app_installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
