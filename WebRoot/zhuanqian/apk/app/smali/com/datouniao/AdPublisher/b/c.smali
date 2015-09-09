.class Lcom/datouniao/AdPublisher/b/c;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/b/a;


# direct methods
.method private constructor <init>(Lcom/datouniao/AdPublisher/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/b/c;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/datouniao/AdPublisher/b/a;Lcom/datouniao/AdPublisher/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/b/c;-><init>(Lcom/datouniao/AdPublisher/b/a;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/c;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/c;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/datouniao/AdPublisher/b/f;->a(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
