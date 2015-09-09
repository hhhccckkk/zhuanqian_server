.class public final Lcom/jy/func/t/c;
.super Ljava/lang/Object;
.source "CYZ_DeviceHelper.java"


# static fields
.field private static bS:Lcom/jy/func/t/c;

.field private static bT:[Ljava/lang/String;


# instance fields
.field private bR:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 885
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 886
    const-string v2, "/system/lib/libc_malloc_debug_qemu.so"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/sys/qemu_trace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 887
    const-string v2, "/system/bin/qemu-props"

    aput-object v2, v0, v1

    .line 885
    sput-object v0, Lcom/jy/func/t/c;->bT:[Ljava/lang/String;

    .line 887
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 698
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 696
    :cond_0
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private bA()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 501
    const-string v4, "connectivity"

    invoke-direct {p0, v4}, Lcom/jy/func/t/c;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 502
    .local v0, conn:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 503
    const-string v4, "none"

    .line 526
    :goto_0
    return-object v4

    .line 506
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 507
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 508
    :cond_1
    const-string v4, "none"

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 512
    .local v2, type:I
    if-ne v6, v2, :cond_3

    .line 513
    const-string v4, "wifi"

    goto :goto_0

    .line 516
    :cond_3
    if-nez v2, :cond_6

    .line 518
    const-string v3, ""

    .line 523
    .local v3, wap:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/jy/func/t/c;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    move v4, v5

    :goto_1
    if-eqz v4, :cond_5

    const-string v4, "3G"

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    move v4, v5

    goto :goto_1

    :pswitch_1
    move v4, v5

    goto :goto_1

    :pswitch_2
    move v4, v5

    goto :goto_1

    :pswitch_3
    move v4, v6

    goto :goto_1

    :pswitch_4
    move v4, v6

    goto :goto_1

    :pswitch_5
    move v4, v5

    goto :goto_1

    :pswitch_6
    move v4, v6

    goto :goto_1

    :pswitch_7
    move v4, v6

    goto :goto_1

    :pswitch_8
    move v4, v6

    goto :goto_1

    :pswitch_9
    move v4, v6

    goto :goto_1

    :pswitch_a
    move v4, v6

    goto :goto_1

    :pswitch_b
    move v4, v6

    goto :goto_1

    :pswitch_c
    move v4, v6

    goto :goto_1

    :pswitch_d
    move v4, v5

    goto :goto_1

    :pswitch_e
    move v4, v6

    goto :goto_1

    :pswitch_f
    move v4, v5

    goto :goto_1

    :cond_5
    const-string v4, "2G"

    goto :goto_2

    .line 526
    .end local v3           #wap:Ljava/lang/String;
    :cond_6
    const-string v4, "none"

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private bB()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 535
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/jy/func/t/c;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 536
    .local v0, phone:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 574
    :goto_0
    :pswitch_0
    return v1

    .line 540
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 560
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 548
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 550
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 554
    goto :goto_0

    :pswitch_5
    move v1, v2

    .line 556
    goto :goto_0

    :pswitch_6
    move v1, v2

    .line 558
    goto :goto_0

    :pswitch_7
    move v1, v2

    .line 562
    goto :goto_0

    :pswitch_8
    move v1, v2

    .line 564
    goto :goto_0

    :pswitch_9
    move v1, v2

    .line 566
    goto :goto_0

    :pswitch_a
    move v1, v2

    .line 570
    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private static bD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static bE()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private static bG()Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 649
    new-array v1, v7, [Ljava/lang/String;

    .line 660
    const-string v4, "/system/bin/"

    aput-object v4, v1, v3

    const-string v4, "/system/xbin/"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    .line 661
    const-string v5, "/system/sbin/"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "/sbin/"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "/vendor/bin/"

    aput-object v5, v1, v4

    .line 663
    .local v1, kSuSearchPaths:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v7, :cond_1

    move v2, v3

    .line 673
    :cond_0
    :goto_1
    return v2

    .line 664
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_1
.end method

.method private static bH()Ljava/lang/String;
    .locals 4

    .prologue
    .line 680
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, fr:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 682
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 683
    const-string v2, ":\\s+"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 684
    const/4 v2, 0x1

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 690
    :goto_0
    return-object v1

    .line 685
    :catch_0
    move-exception v1

    .line 686
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 690
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 687
    :catch_1
    move-exception v1

    .line 688
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static bI()Z
    .locals 2

    .prologue
    .line 710
    const-string v0, "mounted"

    .line 711
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bJ()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 716
    invoke-static {}, Lcom/jy/func/t/c;->bI()Z

    move-result v7

    if-nez v7, :cond_1

    .line 742
    .local v0, cacheRoot:Ljava/io/File;
    .local v5, sdPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 720
    .end local v0           #cacheRoot:Ljava/io/File;
    .end local v5           #sdPath:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 721
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 722
    .restart local v5       #sdPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v7, "ShareSDK"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .restart local v0       #cacheRoot:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 727
    new-instance v3, Ljava/io/File;

    const-string v7, ".dk"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    .local v3, keyFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 732
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 733
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 734
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 735
    .local v2, key:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 736
    .local v6, strKey:Ljava/lang/String;
    if-eqz v2, :cond_2

    instance-of v7, v2, [C

    if-eqz v7, :cond_2

    .line 737
    check-cast v2, [C

    .line 738
    .end local v2           #key:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 740
    :cond_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0
.end method

.method private bK()Landroid/location/Location;
    .locals 6

    .prologue
    .line 795
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v4}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 796
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v4}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 799
    :cond_0
    const/4 v0, 0x0

    .line 809
    :cond_1
    return-object v0

    .line 801
    :cond_2
    iget-object v4, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 802
    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 801
    check-cast v1, Landroid/location/LocationManager;

    .line 803
    .local v1, loctionManager:Landroid/location/LocationManager;
    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 804
    .local v2, matchingProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 805
    .local v0, location:Landroid/location/Location;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 807
    .local v3, prociderString:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method private bL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 818
    const-string v0, ""

    .line 819
    .local v0, latitude:Ljava/lang/String;
    invoke-direct {p0}, Lcom/jy/func/t/c;->bK()Landroid/location/Location;

    move-result-object v1

    .line 820
    .local v1, location:Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 824
    :cond_0
    return-object v0
.end method

.method private static bM()Ljava/lang/String;
    .locals 4

    .prologue
    .line 833
    const-string v1, ""

    .line 834
    .local v1, longtitude:Ljava/lang/String;
    sget-object v2, Lcom/jy/func/t/c;->bS:Lcom/jy/func/t/c;

    invoke-direct {v2}, Lcom/jy/func/t/c;->bK()Landroid/location/Location;

    move-result-object v0

    .line 835
    .local v0, location:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 839
    :cond_0
    return-object v1
.end method

.method private bN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    const-string v0, "phone"

    invoke-direct {p0, v0}, Lcom/jy/func/t/c;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 854
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 879
    return-object v0
.end method

.method private static bO()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 890
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/jy/func/t/c;->bT:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 897
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    return-object v2

    .line 891
    :cond_0
    sget-object v2, Lcom/jy/func/t/c;->bT:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 892
    .local v0, file_name:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 890
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static bP()Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 903
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 904
    .local v0, BOARD:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 905
    .local v1, BOOTLOADER:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 906
    .local v2, BRAND:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 907
    .local v3, DEVICE:Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 908
    .local v4, HARDWARE:Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 909
    .local v5, MODEL:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 910
    .local v6, PRODUCT:Ljava/lang/String;
    const-string v7, "unknown"

    if-eq v0, v7, :cond_0

    const-string v7, "unknown"

    if-eq v1, v7, :cond_0

    const-string v7, "generic"

    if-eq v2, v7, :cond_0

    .line 911
    const-string v7, "generic"

    if-eq v3, v7, :cond_0

    const-string v7, "sdk"

    if-eq v5, v7, :cond_0

    const-string v7, "google_sdk"

    if-eq v5, v7, :cond_0

    const-string v7, "sdk"

    if-eq v6, v7, :cond_0

    .line 912
    const-string v7, "goldfish"

    if-ne v4, v7, :cond_1

    .line 913
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 915
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method private bi()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 105
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bj()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 115
    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v4}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 117
    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 120
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 133
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v3

    .line 122
    .restart local v0       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const/4 v3, 0x1

    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private bk()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v1}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 145
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 146
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 147
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 156
    .end local v0           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_0
    move v1, v2

    .line 151
    goto :goto_0

    .end local v0           #info:Landroid/net/NetworkInfo;
    :cond_1
    move v1, v2

    .line 156
    goto :goto_0
.end method

.method private static bl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 167
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 168
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 167
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private bm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "SHARESDK_APPKEY"

    invoke-direct {p0, v0}, Lcom/jy/func/t/c;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "SHARESDK_CHANNEL"

    invoke-direct {p0, v0}, Lcom/jy/func/t/c;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 258
    const-string v1, ""

    .line 271
    :goto_0
    return-object v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 265
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    check-cast v0, Landroid/app/ActivityManager;

    .line 266
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "android.permission.GET_TASKS"

    invoke-direct {p0, v1}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 268
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private bq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bs()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    const-string v0, ""

    .line 359
    .local v0, curversion:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 361
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 362
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_1

    .line 363
    :cond_0
    const-string v1, ""

    .line 368
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private bt()Z
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 378
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    check-cast v0, Landroid/hardware/SensorManager;

    .line 379
    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bu()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 393
    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v1}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 395
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 394
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 396
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 398
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x1

    .line 408
    .end local v0           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_0
    move v1, v2

    .line 403
    goto :goto_0

    .end local v0           #info:Landroid/net/NetworkInfo;
    :cond_1
    move v1, v2

    .line 408
    goto :goto_0
