.class public Lcom/lostip/sdk/offerwalllibrary/other/ao;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/lostip/sdk/offerwalllibrary/other/ao;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private i:Lcom/lostip/sdk/offerwalllibrary/other/aq;

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/other/as;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lostip/sdk/offerwalllibrary/other/an;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Lcom/lostip/sdk/offerwalllibrary/other/be;

.field private q:Z

.field private r:Ljava/text/DecimalFormat;

.field private s:I

.field private t:I

.field private u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private x:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "save_lock"

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a:Ljava/lang/String;

    const-string v0, "async_task_lock"

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b:Ljava/lang/String;

    const-string v0, "sync_task_lock"

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->c:Ljava/lang/String;

    const/16 v0, 0x2000

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->d:I

    const-string v0, "bodong_commontools_download_data_save"

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->f:I

    const v0, 0x927c0

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->g:I

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->m:Z

    iput v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->n:I

    iput v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->o:I

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->q:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->s:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->t:I

    iput-boolean v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->u:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->x:J

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/aq;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;Lcom/lostip/sdk/offerwalllibrary/other/aq;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->i:Lcom/lostip/sdk/offerwalllibrary/other/aq;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/bf;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bf;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->p:Lcom/lostip/sdk/offerwalllibrary/other/be;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->r:Ljava/text/DecimalFormat;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/view/ViewGroup;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v3, v0, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JF)Landroid/app/Notification;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v0, 0x1080081

    iput v0, v1, Landroid/app/Notification;->icon:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    \u5269\u4f59\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u79d2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    if-lez v0, :cond_1

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    const/16 v3, 0x64

    float-to-int v4, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/an;
    .locals 1

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/an;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/other/ao;
    .locals 2

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->h:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    if-nez v0, :cond_1

    const-string v1, "instance_lock"

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->h:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/ao;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->h:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->h:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-object p2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JZ)Z
    .locals 12

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->o:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v8, :cond_9

    iget-boolean v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->r:Ljava/text/DecimalFormat;

    iget v3, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->g:F

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    const/high16 v1, 0x4980

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->r:Ljava/text/DecimalFormat;

    iget v4, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " mb/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const-string v3, "100%"

    const-string v4, ""

    const/4 v0, 0x0

    iput v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    const/high16 v0, 0x42c8

    iput v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->g:F

    :cond_2
    iget-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    if-nez v0, :cond_6

    iget-wide v5, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->i:J

    iget v7, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->g:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JF)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    invoke-direct {p0, p1, v0, v9}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Landroid/app/Notification;I)V

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    iget v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    const/high16 v1, 0x4480

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->r:Ljava/text/DecimalFormat;

    iget v4, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " kb/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    iget v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->r:Ljava/text/DecimalFormat;

    iget v4, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->h:F

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " b/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    \u5269\u4f59\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->i:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->i:J

    const-wide/16 v10, 0x0

    cmp-long v1, v5, v10

    if-nez v1, :cond_7

    const-string v0, ""

    :cond_7
    iget-object v1, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    if-lez v0, :cond_3

    iget-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    const/16 v2, 0x64

    iget v3, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->g:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    iget-object v2, v8, Lcom/lostip/sdk/offerwalllibrary/other/an;->k:Landroid/app/Notification;

    invoke-interface {v0, p1, p2, v2}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/ao;Landroid/content/Context;Ljava/lang/String;JZ)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/lostip/sdk/offerwalllibrary/other/an;
    .locals 2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/an;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/lostip/sdk/offerwalllibrary/other/ao;)I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->s:I

    return v0
.end method

.method private c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 6

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_1

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->f:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    move-object v1, v0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v3, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Landroid/app/Notification;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1, p2, v5, v3}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/lostip/sdk/offerwalllibrary/other/ao;)I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->t:I

    return v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    const-string v1, "\u4efb\u52a1\u4e0b\u8f7d\u5b8c\u6210"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    :cond_0
    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/download/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->w:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic e(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->x:J

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "\u5220\u9664\u8fc7\u671f\u6587\u4ef6\uff1a"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {p0, v5}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->q:Z

    return v0
.end method

.method static synthetic g(Lcom/lostip/sdk/offerwalllibrary/other/ao;)I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->n:I

    return v0
.end method

.method static synthetic h(Lcom/lostip/sdk/offerwalllibrary/other/ao;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->m:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->d(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    if-gez p1, :cond_0

    const/16 p1, 0x3e8

    :cond_0
    iput p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->n:I

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->o:I

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->n:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->n:I

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->o:I

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZI)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZI)V
    .locals 7

    const-string v2, "async_task_lock"

    monitor-enter v2

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v2

    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    const/4 v3, 0x6

    const-string v4, "Network disconnected!"

    invoke-interface {v0, p1, p2, v3, v4}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/view/ViewGroup;)I

    move-result v0

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->v:I

    :cond_4
    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->u:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->u:Z

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->e(Landroid/content/Context;)V

    :cond_5
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->i:Lcom/lostip/sdk/offerwalllibrary/other/aq;

    invoke-virtual {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v1, p3

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p4, :cond_9

    invoke-direct {p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/lostip/sdk/offerwalllibrary/other/an;

    invoke-direct {v3}, Lcom/lostip/sdk/offerwalllibrary/other/an;-><init>()V

    iput-object p2, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->a:Ljava/lang/String;

    iput-object p3, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    iput-boolean p4, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->d:Z

    const/16 v0, 0x65

    iput v0, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->b:I

    iput-boolean p5, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->e:Z

    iput-boolean p6, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->f:Z

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->i:Lcom/lostip/sdk/offerwalllibrary/other/aq;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget v3, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, p7, p2, v4}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    monitor-exit v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1, p2, v5}, Lcom/lostip/sdk/offerwalllibrary/other/as;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, p2, v4}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v3, Lcom/lostip/sdk/offerwalllibrary/other/an;

    invoke-direct {v3}, Lcom/lostip/sdk/offerwalllibrary/other/an;-><init>()V

    iput-object p2, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->a:Ljava/lang/String;

    iput-object p3, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->c:Ljava/lang/String;

    iput-boolean p4, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->d:Z

    const/16 v0, 0x65

    iput v0, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->b:I

    iput-boolean p5, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->e:Z

    iput-boolean p6, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->f:Z

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->i:Lcom/lostip/sdk/offerwalllibrary/other/aq;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget v3, v3, Lcom/lostip/sdk/offerwalllibrary/other/an;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, p7, p2, v4}, Lcom/lostip/sdk/offerwalllibrary/other/aq;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->l:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1, p2, v5}, Lcom/lostip/sdk/offerwalllibrary/other/as;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/as;

    invoke-interface {v0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/as;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

.method public declared-synchronized a(Lcom/lostip/sdk/offerwalllibrary/other/as;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->w:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->q:Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/an;

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/lostip/sdk/offerwalllibrary/other/an;->e:Z

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    const-string v1, "save_lock"

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ao;->p:Lcom/lostip/sdk/offerwalllibrary/other/be;

    const-string v3, "bodong_commontools_download_data_save"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3, v2, v4}, Lcom/lostip/sdk/offerwalllibrary/other/be;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/an;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
