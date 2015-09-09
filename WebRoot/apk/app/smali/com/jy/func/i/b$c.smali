.class final Lcom/jy/func/i/b$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private aC:Lcom/jy/func/i/b$b;

.field private synthetic aD:Lcom/jy/func/i/b;


# direct methods
.method constructor <init>(Lcom/jy/func/i/b;Lcom/jy/func/i/b$b;)V
    .locals 0
    .parameter
    .parameter "photoToLoad"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/jy/func/i/b$c;->aC:Lcom/jy/func/i/b$b;

    .line 148
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    iget-object v3, p0, Lcom/jy/func/i/b$c;->aC:Lcom/jy/func/i/b$b;

    invoke-virtual {v2, v3}, Lcom/jy/func/i/b;->a(Lcom/jy/func/i/b$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    iget-object v3, p0, Lcom/jy/func/i/b$c;->aC:Lcom/jy/func/i/b$b;

    iget-object v3, v3, Lcom/jy/func/i/b$b;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jy/func/i/b;->a(Lcom/jy/func/i/b;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    .local v1, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    iget-object v2, v2, Lcom/jy/func/i/b;->ax:Lcom/jy/func/i/c;

    iget-object v3, p0, Lcom/jy/func/i/b$c;->aC:Lcom/jy/func/i/b$b;

    iget-object v3, v3, Lcom/jy/func/i/b$b;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/jy/func/i/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v2, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    iget-object v3, p0, Lcom/jy/func/i/b$c;->aC:Lcom/jy/func/i/b$b;

    invoke-virtual {v2, v3}, Lcom/jy/func/i/b;->a(Lcom/jy/func/i/b$b;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    new-instance v0, Lcom/jy/func/i/b$a;

    iget-object v2, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    iget-object v3, p0, Lcom/jy/func/i/b$c;->aC:Lcom/jy/func/i/b$b;

    invoke-direct {v0, v2, v1, v3}, Lcom/jy/func/i/b$a;-><init>(Lcom/jy/func/i/b;Landroid/graphics/Bitmap;Lcom/jy/func/i/b$b;)V

    .line 160
    .local v0, bd:Lcom/jy/func/i/b$a;
    iget-object v2, p0, Lcom/jy/func/i/b$c;->aD:Lcom/jy/func/i/b;

    iget-object v2, v2, Lcom/jy/func/i/b;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v0           #bd:Lcom/jy/func/i/b$a;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
