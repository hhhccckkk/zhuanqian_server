.class Lcom/lostip/sdk/offerwalllibrary/manager/t;
.super Ljava/lang/Object;


# direct methods
.method static a(I)Lcom/lostip/sdk/offerwalllibrary/entity/m;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->a:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v2, v2, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(I)V

    const-string v2, "duration"

    if-gtz p0, :cond_0

    move p0, v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    return-object v1
.end method

.method static a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v1, v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(I)V

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    return-object v0
.end method

.method private static a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V
    .locals 2

    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_uid"

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostip/sdk/offerwalllibrary/other/s;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v1, v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(I)V

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    return-object v0
.end method

.method static c(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->k:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v1, v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(I)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    return-object v0
.end method

.method static d(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v1, v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(I)V

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    return-object v0
.end method

.method static e(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;
    .locals 3

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/m;

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->n:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v1, v1, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(I)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    return-object v0
.end method
