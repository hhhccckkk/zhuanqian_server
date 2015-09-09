.class final Lcom/zy/phone/sdk/d;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/zy/phone/sdk/SDKActivity;


# direct methods
.method private constructor <init>(Lcom/zy/phone/sdk/SDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/d;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zy/phone/sdk/SDKActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zy/phone/sdk/d;-><init>(Lcom/zy/phone/sdk/SDKActivity;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/zy/phone/sdk/d;->a:Lcom/zy/phone/sdk/SDKActivity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/zy/phone/sdk/SDKActivity;->setProgress(I)V

    iget-object v0, p0, Lcom/zy/phone/sdk/d;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0}, Lcom/zy/phone/sdk/SDKActivity;->h(Lcom/zy/phone/sdk/SDKActivity;)Lcom/zy/phone/MyProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zy/phone/MyProgressBar;->a(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zy/phone/sdk/d;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0}, Lcom/zy/phone/sdk/SDKActivity;->h(Lcom/zy/phone/sdk/SDKActivity;)Lcom/zy/phone/MyProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zy/phone/MyProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zy/phone/sdk/d;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0}, Lcom/zy/phone/sdk/SDKActivity;->d(Lcom/zy/phone/sdk/SDKActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method
