.class Lcn/sharesdk/tencent/qq/l;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/sharesdk/tencent/qq/k;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/k;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/l;->f:Lcn/sharesdk/tencent/qq/k;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/tencent/qq/l;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcn/sharesdk/tencent/qq/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/tencent/qq/l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/tencent/qq/l;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/l;->f:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/k;->a(Lcn/sharesdk/tencent/qq/k;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/l;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/l;->b:Landroid/os/Bundle;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/l;->f:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/k;->b(Lcn/sharesdk/tencent/qq/k;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/l;->b:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/l;->f:Lcn/sharesdk/tencent/qq/k;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/l;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcn/sharesdk/tencent/qq/k;->a(Lcn/sharesdk/tencent/qq/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method
