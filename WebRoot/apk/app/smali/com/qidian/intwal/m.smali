.class Lcom/qidian/intwal/m;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/IntWaWebLayout;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/m;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x14

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/m;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcom/qidian/intwal/IntWaWebLayout;->a(Lcom/qidian/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
