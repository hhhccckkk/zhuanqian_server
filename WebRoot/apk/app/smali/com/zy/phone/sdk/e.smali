.class final Lcom/zy/phone/sdk/e;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/zy/phone/sdk/SDKActivity;


# direct methods
.method private constructor <init>(Lcom/zy/phone/sdk/SDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/e;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zy/phone/sdk/SDKActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zy/phone/sdk/e;-><init>(Lcom/zy/phone/sdk/SDKActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AdsIntro"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/zy/phone/sdk/e;->a:Lcom/zy/phone/sdk/SDKActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zy/phone/sdk/SDKActivity;->b(Lcom/zy/phone/sdk/SDKActivity;Z)V

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/zy/phone/sdk/e;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0, v2}, Lcom/zy/phone/sdk/SDKActivity;->b(Lcom/zy/phone/sdk/SDKActivity;Z)V

    invoke-static {}, Lcom/zy/phone/sdk/SDKActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tasktime"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zy/phone/sdk/e;->a:Lcom/zy/phone/sdk/SDKActivity;

    const-string v1, "\u4f53\u9a8c\u8fd8\u6ca1\u6709\u5230\u65f6\u95f4\u54e6"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/zy/phone/sdk/SDKActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tasktime"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
