.class final Lcom/zy/phone/sdk/c;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/zy/phone/sdk/SDKActivity;


# direct methods
.method private constructor <init>(Lcom/zy/phone/sdk/SDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/c;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zy/phone/sdk/SDKActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zy/phone/sdk/c;-><init>(Lcom/zy/phone/sdk/SDKActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
