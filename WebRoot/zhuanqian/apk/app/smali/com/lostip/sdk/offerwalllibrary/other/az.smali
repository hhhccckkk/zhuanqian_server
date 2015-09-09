.class Lcom/lostip/sdk/offerwalllibrary/other/az;
.super Lcom/lostip/sdk/offerwalllibrary/other/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/ba",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/other/ay;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/ay;I)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/az;->a:Lcom/lostip/sdk/offerwalllibrary/other/ay;

    invoke-direct {p0, p2}, Lcom/lostip/sdk/offerwalllibrary/other/ba;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/az;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
