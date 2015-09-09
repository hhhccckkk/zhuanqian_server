.class public Lcom/datouniao/AdPublisher/utils/c;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/datouniao/AdPublisher/utils/c;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private g:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/datouniao/AdPublisher/utils/c;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/datouniao/AdPublisher/utils/c;->c:I

    iput v1, p0, Lcom/datouniao/AdPublisher/utils/c;->d:I

    const-string v0, "toast_key_msg"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->e:Ljava/lang/String;

    new-instance v0, Lcom/datouniao/AdPublisher/utils/d;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/utils/d;-><init>(Lcom/datouniao/AdPublisher/utils/c;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/utils/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/c;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/utils/c;->f:Lcom/datouniao/AdPublisher/utils/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datouniao/AdPublisher/utils/c;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/utils/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/datouniao/AdPublisher/utils/c;->f:Lcom/datouniao/AdPublisher/utils/c;

    :cond_0
    sget-object v0, Lcom/datouniao/AdPublisher/utils/c;->f:Lcom/datouniao/AdPublisher/utils/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/datouniao/AdPublisher/utils/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/datouniao/AdPublisher/utils/f;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/datouniao/AdPublisher/utils/f;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v3, v2, Landroid/app/Notification;->icon:I

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    const-string v4, "\u5b89\u88c5\u6210\u529f"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/utils/c;->g:Landroid/os/Handler;

    new-instance v2, Lcom/datouniao/AdPublisher/utils/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/datouniao/AdPublisher/utils/e;-><init>(Lcom/datouniao/AdPublisher/utils/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
