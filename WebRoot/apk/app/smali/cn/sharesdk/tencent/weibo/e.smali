.class public Lcn/sharesdk/tencent/weibo/e;
.super Lcn/sharesdk/framework/authorize/b;


# instance fields
.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/g;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:I

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/g;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcn/sharesdk/tencent/weibo/e;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/weibo/e;->e:Z

    invoke-static {p1}, Lcom/mob/tools/utils/R;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcn/sharesdk/tencent/weibo/f;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/tencent/weibo/f;-><init>(Lcn/sharesdk/tencent/weibo/e;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcn/sharesdk/tencent/weibo/f;->start()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    invoke-virtual {p0, p2}, Lcn/sharesdk/tencent/weibo/e;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "wtloginmqq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "use_login_button"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string v0, "omasflag="

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:I

    iget v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    invoke-virtual {p0, p2}, Lcn/sharesdk/tencent/weibo/e;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v0, "wtloginmqq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "use_login_button"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/g;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
