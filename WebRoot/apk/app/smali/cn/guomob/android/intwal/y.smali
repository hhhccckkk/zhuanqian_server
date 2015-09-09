.class Lcn/guomob/android/intwal/y;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/IntWaWebLayout;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/y;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v1, 0x8

    const/16 v0, 0x28

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/y;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->c(Lcn/guomob/android/intwal/IntWaWebLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/y;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->a(Lcn/guomob/android/intwal/IntWaWebLayout;)Lcn/guomob/android/intwal/af;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/af;->setVisibility(I)V

    :cond_0
    return-void
.end method
