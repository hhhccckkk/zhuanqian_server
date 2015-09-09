.class final Lcom/jy/func/i/b$a;
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
    name = "a"
.end annotation


# instance fields
.field private aB:Landroid/graphics/Bitmap;

.field private aC:Lcom/jy/func/i/b$b;

.field private synthetic aD:Lcom/jy/func/i/b;


# direct methods
.method public constructor <init>(Lcom/jy/func/i/b;Landroid/graphics/Bitmap;Lcom/jy/func/i/b$b;)V
    .locals 0
    .parameter
    .parameter "b"
    .parameter "p"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/jy/func/i/b$a;->aD:Lcom/jy/func/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/jy/func/i/b$a;->aB:Landroid/graphics/Bitmap;

    .line 188
    iput-object p3, p0, Lcom/jy/func/i/b$a;->aC:Lcom/jy/func/i/b$b;

    .line 189
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jy/func/i/b$a;->aD:Lcom/jy/func/i/b;

    iget-object v1, p0, Lcom/jy/func/i/b$a;->aC:Lcom/jy/func/i/b$b;

    invoke-virtual {v0, v1}, Lcom/jy/func/i/b;->a(Lcom/jy/func/i/b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/jy/func/i/b$a;->aB:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/jy/func/i/b$a;->aC:Lcom/jy/func/i/b$b;

    iget-object v0, v0, Lcom/jy/func/i/b$b;->aE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jy/func/i/b$a;->aB:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
