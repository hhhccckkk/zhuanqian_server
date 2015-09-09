.class public Lcn/guomob/android/intwal/s;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/AlertDialog$Builder;

.field b:Landroid/widget/ProgressBar;

.field c:Z

.field private d:Lcn/guomob/android/intwal/q;

.field private e:Lcn/guomob/android/intwal/ae;

.field private f:Lcn/guomob/android/intwal/d;

.field private g:I

.field private h:Landroid/app/Activity;

.field private i:Landroid/app/NotificationManager;

.field private j:Landroid/app/Notification;

.field private k:Landroid/app/PendingIntent;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->e:Lcn/guomob/android/intwal/ae;

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->f:Lcn/guomob/android/intwal/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/guomob/android/intwal/s;->c:Z

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    iput-object p2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

    iput-object p3, p0, Lcn/guomob/android/intwal/s;->m:Ljava/lang/String;

    iput-object p4, p0, Lcn/guomob/android/intwal/s;->n:Ljava/lang/String;

    new-instance v0, Lcn/guomob/android/intwal/ae;

    invoke-direct {v0, p0}, Lcn/guomob/android/intwal/ae;-><init>(Lcn/guomob/android/intwal/s;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->e:Lcn/guomob/android/intwal/ae;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/guomob/android/intwal/s;->g()V

    return-void
.end method

.method private a(I)V
    .locals 5

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->i:Landroid/app/NotificationManager;

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->i:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/guomob/android/intwal/s;->g:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    const-class v2, Lcn/guomob/android/intwal/GuomobAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NOTID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcn/guomob/android/intwal/s;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    iget v2, p0, Lcn/guomob/android/intwal/s;->g:I

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->k:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    if-nez p1, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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
    iget-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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

    iget-object v4, p0, Lcn/guomob/android/intwal/s;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->i:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/guomob/android/intwal/s;->g:I

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcn/guomob/android/intwal/s;->j:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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

.method public static a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/guomob/android/intwal/d;->a()Lcn/guomob/android/intwal/d;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->f:Lcn/guomob/android/intwal/d;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->f:Lcn/guomob/android/intwal/d;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->e:Lcn/guomob/android/intwal/ae;

    iget-object v3, p0, Lcn/guomob/android/intwal/s;->m:Ljava/lang/String;

    iget-object v4, p0, Lcn/guomob/android/intwal/s;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/guomob/android/intwal/d;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lcn/guomob/android/intwal/q;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/q;->f()I

    move-result v0

    iput v0, p0, Lcn/guomob/android/intwal/s;->g:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/q;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcn/guomob/android/intwal/s;->f()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/q;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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

    invoke-direct {p0, v3}, Lcn/guomob/android/intwal/s;->a(I)V

    return-void
.end method

.method public c()V
    .locals 5

    const/high16 v0, 0x42c8

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    iget-wide v1, v1, Lcn/guomob/android/intwal/q;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    iget-wide v1, v1, Lcn/guomob/android/intwal/q;->b:J

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    iget-wide v3, v3, Lcn/guomob/android/intwal/q;->a:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    :goto_0
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcn/guomob/android/intwal/s;->a(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcn/guomob/android/intwal/s;->a(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->d:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/q;->e()Ljava/lang/String;

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

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

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

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/s;->l:Ljava/lang/String;

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

    const/4 v2, 0x1

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/s;->b:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->a:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/guomob/android/intwal/s;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->a:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->a:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/guomob/android/intwal/t;

    invoke-direct {v2, p0}, Lcn/guomob/android/intwal/t;-><init>(Lcn/guomob/android/intwal/s;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcn/guomob/android/intwal/u;

    invoke-direct {v2, p0}, Lcn/guomob/android/intwal/u;-><init>(Lcn/guomob/android/intwal/s;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/guomob/android/intwal/s;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    return-void
.end method
