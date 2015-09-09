.class public Lcom/hck/zhuanqian/util/MyTools;
.super Ljava/lang/Object;
.source "MyTools.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static display:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "MyTools"

    sput-object v0, Lcom/hck/zhuanqian/util/MyTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sput-object p1, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static destoryBimap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 289
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    const/4 p0, 0x0

    .line 293
    :cond_0
    return-void
.end method

.method public static dip2px(F)I
    .locals 3
    .parameter "dipValue"

    .prologue
    .line 196
    sget-object v1, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 197
    .local v0, scale:F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static geFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 375
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/hck/zhuanqian/util/MyTools;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v5

    .line 379
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .local v4, s:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 382
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 381
    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 383
    .local v2, in:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 385
    .local v0, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 388
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #in:Ljava/io/InputStreamReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static geFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v5, 0x0

    .line 396
    if-nez p0, :cond_0

    .line 412
    :goto_0
    return-object v5

    .line 400
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v4, s:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 403
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 402
    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 404
    .local v2, in:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 406
    .local v0, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 409
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 410
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #in:Ljava/io/InputStreamReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    .line 85
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 152
    .line 153
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 154
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 156
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    .line 160
    .restart local v0       #info:Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 162
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOnTouchedView(Landroid/view/MotionEvent;Ljava/util/List;)Landroid/view/View;
    .locals 7
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    invoke-static {p1}, Lcom/hck/zhuanqian/util/MyTools;->getViewsPosition(Ljava/util/List;)[[I

    move-result-object v1

    .line 232
    .local v1, location:[[I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 242
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    aget-object v3, v1, v0

    aget v3, v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget-object v2, v1, v0

    aget v4, v2, v5

    .line 235
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 236
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    aget-object v3, v1, v0

    aget v3, v3, v6

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 237
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    aget-object v2, v1, v0

    aget v4, v2, v6

    .line 238
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRandom([CI)Ljava/lang/String;
    .locals 4
    .parameter "sourceChar"
    .parameter "length"

    .prologue
    .line 420
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    if-gez p1, :cond_1

    .line 421
    :cond_0
    const/4 v3, 0x0

    .line 428
    :goto_0
    return-object v3

    .line 423
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    .local v2, str:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 425
    .local v1, random:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 426
    :cond_2
    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenHeight()I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "hck"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hck/zhuanqian/util/MyTools;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  getScreenHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "context \ufffd\ufffd\ufffd\ufffd\u03aa\ufffd\ufffd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/16 v0, 0x320

    .line 54
    :goto_0
    return v0

    .line 53
    :cond_0
    sget-object v0, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyTools;->display:Landroid/view/Display;

    .line 54
    sget-object v0, Lcom/hck/zhuanqian/util/MyTools;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "hck"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hck/zhuanqian/util/MyTools;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  getScreenHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "context \ufffd\ufffd\ufffd\ufffd\u03aa\ufffd\ufffd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/16 v0, 0x1e0

    .line 64
    :goto_0
    return v0

    .line 63
    :cond_0
    sget-object v0, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyTools;->display:Landroid/view/Display;

    .line 64
    sget-object v0, Lcom/hck/zhuanqian/util/MyTools;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public static getTel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 146
    .line 147
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 148
    .local v0, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVerCode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, pkName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 118
    const/4 v4, 0x0

    .line 117
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 118
    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, pkName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 106
    const/4 v3, 0x0

    .line 105
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 106
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #pkName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v2

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getViewPosition(Landroid/view/View;)[I
    .locals 2
    .parameter "view"

    .prologue
    .line 216
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 217
    .local v0, location:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 218
    return-object v0
.end method

.method public static getViewsPosition(Ljava/util/List;)[[I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)[[I"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 202
    .local v1, location:[[I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 205
    return-object v1

    .line 203
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "strEmail"

    .prologue
    .line 334
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 336
    .local v0, checkemail:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 338
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 340
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isLenghtOk(Ljava/lang/String;I)Z
    .locals 1
    .parameter "string"
    .parameter "max"

    .prologue
    .line 363
    if-eqz p0, :cond_0

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLenghtOk(Ljava/lang/String;II)Z
    .locals 1
    .parameter "string"
    .parameter "max"
    .parameter "min"

    .prologue
    .line 353
    if-eqz p0, :cond_1

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 128
    .line 129
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 130
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 133
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 134
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 345
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumber(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, isNumer:Z
    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 330
    :cond_0
    return v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "s"

    .prologue
    .line 306
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 307
    .local v1, digest:Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 308
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 311
    .local v4, messageDigest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .local v3, hexString:Ljava/lang/StringBuffer;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 317
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #messageDigest:[B
    :goto_1
    return-object v5

    .line 312
    .restart local v1       #digest:Ljava/security/MessageDigest;
    .restart local v3       #hexString:Ljava/lang/StringBuffer;
    .restart local v4       #messageDigest:[B
    :cond_0
    aget-byte v0, v4, v5

    .line 313
    .local v0, b:B
    and-int/lit16 v7, v0, 0xff

    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 314
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :cond_1
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 318
    .end local v0           #b:B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #messageDigest:[B
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, ""

    goto :goto_1

    .line 320
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 321
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, ""

    goto :goto_1
.end method

.method public static px2dip(I)I
    .locals 3
    .parameter "pxValue"

    .prologue
    .line 173
    sget-object v1, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 174
    .local v0, scale:F
    int-to-float v1, p0

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(I)I
    .locals 2
    .parameter "px"

    .prologue
    .line 184
    sget-object v1, Lcom/hck/zhuanqian/util/MyTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 185
    .local v0, scaledDensity:F
    int-to-float v1, p0

    div-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static savePic(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "photo"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 253
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p0, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 259
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 260
    .local v2, byteArray:[B
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 261
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, saveDir:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 264
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 266
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 268
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 270
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 272
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    .local v6, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    .local v1, bos:Ljava/io/BufferedOutputStream;
    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 277
    :catch_0
    move-exception v4

    .line 278
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 280
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "limit"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, mStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #mStr:Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSign(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 434
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 435
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 437
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 445
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 438
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 439
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 440
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.test.test"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    new-instance v5, Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public totalMemory(I)J
    .locals 5
    .parameter "type"

    .prologue
    const-wide/16 v3, 0x400

    .line 91
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 92
    .local v0, myRun:Ljava/lang/Runtime;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    .line 99
    :goto_0
    return-wide v1

    .line 94
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 97
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    goto :goto_0

    .line 99
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
