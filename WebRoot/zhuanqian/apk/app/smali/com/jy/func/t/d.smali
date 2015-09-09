.class public final Lcom/jy/func/t/d;
.super Ljava/lang/Object;
.source "CYZ_DrawableAssetsMgr.java"


# static fields
.field private static bN:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
