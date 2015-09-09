.class public Lcom/qidian/intwal/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qidian/intwal/c;

.field private b:Lcom/qidian/intwal/h;

.field private c:Lcom/qidian/intwal/r;

.field private d:Lcom/qidian/intwal/c;

.field private e:I

.field private f:Landroid/app/Activity;

.field private g:Landroid/app/NotificationManager;

.field private h:Landroid/app/Notification;

.field private i:Landroid/app/PendingIntent;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    iput-object v0, p0, Lcom/qidian/intwal/j;->c:Lcom/qidian/intwal/r;

    iput-object v0, p0, Lcom/qidian/intwal/j;->d:Lcom/qidian/intwal/c;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    iput-object p2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/qidian/intwal/j;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/qidian/intwal/j;->l:Ljava/lang/String;

    new-instance v0, Lcom/qidian/intwal/r;

    invoke-direct {v0, p0}, Lcom/qidian/intwal/r;-><init>(Lcom/qidian/intwal/j;)V

    iput-object v0, p0, Lcom/qidian/intwal/j;->c:Lcom/qidian/intwal/r;

    return-void
.end method

.method private a(I)V
    .locals 5

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/qidian/intwal/j;->g:Landroid/app/NotificationManager;

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/j;->g:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/qidian/intwal/j;->e:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    const-class v2, Lcom/qidian/intwal/QDAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NOTID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/qidian/intwal/j;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    iget v2, p0, Lcom/qidian/intwal/j;->e:I

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/qidian/intwal/j;->i:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    iget-object v1, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u7ecf\u4e0b\u8f7d:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qidian/intwal/j;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/qidian/intwal/j;->g:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/qidian/intwal/j;->e:I

    iget-object v2, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qidian/intwal/j;->h:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qidian/intwal/c;->a()Lcom/qidian/intwal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qidian/intwal/j;->d:Lcom/qidian/intwal/c;

    iget-object v0, p0, Lcom/qidian/intwal/j;->d:Lcom/qidian/intwal/c;

    iget-object v1, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/qidian/intwal/j;->c:Lcom/qidian/intwal/r;

    iget-object v3, p0, Lcom/qidian/intwal/j;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/qidian/intwal/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qidian/intwal/c;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lcom/qidian/intwal/h;

    move-result-object v0

    iput-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    iget-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->f()I

    move-result v0

    iput v0, p0, Lcom/qidian/intwal/j;->e:I

    const-string v0, "IntWaDown.58=is first in create m_hDown"

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntWaDown.60="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/qidian/intwal/j;->f()V

    goto :goto_0

    :pswitch_1
    const-string v0, "this is url is not apk"

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qidian/intwal/j;->g()V

    invoke-virtual {p0}, Lcom/qidian/intwal/j;->h()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u5f00\u59cb\u4e0b\u8f7d..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v3}, Lcom/qidian/intwal/j;->a(I)V

    return-void
.end method

.method public c()V
    .locals 5

    const/high16 v0, 0x42c8

    iget-object v1, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    iget-wide v1, v1, Lcom/qidian/intwal/h;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    iget-wide v1, v1, Lcom/qidian/intwal/h;->b:J

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    iget-wide v3, v3, Lcom/qidian/intwal/h;->a:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    :goto_0
    float-to-int v0, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/qidian/intwal/j;->h()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/qidian/intwal/j;->a(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u83b7\u53d6\u4e0b\u8f7d\u5730\u5740\u51fa\u9519"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public e()V
    .locals 4

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/qidian/intwal/j;->a(I)V

    iget-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/j;->b:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "apk\u5b89\u88c5\u5931\u8d25,\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u5b89\u88c5\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qidian/intwal/j;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u627e\u4e0d\u5230\u4e0b\u8f7d\u7684\u8d44\u6e90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/qidian/intwal/c;->a()Lcom/qidian/intwal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qidian/intwal/j;->a:Lcom/qidian/intwal/c;

    iget-object v0, p0, Lcom/qidian/intwal/j;->a:Lcom/qidian/intwal/c;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qidian/intwal/j;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/j;->a:Lcom/qidian/intwal/c;

    iget v1, p0, Lcom/qidian/intwal/j;->e:I

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/c;->a(I)V

    iget-object v0, p0, Lcom/qidian/intwal/j;->f:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/qidian/intwal/j;->e:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method
