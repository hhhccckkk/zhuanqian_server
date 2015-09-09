.class public Lcom/jy/func/t/b;
.super Ljava/lang/Object;
.source "CYZ_CallFunc.java"


# static fields
.field private static av:Lcom/jy/func/t/b;

.field private static bN:Landroid/content/res/AssetManager;


# instance fields
.field private bM:Lcom/jy/func/lner/SignOutListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jy/func/t/b;->bM:Lcom/jy/func/lner/SignOutListener;

    .line 32
    iput-object p1, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private static a(FFI)Lcom/jy/func/lner/Point;
    .locals 2
    .parameter "surplusPoint"
    .parameter "consumedPoint"
    .parameter "status"

    .prologue
    .line 196
    new-instance v0, Lcom/jy/func/lner/Point;

    invoke-direct {v0}, Lcom/jy/func/lner/Point;-><init>()V

    .line 197
    .local v0, localPoint:Lcom/jy/func/lner/Point;
    iput p1, v0, Lcom/jy/func/lner/Point;->consumed:F

    .line 198
    iput p0, v0, Lcom/jy/func/lner/Point;->point:F

    .line 200
    invoke-static {p2}, Lcom/jy/func/lner/Point;->getStatus(I)Lcom/jy/func/lner/Point$PointStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/jy/func/lner/Point;->status:Lcom/jy/func/lner/Point$PointStatus;

    .line 202
    return-object v0
.end method

