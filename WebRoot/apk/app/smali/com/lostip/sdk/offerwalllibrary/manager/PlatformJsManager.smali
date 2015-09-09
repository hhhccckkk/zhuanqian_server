.class public Lcom/lostip/sdk/offerwalllibrary/manager/PlatformJsManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/PlatformJsManager;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public getDeviceApps()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/entity/d;

    invoke-direct {v1}, Lcom/lostip/sdk/offerwalllibrary/entity/d;-><init>()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v2

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/lostip/sdk/offerwalllibrary/entity/d;->a:Ljava/util/List;

    :try_start_0
    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/PlatformJsManager;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/PlatformJsManager;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method
