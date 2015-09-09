.class public Lcn/yeeguo/YeeguoUtil;
.super Ljava/lang/Object;
.source "YeeguoUtil.java"


# static fields
.field protected static uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcn/yeeguo/YeeguoUtil;->hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 8
    .parameter "xml"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, document:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 89
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 91
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 92
    .local v1, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    .end local v1           #documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "YeeguoUtil"

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buildDocument exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-static {v5, v6}, Lcn/yeeguo/YeeguoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 213
    const/4 v4, 0x0

    .line 212
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 220
    :goto_1
    return v2

    .line 214
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 220
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected static checkLocalAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 319
    const-string v0, ".thumbu"

    .line 321
    .local v0, filename:Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 322
    .local v1, sdCardDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v2, sdFile:Ljava/io/File;
    invoke-static {p0}, Lcn/yeeguo/YeeguoCryptoUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-static {v0}, Lcn/yeeguo/YeeguoUtil;->readFromSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    :goto_0
    return-object v3

    .line 327
    :cond_0
    invoke-static {v0, v3}, Lcn/yeeguo/YeeguoUtil;->writeToSd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static checkRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packagename"

    .prologue
    .line 232
    .line 233
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    check-cast v0, Landroid/app/ActivityManager;

    .line 235
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, run:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 236
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 238
    .local v1, ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 67
    :cond_0
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 68
    .local v1, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 70
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 71
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 77
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    .line 69
    if-lt v4, v5, :cond_2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method

