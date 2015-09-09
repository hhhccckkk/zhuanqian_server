.class Lcom/lostip/sdk/offerwalllibrary/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Lcom/lostip/sdk/offerwalllibrary/other/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Lcom/lostip/sdk/offerwalllibrary/other/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "smaugBattle?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0, p2}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Lcom/lostip/sdk/offerwalllibrary/other/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->b(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Lcom/lostip/sdk/offerwalllibrary/other/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/b;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ac;->a(Landroid/content/Context;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
