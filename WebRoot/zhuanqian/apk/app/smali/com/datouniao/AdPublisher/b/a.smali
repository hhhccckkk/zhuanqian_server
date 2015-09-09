.class public Lcom/datouniao/AdPublisher/b/a;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Lcom/datouniao/AdPublisher/b/c;

.field private b:Lcom/datouniao/AdPublisher/b/d;

.field private c:Lcom/datouniao/AdPublisher/b/f;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/datouniao/AdPublisher/b/b;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/b/b;-><init>(Lcom/datouniao/AdPublisher/b/a;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/b/a;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/b/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/a;->c:Lcom/datouniao/AdPublisher/b/f;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/datouniao/AdPublisher/b/d;

    invoke-direct {v0, p0, v2}, Lcom/datouniao/AdPublisher/b/d;-><init>(Lcom/datouniao/AdPublisher/b/a;Lcom/datouniao/AdPublisher/b/d;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/b/a;->b:Lcom/datouniao/AdPublisher/b/d;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/a;->b:Lcom/datouniao/AdPublisher/b/d;

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/b/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/datouniao/AdPublisher/b/c;

    invoke-direct {v0, p0, v2}, Lcom/datouniao/AdPublisher/b/c;-><init>(Lcom/datouniao/AdPublisher/b/a;Lcom/datouniao/AdPublisher/b/c;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/b/a;->a:Lcom/datouniao/AdPublisher/b/c;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/a;->a:Lcom/datouniao/AdPublisher/b/c;

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/b/a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/b/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    new-instance v0, Lcom/datouniao/AdPublisher/utils/JSInterface;

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/utils/JSInterface;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/utils/JSInterface;->setHandler(Landroid/os/Handler;)V

    const-string v1, "wall_interface"

    invoke-virtual {p0, v0, v1}, Lcom/datouniao/AdPublisher/b/a;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/datouniao/AdPublisher/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/b/a;->c:Lcom/datouniao/AdPublisher/b/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/b/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " adclient "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
