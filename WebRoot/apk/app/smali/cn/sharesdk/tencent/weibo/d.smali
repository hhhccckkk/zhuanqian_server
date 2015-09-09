.class Lcn/sharesdk/tencent/weibo/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/weibo/h;

.field final synthetic b:Lcn/sharesdk/tencent/weibo/TencentWeibo;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/weibo/TencentWeibo;Lcn/sharesdk/tencent/weibo/h;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    iput-object p2, p0, Lcn/sharesdk/tencent/weibo/d;->a:Lcn/sharesdk/tencent/weibo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->o(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->p(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 6
    .parameter "values"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->d(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->e(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->f(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->g(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->h(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "nick"

    const-string v2, "nick"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->i(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "openid"

    const-string v2, "openid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->j(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "openkey"

    const-string v2, "openkey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->a:Lcn/sharesdk/tencent/weibo/h;

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->k(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->l(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v3}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->m(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v4}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->n(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "openkey"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/sharesdk/tencent/weibo/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a(Lcn/sharesdk/tencent/weibo/TencentWeibo;ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "e"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->b(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
