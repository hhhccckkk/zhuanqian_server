.class public Lcn/guomob/android/intwal/af;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:[F

.field c:I

.field d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Paint;[FF)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcn/guomob/android/intwal/af;->c:I

    iput-object p1, p0, Lcn/guomob/android/intwal/af;->d:Landroid/content/Context;

    iput-object p2, p0, Lcn/guomob/android/intwal/af;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/guomob/android/intwal/af;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/guomob/android/intwal/af;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p3, p0, Lcn/guomob/android/intwal/af;->b:[F

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcn/guomob/android/intwal/af;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x41a0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcn/guomob/android/intwal/af;->c:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/guomob/android/intwal/af;->c:I

    iget-object v0, p0, Lcn/guomob/android/intwal/af;->d:Landroid/content/Context;

    invoke-static {v0, v4}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcn/guomob/android/intwal/af;->c:I

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {v1, v4, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x4170

    iget-object v2, p0, Lcn/guomob/android/intwal/af;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