.end method

.method private bv()Ljava/lang/String;
    .locals 4

    .prologue
    .line 419
    const-string v0, ""

    .line 421
    .local v0, versionName:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 423
    const-string v1, ""

    .line 435
    :goto_0
    return-object v1

    .line 425
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 427
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 428
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-gtz v1, :cond_2

    .line 429
    :cond_1
    const-string v1, ""

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    move-object v1, v0

    .line 435
    goto :goto_0
.end method

.method private bw()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 447
    const-string v0, ""

    .line 455
    :goto_0
    return-object v0

    .line 449
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 451
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0
.end method

.method private bx()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    const-string v2, "phone"

    invoke-direct {p0, v2}, Lcom/jy/func/t/c;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 461
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 462
    const-string v0, "-1"

    .line 470
    :cond_0
    :goto_0
    return-object v0

    .line 465
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, operator:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const-string v0, "-1"

    goto :goto_0
.end method

.method private by()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 475
    const-string v1, "phone"

    invoke-direct {p0, v1}, Lcom/jy/func/t/c;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 476
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 477
    .local v0, absent:I
    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 480
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private bz()Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 487
    .local v0, dm2:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Lcom/jy/func/t/c;
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    sget-object v0, Lcom/jy/func/t/c;->bS:Lcom/jy/func/t/c;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 81
    new-instance v0, Lcom/jy/func/t/c;

    invoke-direct {v0, p0}, Lcom/jy/func/t/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jy/func/t/c;->bS:Lcom/jy/func/t/c;

    .line 83
    :cond_0
    sget-object v0, Lcom/jy/func/t/c;->bS:Lcom/jy/func/t/c;

    return-object v0
