.class Lcom/qidian/intwal/k;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/IntWaWebLayout;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qidian/intwal/k;)Lcom/qidian/intwal/IntWaWebLayout;
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/QDOpenWall;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcom/qidian/intwal/IntWaWebLayout;->a(Lcom/qidian/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page.url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-static {v0, v2}, Lcom/qidian/intwal/IntWaWebLayout;->a(Lcom/qidian/intwal/IntWaWebLayout;Z)V

    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error.url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qidian/intwal/QDOpenWall;->getInstance()Lcom/qidian/intwal/QDOpenWall;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qidian/intwal/QDOpenWall;->a(Z)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcom/qidian/intwal/IntWaWebLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u9875\u9762\u5931\u8d25,\u5f53\u524d\u7f51\u7edc\u4e0d\u7ed9\u529b,\u8bf7\u8c03\u6574\u7f51\u7edc\u73af\u5883\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/qidian/intwal/l;

    invoke-direct {v2, p0}, Lcom/qidian/intwal/l;-><init>(Lcom/qidian/intwal/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcom/qidian/intwal/IntWaWebLayout;->a(Lcom/qidian/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/k;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v0, v0, Lcom/qidian/intwal/IntWaWebLayout;->m_webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
