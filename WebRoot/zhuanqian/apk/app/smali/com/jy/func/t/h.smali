.class public final Lcom/jy/func/t/h;
.super Ljava/lang/Object;
.source "SoftTool.java"


# static fields
.field private static q:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/jy/func/t/h;->q:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, SDCardRoot:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static B(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 5
    .parameter "context"
    .parameter "softid"
    .parameter "PageNum"
    .parameter "apkName"
    .parameter "strSoftName"
    .parameter "btn"

    .prologue
    .line 124
    invoke-static {p0}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jy/func/t/c;->bQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/jy/func/u/o;

    invoke-direct {v0, p0}, Lcom/jy/func/u/o;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, a:Lcom/jy/func/u/o;
    new-instance v1, Lcom/jy/func/u/d;

    invoke-direct {v1, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v1}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jy/func/u/b;

    .line 133
    invoke-interface {v1}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Lcom/jy/func/u/o;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v2

    .line 134
    new-instance v3, Lcom/jy/func/t/h$1;

    invoke-direct {v3, p0, p5, p4, p2}, Lcom/jy/func/t/h$1;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;I)V

    .line 133
    invoke-static {v1, v2, v3}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Landroid/content/Intent;
    .locals 4
    .parameter "file"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    .local v2, uri:Landroid/net/Uri;
    const-string v1, "application/vnd.android.package-archive"

    .line 114
    .local v1, type:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter "mContext"
    .parameter "strSoftName"
    .parameter "iType"

    .prologue
    const/4 v6, 0x1

    .line 185
    .line 186
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    check-cast v0, Landroid/app/NotificationManager;

    .line 188
    .local v0, manager:Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 189
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 193
    if-nez p2, :cond_0

    .line 195
    const-string v3, "\u4f53\u9a8c\u6210\u529f!"

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 212
    :goto_0
    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 214
    const/4 v3, -0x1

    iput v3, v1, Landroid/app/Notification;->audioStreamType:I

    .line 222
    const/4 v3, 0x0

    .line 223
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x4000

    .line 222
    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 226
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-nez p2, :cond_2

    .line 227
    const-string v3, "\u4f53\u9a8c\u6210\u529f"

    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 233
    :goto_1
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 234
    return-void

    .line 197
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    const-string v3, "2130837555"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    const v3, 0x7f020033

    iput v3, v1, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 202
    :cond_1
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210,\u70b9\u51fb\u5b89\u88c5"

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 229
    .restart local v2       #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210,\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 45
    sget-object v1, Lcom/jy/func/t/h;->q:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/jy/func/t/h;->q:Landroid/content/pm/PackageManager;

    .line 49
    :cond_0
    :try_start_0
    sget-object v1, Lcom/jy/func/t/h;->q:Landroid/content/pm/PackageManager;

    .line 50
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    const/4 v0, 0x1

    .line 58
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, pName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 72
    .end local v0           #i:I
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 68
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 69
    .local v3, pn:Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    const-string v3, "application/vnd.android.package-archive"

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
