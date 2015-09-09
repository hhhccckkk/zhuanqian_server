.class public Lcom/datouniao/AdPublisher/AdsOffersWebView;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/datouniao/AdPublisher/b/f;


# instance fields
.field protected a:Landroid/app/ProgressDialog;

.field private b:Lcom/datouniao/AdPublisher/b/a;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/datouniao/AdPublisher/b/g;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/location/Location;

.field private m:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Landroid/location/LocationListener;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    const-string v0, "key_web_view_url"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->d:Ljava/lang/String;

    iput v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->k:Ljava/lang/String;

    new-instance v0, Lcom/datouniao/AdPublisher/d;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/d;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->n:Landroid/os/Handler;

    new-instance v0, Lcom/datouniao/AdPublisher/e;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/e;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->o:Landroid/location/LocationListener;

    iput-boolean v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/AdsOffersWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v0, ""

    const-string v2, "http://ditu.google.cn/maps/geo?output=csv&key=abcdef&q=%s,%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v5, :cond_2

    const-string v2, "200"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    aget-object v0, v0, v2

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "URL_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->g:Ljava/lang/String;

    const-string v0, "secret_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->j:Ljava/lang/String;

    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->h:Ljava/lang/String;

    const-string v0, "USER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->i:Ljava/lang/String;

    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_app_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_client_user_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_device_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_secret_key"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_ext_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IMEI: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " Device: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " OperatorName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " SimSerial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " SoftwareVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " appCount: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/f;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v2, "dtn_sdk_key_ext_key"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/utils/a;->a()Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/AdsOffersWebView;I)V
    .locals 0

    iput p1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/AdsOffersWebView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/AdsOffersWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:setDownloadProgress(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/datouniao/AdPublisher/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/datouniao/AdPublisher/k;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/datouniao/AdPublisher/AdsOffersWebView;)Lcom/datouniao/AdPublisher/b/a;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    return-object v0
.end method

.method private b(Lcom/datouniao/AdPublisher/a/d;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/datouniao/AdPublisher/z;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/datouniao/AdPublisher/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Lcom/datouniao/AdPublisher/a/d;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/datouniao/AdPublisher/AdsOffersWebView;)I
    .locals 1

    iget v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    return v0
.end method

.method private d()V
    .locals 5

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "timestamp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "lat="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "lng="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "city="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "verifier="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->k:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    iget v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ws3b.datouniao.com/android/AdsOffers?info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->m:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ws3a.datouniao.com/android/AdsOffers?info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic d(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->g()V

    return-void
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v6, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->o:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_2

    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->o:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    goto :goto_0

    :catch_1
    move-exception v2

    iput-object v6, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->l:Landroid/location/Location;

    const-string v3, "DTN.AdPublisher"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private f()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Lcom/datouniao/AdPublisher/b/a;

    invoke-direct {v1, p0}, Lcom/datouniao/AdPublisher/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1, p0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/f;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/datouniao/AdPublisher/b/a;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/datouniao/AdPublisher/b/g;

    invoke-direct {v1, p0}, Lcom/datouniao/AdPublisher/b/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/datouniao/AdPublisher/b/g;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/a;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->finish()V

    return-void
.end method

.method public a(I)V
    .locals 6

    const/16 v5, 0x64

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v0, v4}, Lcom/datouniao/AdPublisher/b/a;->setVisibility(I)V

    :cond_1
    :goto_1
    if-ne p1, v5, :cond_3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    invoke-virtual {v0, v4}, Lcom/datouniao/AdPublisher/b/g;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->p:Z

    if-nez v0, :cond_1

    if-ne p1, v5, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->n:Landroid/os/Handler;

    new-instance v1, Lcom/datouniao/AdPublisher/f;

    invoke-direct {v1, p0}, Lcom/datouniao/AdPublisher/f;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/b/g;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/g;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f:Lcom/datouniao/AdPublisher/b/g;

    invoke-virtual {v0, p1}, Lcom/datouniao/AdPublisher/b/g;->setProgress(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->p:Z

    iget v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->d()V

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->g()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u5e94\u7528\u5899\u5931\u8d25\uff0c\u53ef\u80fd\u662f\u7f51\u7edc\u53d1\u751f\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5\u6216\u8005\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    new-instance v2, Lcom/datouniao/AdPublisher/g;

    invoke-direct {v2, p0}, Lcom/datouniao/AdPublisher/g;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/datouniao/AdPublisher/h;

    invoke-direct {v2, p0}, Lcom/datouniao/AdPublisher/h;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/datouniao/AdPublisher/i;

    invoke-direct {v1, p0}, Lcom/datouniao/AdPublisher/i;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public a(Lcom/datouniao/AdPublisher/a/d;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0b\u8f7d\u91cd\u88c5"

    new-instance v2, Lcom/datouniao/AdPublisher/j;

    invoke-direct {v2, p0, p1}, Lcom/datouniao/AdPublisher/j;-><init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;Lcom/datouniao/AdPublisher/a/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    const-string v1, "\u60a8\u7684\u624b\u673a\u5df2\u7ecf\u5b89\u88c5\u8fc7\u8be5\u5e94\u7528\u4e86\uff0c\u60a8\u9700\u8981\u91cd\u65b0\u4e0b\u8f7d\u8986\u76d6\u5b89\u88c5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->p:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/datouniao/AdPublisher/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/a/e;->b(Ljava/lang/String;)Lcom/datouniao/AdPublisher/a/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->g()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/datouniao/AdPublisher/service/AdsService;->callServiceNewTaskGet(Landroid/content/Context;J)V

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b(Lcom/datouniao/AdPublisher/a/d;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u9886\u53d6\u4efb\u52a1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public b(ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/b/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/b/a;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/a;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/b/a;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/b/a;->goBack()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e()V

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->d()V

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->f()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    if-eqz v1, :cond_0

    const-string v0, "key_web_view_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/b/a;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->e:I

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->g()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/service/AdsService;->callAdsServiceStart(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_need_refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/a;->loadUrl(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_need_refresh"

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/utils/a;->a()Z

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/b/a;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_web_view_url"

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/b/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
