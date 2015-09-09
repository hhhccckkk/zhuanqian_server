.class Lcom/datouniao/AdPublisher/b/d;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/b/a;


# direct methods
.method private constructor <init>(Lcom/datouniao/AdPublisher/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/datouniao/AdPublisher/b/a;Lcom/datouniao/AdPublisher/b/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/b/d;-><init>(Lcom/datouniao/AdPublisher/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/datouniao/AdPublisher/b/e;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/b/e;-><init>(Lcom/datouniao/AdPublisher/b/d;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/datouniao/AdPublisher/b/f;->a(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/datouniao/AdPublisher/b/f;->a(I)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/datouniao/AdPublisher/b/f;->b()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/datouniao/AdPublisher/b/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "dtn:return"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/datouniao/AdPublisher/b/f;->a()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "datouniao.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requesttask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/datouniao/AdPublisher/b/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b/d;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
