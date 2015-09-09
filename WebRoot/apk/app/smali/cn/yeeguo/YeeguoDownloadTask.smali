.class public Lcn/yeeguo/YeeguoDownloadTask;
.super Landroid/os/AsyncTask;
.source "YeeguoDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final MSG_INSTALLED:I

.field private final MSG_OPEN:I

.field private final MSG_SHOW:I

.field private final MSG_UPDATE_PROGRESS:I

.field private final UPDATE_TIME:I

.field private advs:Lcn/yeeguo/YeeguoAdvs;

.field private check_install_count:I

.field private curTotal:J

.field private isDownloading:Z

.field private isconnect:Z

.field private lenghtOfFile:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private noticeID:I

.field private notification:Landroid/app/Notification;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/yeeguo/YeeguoAdvs;Lcn/yeeguo/YeeguoCheckPage;)V
    .locals 7
    .parameter "context"
    .parameter "randomID"
    .parameter "advs"
    .parameter "yeeguoCheckPage"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const/4 v2, 0x1

    iput v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->MSG_UPDATE_PROGRESS:I

    .line 37
    iput v4, p0, Lcn/yeeguo/YeeguoDownloadTask;->MSG_OPEN:I

    .line 38
    const/4 v2, 0x3

    iput v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->MSG_INSTALLED:I

    .line 39
    iput v6, p0, Lcn/yeeguo/YeeguoDownloadTask;->MSG_SHOW:I

    .line 44
    const/16 v2, 0x5dc

    iput v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->UPDATE_TIME:I

    .line 52
    iput v5, p0, Lcn/yeeguo/YeeguoDownloadTask;->noticeID:I

    .line 55
    iput v5, p0, Lcn/yeeguo/YeeguoDownloadTask;->check_install_count:I

    .line 57
    iput-boolean v5, p0, Lcn/yeeguo/YeeguoDownloadTask;->isconnect:Z

    .line 234
    new-instance v2, Lcn/yeeguo/YeeguoDownloadTask$1;

    invoke-direct {v2, p0}, Lcn/yeeguo/YeeguoDownloadTask$1;-><init>(Lcn/yeeguo/YeeguoDownloadTask;)V

    iput-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean v5, p0, Lcn/yeeguo/YeeguoDownloadTask;->isDownloading:Z

    .line 75
    iput p2, p0, Lcn/yeeguo/YeeguoDownloadTask;->noticeID:I

    .line 76
    iput-object p4, p0, Lcn/yeeguo/YeeguoDownloadTask;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    .line 77
    iput-object p3, p0, Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;

    .line 78
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcn/yeeguo/YeeguoAdvs;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/yeeguo/YeeguoUtil;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    invoke-virtual {p3}, Lcn/yeeguo/YeeguoAdvs;->getAppname()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p3}, Lcn/yeeguo/YeeguoAdvs;->getAppname()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcn/yeeguo/YeeguoAdvs;->getAppname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/yeeguo/YeeguoAdvs;->setAppname(Ljava/lang/String;)V

    .line 84
    :cond_1
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 83
    iput-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 86
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->pendingIntent:Landroid/app/PendingIntent;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/yeeguo/YeeguoAdvs;->getAppname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, tickerText:Ljava/lang/String;
    const v0, 0x1080081

    .line 92
    .local v0, icon:I
    new-instance v2, Landroid/app/Notification;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 92
    iput-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    .line 94
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 95
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 96
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 97
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 98
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    iput v6, v2, Landroid/app/Notification;->defaults:I

    .line 99
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    const v3, -0xffff01

    iput v3, v2, Landroid/app/Notification;->ledARGB:I

    .line 101
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    const/16 v3, 0x1388

    iput v3, v2, Landroid/app/Notification;->ledOnMS:I

    .line 103
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    .end local v0           #icon:I
    .end local v1           #tickerText:Ljava/lang/String;
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic access$10(Lcn/yeeguo/YeeguoDownloadTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->isconnect:Z

    return v0
.end method

.method static synthetic access$11(Lcn/yeeguo/YeeguoDownloadTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/yeeguo/YeeguoDownloadTask;->isconnect:Z

    return-void
.end method

.method static synthetic access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcn/yeeguo/YeeguoDownloadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcn/yeeguo/YeeguoDownloadTask;->handleUpdateProgress()V

    return-void
.end method

.method static synthetic access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;

    return-object v0
.end method

.method static synthetic access$6(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoCheckPage;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;

    return-object v0
.end method

.method static synthetic access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcn/yeeguo/YeeguoDownloadTask;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->check_install_count:I

    return v0
.end method

.method static synthetic access$9(Lcn/yeeguo/YeeguoDownloadTask;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcn/yeeguo/YeeguoDownloadTask;->check_install_count:I

    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    .line 210
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    check-cast v0, Landroid/app/NotificationManager;

    .line 211
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 212
    return-void
.end method

.method private handleUpdateProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-direct {p0}, Lcn/yeeguo/YeeguoDownloadTask;->progressUpdate()Z

    move-result v0

    .line 221
    .local v0, isFinish:Z
    if-nez v0, :cond_1

    .line 222
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0}, Lcn/yeeguo/YeeguoDownloadTask;->clearNotification()V

    .line 225
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->noticeID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private progressUpdate()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 193
    iget-wide v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->curTotal:J

    .line 194
    .local v2, count:J
    iget-object v8, p0, Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;

    invoke-virtual {v8}, Lcn/yeeguo/YeeguoAdvs;->getAppname()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".apk"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, contentTitle:Ljava/lang/String;
    long-to-double v8, v2

    iget-wide v10, p0, Lcn/yeeguo/YeeguoDownloadTask;->lenghtOfFile:J

    long-to-double v10, v10

    div-double v5, v8, v10

    .line 197
    .local v5, pro1:D
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v5

    double-to-int v4, v8

    .line 198
    .local v4, pro:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u6b63\u5728\u4e0b\u8f7d "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, contentText:Ljava/lang/String;
    iget-object v8, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    if-eqz v8, :cond_0

    .line 200
    iget-object v8, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    iget-object v9, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    .line 201
    iget-object v10, p0, Lcn/yeeguo/YeeguoDownloadTask;->pendingIntent:Landroid/app/PendingIntent;

    .line 200
    invoke-virtual {v8, v9, v1, v0, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 202
    iget-object v8, p0, Lcn/yeeguo/YeeguoDownloadTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcn/yeeguo/YeeguoDownloadTask;->notification:Landroid/app/Notification;

    invoke-virtual {v8, v7, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 204
    :cond_0
    iget-wide v8, p0, Lcn/yeeguo/YeeguoDownloadTask;->curTotal:J

    iget-wide v10, p0, Lcn/yeeguo/YeeguoDownloadTask;->lenghtOfFile:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/yeeguo/YeeguoDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "params"

    .prologue
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcn/yeeguo/YeeguoDownloadTask;->getSDPath()Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, sdDir:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;

    invoke-virtual {v13}, Lcn/yeeguo/YeeguoAdvs;->getAppname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, filePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, connect:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 124
    .local v6, input:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 126
    .local v8, output:Ljava/io/OutputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcn/yeeguo/YeeguoDownloadTask;->lenghtOfFile:J

    .line 130
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 131
    .end local v6           #input:Ljava/io/InputStream;
    .local v7, input:Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 133
    .end local v8           #output:Ljava/io/OutputStream;
    .local v9, output:Ljava/io/OutputStream;
    const/16 v12, 0x1000

    :try_start_2
    new-array v3, v12, [B

    .line 134
    .local v3, data:[B
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcn/yeeguo/YeeguoDownloadTask;->curTotal:J

    .line 135
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Long;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/yeeguo/YeeguoDownloadTask;->curTotal:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/yeeguo/YeeguoDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 137
    :goto_0
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_2

    .line 141
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    if-eqz v9, :cond_0

    .line 148
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 150
    :cond_0
    if-eqz v7, :cond_6

    .line 151
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v9

    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    move-object v6, v7

    .line 158
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v7           #input:Ljava/io/InputStream;
    .end local v11           #url:Ljava/net/URL;
    .restart local v6       #input:Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v5

    .line 138
    .end local v6           #input:Ljava/io/InputStream;
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v2       #count:I
    .restart local v3       #data:[B
    .restart local v7       #input:Ljava/io/InputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcn/yeeguo/YeeguoDownloadTask;->curTotal:J

    int-to-long v14, v2

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcn/yeeguo/YeeguoDownloadTask;->curTotal:J

    .line 139
    const/4 v12, 0x0

    invoke-virtual {v9, v3, v12, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 142
    .end local v2           #count:I
    .end local v3           #data:[B
    :catch_0
    move-exception v4

    move-object v8, v9

    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    move-object v6, v7

    .line 143
    .end local v7           #input:Ljava/io/InputStream;
    .end local v11           #url:Ljava/net/URL;
    .local v4, e:Ljava/lang/Exception;
    .restart local v6       #input:Ljava/io/InputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    const/4 v5, 0x0

    .line 147
    if-eqz v8, :cond_3

    .line 148
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 150
    :cond_3
    if-eqz v6, :cond_1

    .line 151
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 153
    :catch_1
    move-exception v4

    .line 154
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 147
    :goto_3
    if-eqz v8, :cond_4

    .line 148
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 150
    :cond_4
    if-eqz v6, :cond_5

    .line 151
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 156
    :cond_5
    :goto_4
    throw v12

    .line 153
    :catch_2
    move-exception v4

    .line 154
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 153
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #input:Ljava/io/InputStream;
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v2       #count:I
    .restart local v3       #data:[B
    .restart local v7       #input:Ljava/io/InputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catch_3
    move-exception v4

    .line 154
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4           #e:Ljava/lang/Exception;
    :cond_6
    move-object v8, v9

    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #input:Ljava/io/InputStream;
    .restart local v6       #input:Ljava/io/InputStream;
    goto :goto_1

    .line 145
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v6           #input:Ljava/io/InputStream;
    .restart local v7       #input:Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7           #input:Ljava/io/InputStream;
    .restart local v6       #input:Ljava/io/InputStream;
    goto :goto_3

    .end local v6           #input:Ljava/io/InputStream;
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v7       #input:Ljava/io/InputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9           #output:Ljava/io/OutputStream;
    .restart local v8       #output:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #input:Ljava/io/InputStream;
    .restart local v6       #input:Ljava/io/InputStream;
    goto :goto_3

    .line 142
    .end local v11           #url:Ljava/net/URL;
    :catch_4
    move-exception v4

    goto :goto_2

    .end local v6           #input:Ljava/io/InputStream;
    .restart local v7       #input:Ljava/io/InputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7           #input:Ljava/io/InputStream;
    .restart local v6       #input:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, sdDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v3, "mounted"

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    .local v0, sdCardExist:Z
    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 316
    :cond_0
    if-nez v1, :cond_1

    .line 317
    const/4 v2, 0x0

    .line 319
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->isDownloading:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/yeeguo/YeeguoDownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcn/yeeguo/YeeguoDownloadTask;->noticeID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 170
    invoke-direct {p0}, Lcn/yeeguo/YeeguoDownloadTask;->clearNotification()V

    .line 172
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    const-string v2, "application/vnd.android.package-archive"

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 183
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->isDownloading:Z

    .line 184
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->isDownloading:Z

    .line 113
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 163
    iget-object v0, p0, Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcn/yeeguo/YeeguoDownloadTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
