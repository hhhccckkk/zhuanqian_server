.class Lcom/dlnetwork/DevNativeActivity$8;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/dlnetwork/DevNativeActivity;


# direct methods
.method constructor <init>(Lcom/dlnetwork/DevNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/DevNativeActivity$8;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x28

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/dlnetwork/DevNativeActivity$8;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-virtual {v0}, Lcom/dlnetwork/DevNativeActivity;->d()V

    :cond_0
    return-void
.end method
