.class public Lcom/lostip/sdk/offerwalllibrary/manager/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/manager/d;


# instance fields
.field private b:Lcom/lostip/sdk/offerwalllibrary/manager/f;

.field private c:Lcom/lostip/sdk/offerwalllibrary/manager/p;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/e;

    invoke-direct {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/manager/e;-><init>(Lcom/lostip/sdk/offerwalllibrary/manager/d;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->c:Lcom/lostip/sdk/offerwalllibrary/manager/p;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/f;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/f;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b:Lcom/lostip/sdk/offerwalllibrary/manager/f;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a()Lcom/lostip/sdk/offerwalllibrary/other/ao;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b:Lcom/lostip/sdk/offerwalllibrary/manager/f;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Lcom/lostip/sdk/offerwalllibrary/other/as;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/lostip/sdk/offerwalllibrary/manager/d;
    .locals 2

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/manager/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a:Lcom/lostip/sdk/offerwalllibrary/manager/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/d;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a:Lcom/lostip/sdk/offerwalllibrary/manager/d;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a:Lcom/lostip/sdk/offerwalllibrary/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Z
    .locals 2

    iget-object v0, p1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lostip.sdk.offerwall.action.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.lostip.sdk.offerwall.extra.receive.action.type"

    const-string v2, "com.lostip.sdk.offerwall.extra.install.app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.lostip.sdk.offerwall.extra.sender.packagename"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 5

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5373\u53ef\u5b89\u88c5\uff01"

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    const v4, 0x1080082

    iput v4, v3, Landroid/app/Notification;->icon:I

    const/4 v4, 0x1

    iput v4, v3, Landroid/app/Notification;->defaults:I

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, p1, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a()Lcom/lostip/sdk/offerwalllibrary/other/ax;

    move-result-object v0

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appIconUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020006

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "notify:"

    const-string v2, "warn:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/receiver/LostipOfferWallReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.lostip.sdk.offerwall.action.CLEAR_NOTICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 5

    :try_start_0
    iget-object v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\u5df2\u7ecf\u51c6\u5907\u597d\u4e86\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u591a\u8f9b\u82e6\uff0c\u4e0d\u88c5\u597d\u53ef\u60dc!"

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    const v4, 0x1080082

    iput v4, v3, Landroid/app/Notification;->icon:I

    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, p1, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a()Lcom/lostip/sdk/offerwalllibrary/other/ax;

    move-result-object v0

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appIconUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ax;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020006

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "notify:"

    const-string v2, "warn:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-static {p2}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->e(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    iget-object v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lostip.sdk.offerwall.action.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.lostip.sdk.offerwall.extra.receive.action.type"

    const-string v2, "com.lostip.sdk.offerwall.extra.remove.app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.lostip.sdk.offerwall.extra.sender.packagename"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u627e\u4e0d\u5230\u672c\u5730\u5b89\u88c5\u6587\u4ef6\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u5427"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b:Lcom/lostip/sdk/offerwalllibrary/manager/f;

    invoke-static {v0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a(Lcom/lostip/sdk/offerwalllibrary/manager/f;Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/entity/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->e(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/entity/e;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "\u627e\u4e0d\u5230\u5df2\u5b89\u88c5\u7684\u5e94\u7528\u7a0b\u5e8f\u3002"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a()Lcom/lostip/sdk/offerwalllibrary/manager/n;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->c:Lcom/lostip/sdk/offerwalllibrary/manager/p;

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/n;->a(Lcom/lostip/sdk/offerwalllibrary/manager/p;)V

    return-void
.end method

.method b(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-static {p2}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->d(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    iget v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->autoInstall:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->e(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->c(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->a()Lcom/lostip/sdk/offerwalllibrary/manager/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/w;->c(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/entity/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->d(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b:Lcom/lostip/sdk/offerwalllibrary/manager/f;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a(Lcom/lostip/sdk/offerwalllibrary/manager/f;Landroid/content/Context;)V

    return-void
.end method
