.class Lcn/sharesdk/tencent/weibo/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/tencent/weibo/h;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/weibo/h;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    iput-object p2, p0, Lcn/sharesdk/tencent/weibo/i;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/i;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "values"

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/tencent/weibo/h;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expires_in"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/tencent/weibo/h;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-wide v2, v2, Lcn/sharesdk/tencent/weibo/c;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openid"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/tencent/weibo/h;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/tencent/weibo/h;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nick"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/tencent/weibo/h;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/i;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/i;->b:Lcn/sharesdk/tencent/weibo/h;

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/i;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/tencent/weibo/h;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method