.method static synthetic a(Lcom/jy/func/t/b;FFI)Lcom/jy/func/lner/Point;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {p1, p2, p3}, Lcom/jy/func/t/b;->a(FFI)Lcom/jy/func/lner/Point;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "paramContext"
    .parameter "paramString"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    if-nez v3, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sput-object v3, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    .line 30
    :cond_0
    :try_start_0
    sget-object v3, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 31
    .local v2, localInputStream:Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 31
    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .end local v0           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v1, localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 41
    .end local v1           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #localInputStream:Ljava/io/InputStream;
    .restart local v0       #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v3

    .line 36
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 37
    :catch_1
    move-exception v3

    .line 38
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #localInputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2

    .line 34
    .end local v0           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Lcom/jy/func/t/b;
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 37
    sget-object v0, Lcom/jy/func/t/b;->av:Lcom/jy/func/t/b;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/jy/func/t/b;

    invoke-direct {v0, p0}, Lcom/jy/func/t/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jy/func/t/b;->av:Lcom/jy/func/t/b;

    .line 40
    :cond_0
    sget-object v0, Lcom/jy/func/t/b;->av:Lcom/jy/func/t/b;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "paramContext"
    .parameter "paramString"

    .prologue
    .line 47
    sget-object v5, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    if-nez v5, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sput-object v5, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    .line 50
    :cond_0
    :try_start_0
    sget-object v5, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 51
    .local v2, localInputStream:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v4, out:Ljava/lang/StringBuffer;
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 53
    .local v0, b:[B
    const/4 v3, 0x0

    .line 54
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_1

    .line 58
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .end local v0           #b:[B
    .end local v1           #i:I
    .end local v2           #localInputStream:Ljava/io/InputStream;
    .end local v3           #n:I
    .end local v4           #out:Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 56
    .restart local v0       #b:[B
    .restart local v1       #i:I
    .restart local v2       #localInputStream:Ljava/io/InputStream;
    .restart local v3       #n:I
    .restart local v4       #out:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0           #b:[B
    .end local v1           #i:I
    .end local v2           #localInputStream:Ljava/io/InputStream;
    .end local v3           #n:I
    .end local v4           #out:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v5

    .line 64
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 65
    :catch_1
    move-exception v5

    .line 66
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 7
    .parameter "paramContext"
    .parameter "paramString"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, patchy:Landroid/graphics/drawable/NinePatchDrawable;
    sget-object v5, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    if-nez v5, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sput-object v5, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    .line 81
    :cond_0
    :try_start_0
    sget-object v5, Lcom/jy/func/t/b;->bN:Landroid/content/res/AssetManager;

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 82
    .local v4, stream:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 84
    .local v1, chunk:[B
    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 85
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v3, v0, v1, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v2           #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .local v3, patchy:Landroid/graphics/drawable/NinePatchDrawable;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 94
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #chunk:[B
    .end local v3           #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v2       #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v5

    .line 89
    :goto_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v5

    .line 91
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v2           #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #chunk:[B
    .restart local v3       #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v4       #stream:Ljava/io/InputStream;
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3           #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v2       #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    goto :goto_2

    .line 87
    .end local v2           #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v3       #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    :catch_3
    move-exception v5

    move-object v2, v3

    .end local v3           #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v2       #patchy:Landroid/graphics/drawable/NinePatchDrawable;
    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/jy/func/lner/CheckPointListener;)V
    .locals 7
    .parameter "paramInt"
    .parameter "paramCheckPointListener"

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v3, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    const-string v4, "0x111123"

    invoke-static {v3, v4}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/4 v3, 0x3

    invoke-static {v5, v5, v3}, Lcom/jy/func/t/b;->a(FFI)Lcom/jy/func/lner/Point;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/jy/func/lner/CheckPointListener;->onResponse(Lcom/jy/func/lner/Point;)V

    .line 193
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    const-string v4, "0x111126"

    invoke-static {v3, v4}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, strRate:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v2, "1"

    .line 133
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 134
    .local v1, rate:F
    new-instance v0, Lcom/jy/func/u/l;

    iget-object v3, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/jy/func/u/l;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, a:Lcom/jy/func/u/l;
    new-instance v3, Lcom/jy/func/u/d;

    invoke-direct {v3, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v3}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jy/func/u/b;

    .line 138
    invoke-interface {v3}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-float v6, p1

    div-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lcom/jy/func/u/l;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v4

    .line 139
    new-instance v5, Lcom/jy/func/t/b$2;

    invoke-direct {v5, p0, v1, p2}, Lcom/jy/func/t/b$2;-><init>(Lcom/jy/func/t/b;FLcom/jy/func/lner/CheckPointListener;)V

    .line 138
    invoke-static {v3, v4, v5}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    goto :goto_0
.end method

.method public final a(Lcom/jy/func/lner/CheckPointListener;)V
    .locals 7
    .parameter "paramCheckPointListener"

    .prologue
    .line 45
    new-instance v0, Lcom/jy/func/u/n;

    iget-object v4, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/jy/func/u/n;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, a:Lcom/jy/func/u/n;
    new-instance v1, Lcom/jy/func/u/d;

    invoke-direct {v1, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 48
    .local v1, invocationHandler:Lcom/jy/func/u/d;
    iget-object v4, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    const-string v5, "0x111126"

    invoke-static {v4, v5}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, strRate:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const-string v3, "1"

    .line 54
    :cond_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 55
    .local v2, rate:F
    invoke-virtual {v1}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jy/func/u/b;

    .line 56
    invoke-interface {v4}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lcom/jy/func/u/n;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v5

    .line 57
    new-instance v6, Lcom/jy/func/t/b$1;

    invoke-direct {v6, p0, v2, p1}, Lcom/jy/func/t/b$1;-><init>(Lcom/jy/func/t/b;FLcom/jy/func/lner/CheckPointListener;)V

    .line 56
    invoke-static {v4, v5, v6}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    .line 116
    return-void
.end method

.method public final a(Lcom/jy/func/lner/SignOutListener;)V
    .locals 0
    .parameter "pSignOutListener"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/jy/func/t/b;->bM:Lcom/jy/func/lner/SignOutListener;

    .line 243
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uId"
    .parameter "appId"
    .parameter "appKey"
    .parameter "userid"

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    :cond_0
    const-string v0, "JYWall"

    const-string v1, "uId,appId\u6216appKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 215
    const-string v1, "0x111124"

    const-string v2, ""

    .line 214
    invoke-static {v0, v1, v2}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 215
    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 217
    const-string v1, "0x111122"

    .line 216
    invoke-static {v0, v1, p1}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    iget-object v0, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 220
    const-string v1, "0x111123"

    .line 219
    invoke-static {v0, v1, p2}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    iget-object v0, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 223
    const-string v1, "0x111124"

    .line 222
    invoke-static {v0, v1, p3}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 229
    const-string v1, "0x111125"

    const-string v2, ""

    .line 228
    invoke-static {v0, v1, v2}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/jy/func/t/b;->mContext:Landroid/content/Context;

    .line 231
    const-string v1, "0x111125"

    .line 230
    invoke-static {v0, v1, p4}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final bh()Lcom/jy/func/lner/SignOutListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jy/func/t/b;->bM:Lcom/jy/func/lner/SignOutListener;

    return-object v0
.end method
