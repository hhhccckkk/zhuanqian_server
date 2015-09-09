.class public Lcn/sharesdk/alipay/share/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcn/sharesdk/alipay/share/b;


# instance fields
.field private a:Lcom/alipay/share/sdk/openapi/IAPApi;

.field private b:Lcn/sharesdk/alipay/share/a;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return v1
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v0, 0x1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    div-int v3, v2, v0

    if-gt v3, p1, :cond_0

    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v3, p2, :cond_0

    if-gt v2, p2, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    int-to-double v4, v2

    mul-double/2addr v4, v0

    double-to-int v2, v4

    int-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    if-le v3, v2, :cond_1

    int-to-double v0, p2

    int-to-double v4, v3

    div-double/2addr v0, v4

    goto :goto_0

    :cond_1
    int-to-double v0, p2

    int-to-double v4, v2

    div-double/2addr v0, v4

    goto :goto_0
.end method

.method public static a()Lcn/sharesdk/alipay/share/b;
    .locals 1

    sget-object v0, Lcn/sharesdk/alipay/share/b;->c:Lcn/sharesdk/alipay/share/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/sharesdk/alipay/share/b;

    invoke-direct {v0}, Lcn/sharesdk/alipay/share/b;-><init>()V

    sput-object v0, Lcn/sharesdk/alipay/share/b;->c:Lcn/sharesdk/alipay/share/b;

    :cond_0
    sget-object v0, Lcn/sharesdk/alipay/share/b;->c:Lcn/sharesdk/alipay/share/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x78

    :goto_0
    const/16 v1, 0x28

    if-le v0, v1, :cond_2

    invoke-direct {p0, p2, p3}, Lcn/sharesdk/alipay/share/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I

    move-result v1

    const v2, 0x8000

    if-le v1, v2, :cond_2

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    add-int/lit8 v0, v0, -0x5

    invoke-direct {p0, p2, v1}, Lcn/sharesdk/alipay/share/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;[B)[B
    .locals 6

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat([B)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v2, v1, :cond_0

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    array-length v3, p2

    const v4, 0x8000

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, p2

    invoke-static {p2, v5, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v0}, Lcn/sharesdk/alipay/share/b;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, p2

    invoke-static {p2, v5, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v3, v2, :cond_1

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x8000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v0}, Lcn/sharesdk/alipay/share/b;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1, v0, v2}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcn/sharesdk/alipay/share/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/alipay/share/sdk/openapi/APAPIFactory;->createZFBApi(Landroid/content/Context;Ljava/lang/String;Z)Lcom/alipay/share/sdk/openapi/IAPApi;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    iget-object v1, p0, Lcn/sharesdk/alipay/share/b;->b:Lcn/sharesdk/alipay/share/a;

    invoke-interface {v0, p1, v1}, Lcom/alipay/share/sdk/openapi/IAPApi;->handleIntent(Landroid/content/Intent;Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;)Z

    return-void
.end method

.method public a(Lcn/sharesdk/alipay/share/a;)V
    .locals 7

    iput-object p1, p0, Lcn/sharesdk/alipay/share/b;->b:Lcn/sharesdk/alipay/share/a;

    invoke-virtual {p1}, Lcn/sharesdk/alipay/share/a;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v2}, Lcn/sharesdk/alipay/share/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4, v5, v6}, Lcn/sharesdk/alipay/share/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/alipay/share/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "The params of text is empty !"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->b:Lcn/sharesdk/alipay/share/a;

    invoke-virtual {v0}, Lcn/sharesdk/alipay/share/a;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/share/sdk/openapi/APTextObject;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/APTextObject;-><init>()V

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    new-instance v0, Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>()V

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    new-instance v1, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>()V

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    invoke-interface {v0, v1}, Lcom/alipay/share/sdk/openapi/IAPApi;->sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/alipay/share/sdk/openapi/APImageObject;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/APImageObject;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p3, v0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageUrl:Ljava/lang/String;

    :goto_0
    new-instance v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>()V

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->d:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcn/sharesdk/alipay/share/b;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B

    :cond_0
    :goto_1
    new-instance v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>()V

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->transaction:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    invoke-interface {v1, v0}, Lcom/alipay/share/sdk/openapi/IAPApi;->sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z

    return-void

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object p1, v0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/alipay/share/sdk/openapi/APImageObject;

    invoke-direct {v0, p2}, Lcom/alipay/share/sdk/openapi/APImageObject;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "The params of image is empty !"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/sharesdk/alipay/share/b;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/alipay/share/sdk/openapi/APImageObject;->imageData:[B

    invoke-direct {p0, v2, v0}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->b:Lcn/sharesdk/alipay/share/a;

    invoke-virtual {v0}, Lcn/sharesdk/alipay/share/a;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/share/sdk/openapi/APWebPageObject;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/APWebPageObject;-><init>()V

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    new-instance v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-direct {v2}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>()V

    iput-object p1, v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;->title:Ljava/lang/String;

    iput-object p2, v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;->description:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p6, v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbUrl:Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>()V

    iput-object v2, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webpage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->transaction:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    invoke-interface {v1, v0}, Lcom/alipay/share/sdk/openapi/IAPApi;->sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z

    return-void

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->d:Landroid/content/Context;

    invoke-direct {p0, v0, p4}, Lcn/sharesdk/alipay/share/b;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p5, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v1, p0, Lcn/sharesdk/alipay/share/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbData:[B

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    invoke-interface {v0}, Lcom/alipay/share/sdk/openapi/IAPApi;->isZFBSupportAPI()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/alipay/share/b;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    invoke-interface {v0}, Lcom/alipay/share/sdk/openapi/IAPApi;->isZFBAppInstalled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcn/sharesdk/alipay/share/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/alipay/share/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
