.class public Lcom/jy/func/i/b;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/i/b$a;,
        Lcom/jy/func/i/b$b;,
        Lcom/jy/func/i/b$c;
    }
.end annotation


# instance fields
.field private aA:Ljava/util/concurrent/ExecutorService;

.field ax:Lcom/jy/func/i/c;

.field private ay:Lcom/jy/func/i/a;

.field private az:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/jy/func/i/c;

    invoke-direct {v0}, Lcom/jy/func/i/c;-><init>()V

    iput-object v0, p0, Lcom/jy/func/i/b;->ax:Lcom/jy/func/i/c;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/i/b;->az:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jy/func/i/b;->handler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/jy/func/i/a;

    invoke-direct {v0, p1}, Lcom/jy/func/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jy/func/i/b;->ay:Lcom/jy/func/i/a;

    .line 33
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/i/b;->aA:Ljava/util/concurrent/ExecutorService;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/jy/func/i/b;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/jy/func/i/b;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "f"

    .prologue
    const/16 v10, 0xa0

    const/4 v8, 0x0

    .line 100
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v5, stream1:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    invoke-static {v5, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 107
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v7, width_tmp:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 109
    .local v1, height_tmp:I
    const/4 v4, 0x1

    .line 111
    .local v4, scale:I
    :goto_0
    div-int/lit8 v9, v7, 0x2

    if-lt v9, v10, :cond_0

    div-int/lit8 v9, v1, 0x2

    if-lt v9, v10, :cond_0

    .line 112
    div-int/lit8 v7, v7, 0x2

    .line 114
    div-int/lit8 v1, v1, 0x2

    .line 115
    shl-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_0

    .line 119
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v3, o2:Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v6, stream2:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    invoke-static {v6, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #height_tmp:I
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #scale:I
    .end local v5           #stream1:Ljava/io/FileInputStream;
    .end local v6           #stream2:Ljava/io/FileInputStream;
    .end local v7           #width_tmp:I
    :goto_1
    return-object v0

    .line 127
    :catch_0
    move-exception v9

    .line 128
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    move-object v0, v8

    .line 130
    goto :goto_1

    .line 125
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 54
    new-instance v0, Lcom/jy/func/i/b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/jy/func/i/b$b;-><init>(Lcom/jy/func/i/b;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 55
    .local v0, p:Lcom/jy/func/i/b$b;
    iget-object v1, p0, Lcom/jy/func/i/b;->aA:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/jy/func/i/b$c;

    invoke-direct {v2, p0, v0}, Lcom/jy/func/i/b$c;-><init>(Lcom/jy/func/i/b;Lcom/jy/func/i/b$b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 56
    return-void
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jy/func/i/b;->ax:Lcom/jy/func/i/c;

    invoke-virtual {v0}, Lcom/jy/func/i/c;->clear()V

    .line 203
    iget-object v0, p0, Lcom/jy/func/i/b;->ay:Lcom/jy/func/i/a;

    invoke-virtual {v0}, Lcom/jy/func/i/a;->clear()V

    .line 204
    return-void
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "url"

    .prologue
    .line 60
    iget-object v6, p0, Lcom/jy/func/i/b;->ay:Lcom/jy/func/i/a;

    invoke-virtual {v6, p1}, Lcom/jy/func/i/a;->q(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 65
    .local v3, f:Ljava/io/File;
    invoke-static {v3}, Lcom/jy/func/i/b;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 90
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 73
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 76
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v6, 0x7530

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 77
    const/16 v6, 0x7530

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 78
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 80
    .local v4, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    .local v5, os:Ljava/io/OutputStream;
    invoke-static {v4, v5}, Lcom/jy/func/i/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 83
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 84
    invoke-static {v3}, Lcom/jy/func/i/b;->a(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 87
    .local v2, ex:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    instance-of v6, v2, Ljava/lang/OutOfMemoryError;

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, p0, Lcom/jy/func/i/b;->ax:Lcom/jy/func/i/c;

    invoke-virtual {v6}, Lcom/jy/func/i/c;->clear()V

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/jy/func/i/b;->az:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/jy/func/i/b;->ax:Lcom/jy/func/i/c;

    invoke-virtual {v1, p1}, Lcom/jy/func/i/c;->r(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v1, Lcom/jy/func/i/b$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/jy/func/i/b$b;-><init>(Lcom/jy/func/i/b;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcom/jy/func/i/b;->aA:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/jy/func/i/b$c;

    invoke-direct {v3, p0, v1}, Lcom/jy/func/i/b$c;-><init>(Lcom/jy/func/i/b;Lcom/jy/func/i/b$b;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method final a(Lcom/jy/func/i/b$b;)Z
    .locals 3
    .parameter "photoToLoad"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/jy/func/i/b;->az:Ljava/util/Map;

    iget-object v2, p1, Lcom/jy/func/i/b$b;->aE:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/jy/func/i/b$b;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