.end method

.method private g(I)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 843
    .line 844
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 847
    .local v0, density:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    const-string v0, ""

    return-object v0
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 791
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTimeZone()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(J)Ljava/lang/String;
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 179
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 180
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 179
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private v(Ljava/lang/String;)Z
    .locals 2
    .parameter "permission"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 205
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 206
    .local v3, localMessageDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 207
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 208
    .local v0, arrayOfByte:[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v4, localStringBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-lt v1, v5, :cond_0

    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .end local v0           #arrayOfByte:[B
    .end local v1           #i:I
    .end local v3           #localMessageDigest:Ljava/security/MessageDigest;
    .end local v4           #localStringBuffer:Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 210
    .restart local v0       #arrayOfByte:[B
    .restart local v1       #i:I
    .restart local v3       #localMessageDigest:Ljava/security/MessageDigest;
    .restart local v4       #localStringBuffer:Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v5, v0, v1

    and-int/lit16 v2, v5, 0xff

    .line 211
    .local v2, j:I
    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 212
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0           #arrayOfByte:[B
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #localMessageDigest:Ljava/security/MessageDigest;
    .end local v4           #localStringBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v5

    .line 218
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 220
    const-string v5, ""

    goto :goto_1
.end method

.method private x(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 234
    .local v0, localApplicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 235
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 248
    .end local v0           #localApplicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 243
    :catch_0
    move-exception v2

    .line 246
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private static y(Ljava/lang/String;)[B
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 702
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 703
    .local v0, data:[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 704
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 705
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2
.end method

.method private z(Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {}, Lcom/jy/func/t/c;->bI()Z

    move-result v6

    if-nez v6, :cond_0

    .line 768
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 751
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, sdPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v6, "ShareSDK"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .local v1, cacheRoot:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 757
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v6, ".dk"

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 758
    .local v3, keyFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 759
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 762
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 763
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 764
    .local v4, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 765
    .local v0, cKey:[C
    invoke-virtual {v4, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 766
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 767
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final bC()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 584
    :try_start_0
    invoke-static {}, Lcom/jy/func/t/c;->bI()Z

    move-result v5

    if-nez v5, :cond_1

    .line 590
    .local v0, localKey:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 614
    .end local v0           #localKey:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 584
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "ShareSDK"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    const-string v7, ".dk"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v6, v5, [C

    if-eqz v6, :cond_2

    check-cast v5, [C

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v5

    const/4 v0, 0x0

    .restart local v0       #localKey:Ljava/lang/String;
    goto :goto_0

    .line 594
    :cond_3
    :try_start_1
    const-string v1, ""

    .line 597
    .local v1, mac:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jy/func/t/c;->br()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, udid:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 599
    .local v2, model:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 600
    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 601
    invoke-static {v5}, Lcom/jy/func/t/c;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 607
    .end local v1           #mac:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    .end local v4           #udid:Ljava/lang/String;
    .local v3, newKey:Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_6

    .line 609
    :try_start_2
    invoke-static {}, Lcom/jy/func/t/c;->bI()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "ShareSDK"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v7, ".dk"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    move-object v0, v3

    .line 614
    goto/16 :goto_1

    .line 602
    .end local v3           #newKey:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 603
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 604
    const/4 v3, 0x0

    .restart local v3       #newKey:Ljava/lang/String;
    goto :goto_2

    .line 610
    :catch_2
    move-exception v5

    .line 611
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public final bQ()Z
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 921
    :try_start_0
    iget-object v6, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 922
    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 921
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 925
    .local v3, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, ISO:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, operator:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 957
    .end local v0           #ISO:Ljava/lang/String;
    .end local v2           #operator:Ljava/lang/String;
    .end local v3           #telManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v4

    .line 931
    .restart local v0       #ISO:Ljava/lang/String;
    .restart local v2       #operator:Ljava/lang/String;
    .restart local v3       #telManager:Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 932
    const-string v7, "460"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "us"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 937
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, imei:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v6, "000000000000000"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 950
    :cond_2
    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v13, "unknown"

    if-eq v6, v13, :cond_3

    const-string v6, "unknown"

    if-eq v7, v6, :cond_3

    const-string v6, "generic"

    if-eq v8, v6, :cond_3

    const-string v6, "generic"

    if-eq v9, v6, :cond_3

    const-string v6, "sdk"

    if-eq v11, v6, :cond_3

    const-string v6, "google_sdk"

    if-eq v11, v6, :cond_3

    const-string v6, "sdk"

    if-eq v12, v6, :cond_3

    const-string v6, "goldfish"

    if-ne v10, v6, :cond_4

    :cond_3
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0           #ISO:Ljava/lang/String;
    .end local v1           #imei:Ljava/lang/String;
    .end local v2           #operator:Ljava/lang/String;
    .end local v3           #telManager:Landroid/telephony/TelephonyManager;
    :goto_2
    move v4, v5

    .line 957
    goto :goto_0

    .line 950
    .restart local v0       #ISO:Ljava/lang/String;
    .restart local v1       #imei:Ljava/lang/String;
    .restart local v2       #operator:Ljava/lang/String;
    .restart local v3       #telManager:Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .end local v0           #ISO:Ljava/lang/String;
    .end local v1           #imei:Ljava/lang/String;
    .end local v2           #operator:Ljava/lang/String;
    .end local v3           #telManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public final bp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final br()Ljava/lang/String;
    .locals 7

    .prologue
    .line 305
    iget-object v3, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 306
    const-string v2, ""

    .line 345
    :cond_0
    :goto_0
    return-object v2

    .line 308
    :cond_1
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v3}, Lcom/jy/func/t/c;->v(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 309
    iget-object v3, p0, Lcom/jy/func/t/c;->bR:Landroid/content/Context;

    .line 310
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 309
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 311
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, deviceId:Ljava/lang/String;
    const-string v0, ""

    .line 313
    .local v0, backId:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 314
    new-instance v0, Ljava/lang/String;

    .end local v0           #backId:Ljava/lang/String;
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v0       #backId:Ljava/lang/String;
    const-string v3, "0"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_4

    .line 323
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 324
    .local v1, c:Ljava/lang/Class;
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 325
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 324
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 326
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 327
    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    .line 326
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 335
    .end local v1           #c:Ljava/lang/Class;
    .end local v2           #deviceId:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    const-string v2, ""

    goto :goto_0

    .line 331
    .restart local v2       #deviceId:Ljava/lang/String;
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    goto :goto_1

    .line 345
    .end local v0           #backId:Ljava/lang/String;
    .end local v2           #deviceId:Ljava/lang/String;
    :cond_5
    const-string v2, ""

    goto :goto_0
.end method
