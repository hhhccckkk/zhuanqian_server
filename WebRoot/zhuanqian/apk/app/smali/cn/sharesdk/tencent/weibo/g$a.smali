.class Lcn/sharesdk/tencent/weibo/g$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/tencent/weibo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/sharesdk/tencent/weibo/g;


# direct methods
.method public constructor <init>(Lcn/sharesdk/tencent/weibo/g;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/g$a;->a:Lcn/sharesdk/tencent/weibo/g;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/g$a;->a:Lcn/sharesdk/tencent/weibo/g;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/g;->a(Lcn/sharesdk/tencent/weibo/g;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.tencent.sso.AUTH_RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/g$a;->a:Lcn/sharesdk/tencent/weibo/g;

    invoke-static {v1, v0}, Lcn/sharesdk/tencent/weibo/g;->a(Lcn/sharesdk/tencent/weibo/g;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/g$a;->a:Lcn/sharesdk/tencent/weibo/g;

    invoke-static {v1, v0}, Lcn/sharesdk/tencent/weibo/g;->b(Lcn/sharesdk/tencent/weibo/g;Landroid/os/Bundle;)V

    goto :goto_0
.end method
