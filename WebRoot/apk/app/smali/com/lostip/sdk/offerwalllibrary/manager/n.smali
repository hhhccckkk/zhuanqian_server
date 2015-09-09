.class public Lcom/lostip/sdk/offerwalllibrary/manager/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/n;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/manager/p;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/o;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/o;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/n;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/n;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/n;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/n;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a:Lcom/lostip/sdk/offerwalllibrary/manager/n;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/n;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/manager/p;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