.method protected static createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "v"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "YeeguoUtil"

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error creating bitmap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v3, v4}, Lcn/yeeguo/YeeguoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 4
    .parameter "fileOrDirectory"

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 108
    return-void

    .line 103
    :cond_1
    aget-object v0, v2, v1

    .line 104
    .local v0, child:Ljava/io/File;
    invoke-static {v0}, Lcn/yeeguo/YeeguoUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getAllTheLauncher(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    const/4 v2, 0x0

    .line 476
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 477
    .local v4, pkgMgt:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, it:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 480
    .local v5, ra:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .restart local v2       #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 487
    return-object v2

    .line 484
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 485
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static getAppInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 357
    const-string v0, ""

    .line 359
    .local v0, appInfo:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 360
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 361
    .local v4, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 372
    .end local v4           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    return-object v0

    .line 361
    .restart local v4       #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 362
    .local v3, pack:Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 363
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 364
    .local v1, appLabel:Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 369
    .end local v1           #appLabel:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #pack:Landroid/content/pm/PackageInfo;
    .end local v4           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method protected static getCPU()Ljava/lang/String;
    .locals 8

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, cpuSerial:Ljava/lang/String;
    const-string v5, ""

    .line 402
    .local v5, str:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "cat /proc/cpuinfo "

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 403
    .local v4, pp:Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 404
    .local v3, ir:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 406
    .local v2, input:Ljava/io/LineNumberReader;
    :cond_0
    if-nez v5, :cond_1

    .line 417
    .end local v2           #input:Ljava/io/LineNumberReader;
    .end local v3           #ir:Ljava/io/InputStreamReader;
    .end local v4           #pp:Ljava/lang/Process;
    :goto_0
    return-object v0

    .line 407
    .restart local v2       #input:Ljava/io/LineNumberReader;
    .restart local v3       #ir:Ljava/io/InputStreamReader;
    .restart local v4       #pp:Ljava/lang/Process;
    :cond_1
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 408
    if-eqz v5, :cond_0

    .line 409
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 410
    goto :goto_0

    .line 413
    .end local v2           #input:Ljava/io/LineNumberReader;
    .end local v3           #ir:Ljava/io/InputStreamReader;
    .end local v4           #pp:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 415
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static getIMMI()Ljava/lang/String;
    .locals 8

    .prologue
    .line 376
    const/4 v3, 0x0

    .line 377
    .local v3, macSerial:Ljava/lang/String;
    const-string v5, ""

    .line 379
    .local v5, str:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 380
    const-string v7, "cat /sys/class/net/wlan0/address "

    .line 379
    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 381
    .local v4, pp:Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 382
    .local v2, ir:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v1, input:Ljava/io/LineNumberReader;
    :cond_0
    if-nez v5, :cond_1

    .line 395
    .end local v1           #input:Ljava/io/LineNumberReader;
    .end local v2           #ir:Ljava/io/InputStreamReader;
    .end local v4           #pp:Ljava/lang/Process;
    :goto_0
    return-object v3

    .line 385
    .restart local v1       #input:Ljava/io/LineNumberReader;
    .restart local v2       #ir:Ljava/io/InputStreamReader;
    .restart local v4       #pp:Ljava/lang/Process;
    :cond_1
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 386
    if-eqz v5, :cond_0

    .line 387
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 388
    goto :goto_0

    .line 391
    .end local v1           #input:Ljava/io/LineNumberReader;
    .end local v2           #ir:Ljava/io/InputStreamReader;
    .end local v4           #pp:Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 393
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static getSerial()Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 139
    .local v3, serial:Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    .local v0, clazz:Ljava/lang/Class;
    const-string v4, "SERIAL"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 142
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    :cond_0
    const-class v4, Landroid/os/Build;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    const-string v4, "YeeguoHardwareUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "serial: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/yeeguo/YeeguoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "YeeguoHardwareUtil"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/yeeguo/YeeguoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 340
    sget-object v0, Lcn/yeeguo/YeeguoUtil;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcn/yeeguo/YeeguoUtil;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v0

    .line 342
    const-string v1, "server_uid"

    .line 341
    invoke-virtual {v0, v1}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/yeeguo/YeeguoUtil;->uid:Ljava/lang/String;

    .line 344
    :cond_1
    sget-object v0, Lcn/yeeguo/YeeguoUtil;->uid:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 345
    const-string v0, ""

    sput-object v0, Lcn/yeeguo/YeeguoUtil;->uid:Ljava/lang/String;

    .line 347
    :cond_2
    sget-object v0, Lcn/yeeguo/YeeguoUtil;->uid:Ljava/lang/String;

    return-object v0
.end method

.method protected static hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hash"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v2, 0x28

    new-array v1, v2, [B

    .line 56
    .local v1, sha1hash:[B
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 57
    .local v0, md:Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 58
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcn/yeeguo/YeeguoUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static isAppOnForeground(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 452
    .line 453
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 452
    check-cast v0, Landroid/app/ActivityManager;

    .line 454
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, packageName:Ljava/lang/String;
    const v3, 0x7fffffff

    .line 455
    invoke-virtual {v0, v3, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, appTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v1, :cond_0

    move v3, v4

    .line 465
    :goto_0
    return v3

    .line 462
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 463
    goto :goto_0

    :cond_1
    move v3, v4

    .line 465
    goto :goto_0
.end method

.method protected static isLauncherRunnig(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 497
    const/4 v4, 0x0

    .line 498
    .local v4, result:Z
    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getAllTheLauncher(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 500
    .local v3, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    check-cast v2, Landroid/app/ActivityManager;

    .line 502
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 503
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 513
    return v4

    .line 503
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 504
    .local v5, running:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v6, v8, :cond_0

    .line 505
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 506
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 507
    const/4 v4, 0x1

    .line 508
    goto :goto_0

    .line 505
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected static isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "content"

    .prologue
    const/4 v0, 0x1

    .line 522
    if-nez p0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isTopActivy(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "cmdName"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 428
    .line 429
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 428
    check-cast v1, Landroid/app/ActivityManager;

    .line 431
    .local v1, manager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 432
    .local v2, runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v0, 0x0

    .line 433
    .local v0, cmpNameTemp:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 434
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    if-nez v0, :cond_1

    move v3, v4

    .line 441
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method protected static openApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "mContext"
    .parameter "pagekageName"

    .prologue
    .line 253
    invoke-static {p0, p1}, Lcn/yeeguo/YeeguoUtil;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 256
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    :cond_0
    const/4 v2, 0x1

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static paramURL(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v2, mapRequest:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 165
    .local v5, strUrlParam:Ljava/lang/String;
    const/4 v0, 0x0

    .line 166
    .local v0, arrSplit:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 167
    const-string v6, "[?]"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_0

    .line 169
    array-length v6, v0

    if-le v6, v11, :cond_0

    .line 170
    aget-object v6, v0, v11

    if-eqz v6, :cond_0

    .line 171
    aget-object v5, v0, v11

    .line 176
    :cond_0
    if-nez v5, :cond_2

    .line 199
    :cond_1
    return-object v2

    .line 180
    :cond_2
    const/4 v3, 0x0

    .line 182
    .local v3, paramSplit:[Ljava/lang/String;
    const-string v6, "[&]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 183
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v4, v3, v6

    .line 184
    .local v4, strSplit:Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, arrSplitEqual:[Ljava/lang/String;
    const-string v9, "[=]"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 188
    array-length v9, v1

    if-le v9, v11, :cond_4

    .line 190
    aget-object v9, v1, v7

    aget-object v10, v1, v11

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 193
    :cond_4
    aget-object v9, v1, v7

    const-string v10, ""

    if-eq v9, v10, :cond_3

    .line 195
    aget-object v9, v1, v7

    const-string v10, ""

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected static readFromSD(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"

    .prologue
    .line 292
    const-string v4, ""

    .line 295
    .local v4, res:Ljava/lang/String;
    :try_start_0
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 296
    .local v5, sdCardDir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v6, sdFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 299
    .local v2, fin:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 301
    .local v3, length:I
    new-array v0, v3, [B

    .line 302
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 304
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0           #buffer:[B
    .end local v2           #fin:Ljava/io/FileInputStream;
    .end local v3           #length:I
    .end local v5           #sdCardDir:Ljava/io/File;
    .end local v6           #sdFile:Ljava/io/File;
    :goto_0
    return-object v4

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static writeToSd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "filename"
    .parameter "text"

    .prologue
    .line 272
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 273
    const-string v5, "mounted"

    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 273
    if-eqz v4, :cond_0

    .line 275
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 276
    .local v2, sdCardDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v3, sdFile:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 279
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 280
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 281
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #sdCardDir:Ljava/io/File;
    .end local v3           #sdFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v2       #sdCardDir:Ljava/io/File;
    .restart local v3       #sdFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 285
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
