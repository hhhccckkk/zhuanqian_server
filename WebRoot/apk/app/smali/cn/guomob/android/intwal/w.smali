.class Lcn/guomob/android/intwal/w;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/IntWaWebLayout;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/guomob/android/intwal/w;)Lcn/guomob/android/intwal/IntWaWebLayout;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->setFirst(Z)V

    :cond_0
    iget-object v1, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "packname"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ids.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->c(Lcn/guomob/android/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->a(Lcn/guomob/android/intwal/IntWaWebLayout;)Lcn/guomob/android/intwal/af;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/guomob/android/intwal/af;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:setcomplete(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->c(Lcn/guomob/android/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0, v2}, Lcn/guomob/android/intwal/IntWaWebLayout;->a(Lcn/guomob/android/intwal/IntWaWebLayout;Z)V

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->a(Lcn/guomob/android/intwal/IntWaWebLayout;)Lcn/guomob/android/intwal/af;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/af;->setVisibility(I)V

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/guomob/android/intwal/OpenIntegralWall;->getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/guomob/android/intwal/OpenIntegralWall;->setFirst(Z)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcn/guomob/android/intwal/IntWaWebLayout;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u9875\u9762\u5931\u8d25\uff01\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u8fde\u63a5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcn/guomob/android/intwal/x;

    invoke-direct {v2, p0}, Lcn/guomob/android/intwal/x;-><init>(Lcn/guomob/android/intwal/w;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/w;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
