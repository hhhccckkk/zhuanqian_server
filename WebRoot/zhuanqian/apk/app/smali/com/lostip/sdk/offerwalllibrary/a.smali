.class Lcom/lostip/sdk/offerwalllibrary/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/manager/v;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/a;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/a;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/m;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/lostip/sdk/offerwalllibrary/entity/m;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/a;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->a(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:sdkEventHook(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/m;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
