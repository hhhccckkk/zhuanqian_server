.class public Lcom/lostip/sdk/offerwalllibrary/receiver/LostipOfferWallReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a()Lcom/lostip/sdk/offerwalllibrary/manager/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v2, "com.lostip.sdk.offerwall.action.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "com.lostip.sdk.offerwall.extra.receive.action.type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.lostip.sdk.offerwall.extra.sender.packagename"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lostip.sdk.offerwall.extra.install.app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a()Lcom/lostip/sdk/offerwalllibrary/manager/d;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "com.lostip.sdk.offerwall.extra.remove.app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "com.lostip.sdk.offerwall.action.CLEAR_NOTICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a()Lcom/lostip/sdk/offerwalllibrary/manager/d;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
