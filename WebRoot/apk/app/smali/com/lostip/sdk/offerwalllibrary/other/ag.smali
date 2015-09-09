.class public Lcom/lostip/sdk/offerwalllibrary/other/ag;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;)Lcom/lostip/sdk/offerwalllibrary/entity/l;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;

    invoke-direct {v2}, Lcom/lostip/sdk/offerwalllibrary/entity/l;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->f:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v6

    invoke-static {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ad;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v6

    invoke-static {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/ad;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CDMA | NETWORK_TYPE_EVDO_A | NETWORK_TYPE_CDMA | NETWORK_TYPE_1xRTT | "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->g:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->i:Ljava/lang/Integer;

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[^\\da-zA-Z]*"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    if-ne v1, v5, :cond_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSM | NETWORK_TYPE_EDGE | NETWORK_TYPE_GPRS | "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->g:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/lostip/sdk/offerwalllibrary/entity/l;->i:Ljava/lang/Integer;

    goto :goto_1
.end method
