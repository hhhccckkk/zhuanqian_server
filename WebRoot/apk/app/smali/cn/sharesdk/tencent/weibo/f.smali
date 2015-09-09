.class Lcn/sharesdk/tencent/weibo/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcn/sharesdk/tencent/weibo/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/weibo/e;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    iput-object p2, p0, Lcn/sharesdk/tencent/weibo/f;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->a:Landroid/os/Bundle;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/e;->a(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/g;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/h;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/tencent/weibo/h;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/e;->b(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/e;->c(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/e;->d(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/e;->e(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/e;->h(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/e;->i(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/e;->f(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f;->b:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/e;->g(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
