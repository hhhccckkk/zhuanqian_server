.class Lcn/guomob/android/intwal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/OpenIntegralWall;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/OpenIntegralWall;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/ag;->a:Lcn/guomob/android/intwal/OpenIntegralWall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/guomob/android/intwal/ag;->a:Lcn/guomob/android/intwal/OpenIntegralWall;

    invoke-static {v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->a(Lcn/guomob/android/intwal/OpenIntegralWall;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_1

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    goto :goto_2
.end method
