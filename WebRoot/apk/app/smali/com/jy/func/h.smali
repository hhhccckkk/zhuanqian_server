.class public final Lcom/jy/func/h;
.super Landroid/widget/LinearLayout;
.source "CYZ_TaskDetailView.java"


# instance fields
.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/webkit/WebView;

.field private S:Landroid/widget/Button;

.field private T:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "paramContext"

    .prologue
    const/high16 v13, 0x41a0

    const/high16 v12, 0x4160

    const/high16 v11, 0x3f80

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jy/func/h;->setOrientation(I)V

    .line 49
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/jy/func/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jy/func/h;->setBackgroundColor(I)V

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4130

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4282

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4282

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4040

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x2713

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "default_icon.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "icon_mask.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40e0

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x1

    const/16 v4, 0x2713

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5c0f\u7c73"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4188

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5b89\u88c5\u8bd5\u73a9\u9001"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xfd

    const/16 v5, 0xc4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "1000\u8da3\u5e01"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v3, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5927\u5c0f:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "1.8MB"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v3, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42b4

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4220

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4130

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4180

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cyz_xiazaibtn.9.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "\u514d\u8d39\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x4140

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x111112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/jy/func/h;->K:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jy/func/h;->K:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/jy/func/h;->addView(Landroid/view/View;)V

    .line 53
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4120

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v4, "#f7f7f7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v4, 0x1

    const-string v5, "#cdcdcd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v5, "#1abc9c"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u4efb\u52a1\u63cf\u8ff0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4198

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const-string v5, "#cdcdcd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40c0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xec

    const/16 v7, 0x68

    const/16 v8, 0x44

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v5, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "0x111127"

    const-string v8, "\u8da3\u5e01"

    invoke-static {v6, v7, v8}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xec

    const/16 v7, 0x68

    const/16 v8, 0x44

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v5, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "0x111127"

    const-string v8, "\u8da3\u5e01"

    invoke-static {v6, v7, v8}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4120

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4120

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5728\u672a\u5b8c\u6210\u4ee5\u4e0a\u6240\u6709\u6b65\u9aa4\u524d\u5207\u52ff\u5378\u8f7d\u5e94\u7528"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43a5

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4140

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#ebebeb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4180

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v3, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4180

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v4, v7, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v3, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42f0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4170

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4170

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4170

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x2714

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    const-string v4, "\u7b80\u4ecb:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x3

    const/16 v6, 0x2714

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "cyz_introduction_Button.png"

    invoke-static {v4, v5}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x111115

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/jy/func/h;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method private D()Landroid/widget/RelativeLayout;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4160

    const/4 v7, -0x1

    const/high16 v9, 0x3f80

    const/4 v8, -0x2

    .line 58
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, localRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4130

    .line 62
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 65
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4140

    .line 64
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4282

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4282

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4040

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v4, 0x2713

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "default_icon.png"

    invoke-static {v4, v5}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "icon_mask.png"

    invoke-static {v4, v5}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40e0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x1

    const/16 v5, 0x2713

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5c0f\u7c73"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4188

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v3, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u5b89\u88c5\u8bd5\u73a9\u9001"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0xfd

    const/16 v6, 0xc4

    const/16 v7, 0x10

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "1000\u8da3\u5e01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0xff

    invoke-static {v5, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v4, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u5927\u5c0f:"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "1.8MB"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v4, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42b4

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4220

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4130

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4180

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cyz_xiazaibtn.9.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "\u514d\u8d39\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x111112

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/jy/func/h;->K:Landroid/widget/Button;

    .line 70
    iget-object v2, p0, Lcom/jy/func/h;->K:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 72
    return-object v1
.end method

.method private E()Landroid/widget/FrameLayout;
    .locals 6

    .prologue
    const/high16 v4, 0x4282

    const/4 v5, -0x1

    .line 76
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, localFrameLayout:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 79
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 77
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4040

    .line 81
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 84
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f80

    .line 83
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 85
    const/16 v2, 0x2713

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "default_icon.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    .line 88
    iget-object v2, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "icon_mask.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    return-object v0
.end method

.method private F()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 95
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, localImageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "default_icon.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-object v0
.end method

.method private G()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 108
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, localImageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "icon_mask.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-object v0
.end method

.method private H()Landroid/widget/Button;
    .locals 6

    .prologue
    const/16 v5, 0xff

    .line 121
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, localButton:Landroid/widget/Button;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b4

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 124
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4220

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 122
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4130

    .line 126
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 129
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4180

    .line 128
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cyz_xiazaibtn.9.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const-string v2, "\u514d\u8d39\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/high16 v2, 0x4140

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 137
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 138
    const v2, 0x111112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 141
    return-object v0
.end method

.method private I()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4160

    const/high16 v8, 0x3f80

    const/4 v7, -0x2

    .line 145
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40e0

    .line 150
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 152
    const/16 v2, 0x2713

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5c0f\u7c73"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4188

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    .line 156
    iget-object v2, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5b89\u88c5\u8bd5\u73a9\u9001"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xfd

    const/16 v5, 0xc4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "1000\u8da3\u5e01"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xff

    invoke-static {v4, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v3, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5927\u5c0f:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "1.8MB"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v3, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    return-object v1
.end method

.method private J()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 164
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000

    .line 168
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const-string v2, "\u5c0f\u7c73"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/high16 v2, 0x4188

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    return-object v1
.end method

.method private K()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/high16 v8, 0x4160

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 178
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f80

    .line 183
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5b89\u88c5\u8bd5\u73a9\u9001"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0xfd

    const/16 v4, 0xc4

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "1000\u8da3\u5e01"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0xff

    invoke-static {v3, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    .line 190
    iget-object v2, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    return-object v1
.end method

.method private L()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v3, -0x2

    .line 196
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const-string v2, "\u5b89\u88c5\u8bd5\u73a9\u9001"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    const/16 v2, 0xfd

    const/16 v3, 0xc4

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    return-object v1
.end method

.method private M()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 209
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    const-string v2, "1000\u8da3\u5e01"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    const/16 v2, 0xff

    invoke-static {v2, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    return-object v1
.end method

.method private N()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/high16 v7, 0x4160

    const/high16 v6, 0x3f80

    const/4 v5, -0x2

    .line 222
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 227
    invoke-static {v2, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 230
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5927\u5c0f:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "1.8MB"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    .line 235
    iget-object v2, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    return-object v1
.end method

.method private O()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 241
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f80

    .line 245
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const-string v2, "\u5927\u5c0f:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    return-object v1
.end method

.method private P()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 256
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 257
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f80

    .line 260
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const-string v2, "1.8MB"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 266
    return-object v1
.end method

.method private Q()Landroid/widget/ScrollView;
    .locals 15

    .prologue
    const/high16 v14, 0x4160

    const/high16 v13, 0x4120

    const/high16 v12, 0x41a0

    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 271
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 272
    .local v1, localRelativeLayout:Landroid/widget/ScrollView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 277
    invoke-static {v2, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 279
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 282
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v5, "#f7f7f7"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v5, 0x1

    const-string v6, "#cdcdcd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40a0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v6, "#1abc9c"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4080

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u4efb\u52a1\u63cf\u8ff0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x4198

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3f80

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4080

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const-string v6, "#cdcdcd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40c0

    invoke-static {v7, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v6, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0xec

    const/16 v8, 0x68

    const/16 v9, 0x44

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v6, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-static {v8, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "0x111127"

    const-string v9, "\u8da3\u5e01"

    invoke-static {v7, v8, v9}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40c0

    invoke-static {v7, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v6, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0xec

    const/16 v8, 0x68

    const/16 v9, 0x44

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v6, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-static {v8, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "0x111127"

    const-string v9, "\u8da3\u5e01"

    invoke-static {v7, v8, v9}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u5728\u672a\u5b8c\u6210\u4ee5\u4e0a\u6240\u6709\u6b65\u9aa4\u524d\u5207\u52ff\u5378\u8f7d\u5e94\u7528"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#cdcdcd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x4140

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43a5

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4140

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v4, "#ebebeb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4180

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    div-int/lit8 v8, v6, 0x2

    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v4, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4180

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    div-int/lit8 v8, v6, 0x2

    invoke-virtual {v5, v8, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v4, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42f0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4170

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4170

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4170

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x2714

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    const-string v5, "\u7b80\u4ecb:"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v6, 0x3

    const/16 v7, 0x2714

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "cyz_introduction_Button.png"

    invoke-static {v5, v6}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x111115

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    iget-object v4, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 284
    return-object v1
.end method

.method private R()Landroid/widget/LinearLayout;
    .locals 14

    .prologue
    const/high16 v13, 0x4160

    const/high16 v12, 0x4120

    const/high16 v11, 0x41a0

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 288
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 289
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 295
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v4, "#f7f7f7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v4, 0x1

    const-string v5, "#cdcdcd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v5, "#1abc9c"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u4efb\u52a1\u63cf\u8ff0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4198

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const-string v5, "#cdcdcd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40c0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xec

    const/16 v7, 0x68

    const/16 v8, 0x44

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v5, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "0x111127"

    const-string v8, "\u8da3\u5e01"

    invoke-static {v6, v7, v8}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xec

    const/16 v7, 0x68

    const/16 v8, 0x44

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v5, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "0x111127"

    const-string v8, "\u8da3\u5e01"

    invoke-static {v6, v7, v8}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5728\u672a\u5b8c\u6210\u4ee5\u4e0a\u6240\u6709\u6b65\u9aa4\u524d\u5207\u52ff\u5378\u8f7d\u5e94\u7528"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43a5

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4140

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#ebebeb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4180

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v3, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4180

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v4, v7, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v3, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42f0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4170

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4170

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4170

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x2714

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    const-string v4, "\u7b80\u4ecb:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x3

    const/16 v6, 0x2714

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "cyz_introduction_Button.png"

    invoke-static {v4, v5}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x111115

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    .line 298
    iget-object v2, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    return-object v1
.end method

.method private S()Landroid/widget/LinearLayout;
    .locals 14

    .prologue
    const/high16 v13, 0x4120

    const/4 v12, -0x1

    const/high16 v11, 0x41a0

    const/high16 v10, 0x4160

    const/4 v9, -0x2

    .line 304
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 305
    .local v2, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    .local v1, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 309
    invoke-static {v3, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 312
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 311
    invoke-static {v3, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 313
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 317
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 318
    .local v0, gd:Landroid/graphics/drawable/GradientDrawable;
    const-string v3, "#f7f7f7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 319
    const/4 v3, 0x1

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 320
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v5, "#1abc9c"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u4efb\u52a1\u63cf\u8ff0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4198

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const-string v5, "#cdcdcd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40c0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xec

    const/16 v7, 0x68

    const/16 v8, 0x44

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v5, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "0x111127"

    const-string v8, "\u8da3\u5e01"

    invoke-static {v6, v7, v8}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xec

    const/16 v7, 0x68

    const/16 v8, 0x44

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v5, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "0x111127"

    const-string v8, "\u8da3\u5e01"

    invoke-static {v6, v7, v8}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5728\u672a\u5b8c\u6210\u4ee5\u4e0a\u6240\u6709\u6b65\u9aa4\u524d\u5207\u52ff\u5378\u8f7d\u5e94\u7528"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    return-object v2
.end method

.method private T()Landroid/view/View;
    .locals 5

    .prologue
    .line 332
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 333
    .local v1, localView:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 334
    const/4 v2, -0x1

    .line 335
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a0

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 333
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const-string v2, "#1abc9c"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 338
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    return-object v1
.end method

.method private U()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 345
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 346
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4080

    .line 349
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 352
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a0

    .line 351
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 353
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    const-string v2, "\u4efb\u52a1\u63cf\u8ff0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const/high16 v2, 0x4198

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 357
    return-object v1
.end method

.method private V()Landroid/view/View;
    .locals 6

    .prologue
    const/high16 v5, 0x41a0

    .line 361
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, localView:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 363
    const/4 v2, -0x1

    .line 364
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 362
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 366
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4080

    .line 365
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 368
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 367
    invoke-static {v2, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 370
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 369
    invoke-static {v2, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 372
    const-string v2, "#cdcdcd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 373
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    return-object v1
.end method

.method private W()Landroid/widget/LinearLayout;
    .locals 12

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, -0x1

    const/high16 v9, 0x40c0

    const/high16 v8, 0x4160

    const/4 v7, -0x2

    .line 378
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 382
    invoke-static {v2, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 384
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 386
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v3, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xec

    const/16 v5, 0x68

    const/16 v6, 0x44

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v3, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "0x111127"

    const-string v6, "\u8da3\u5e01"

    invoke-static {v4, v5, v6}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v3, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xec

    const/16 v5, 0x68

    const/16 v6, 0x44

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v3, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "0x111127"

    const-string v6, "\u8da3\u5e01"

    invoke-static {v4, v5, v6}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    return-object v1
.end method

.method private X()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/high16 v7, 0x4160

    const/4 v6, -0x2

    .line 392
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    const/4 v2, -0x1

    .line 393
    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 397
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c0

    .line 396
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 399
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a0

    .line 398
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 400
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 402
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    .line 403
    iget-object v2, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0xec

    const/16 v4, 0x68

    const/16 v5, 0x44

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    .line 405
    iget-object v2, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "0x111127"

    const-string v5, "\u8da3\u5e01"

    invoke-static {v3, v4, v5}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    return-object v1
.end method

.method private Y()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/high16 v7, 0x4160

    const/4 v6, -0x2

    .line 411
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 412
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    const/4 v2, -0x1

    .line 412
    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 416
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c0

    .line 415
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 418
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a0

    .line 417
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 419
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    .line 422
    iget-object v2, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0xec

    const/16 v4, 0x68

    const/16 v5, 0x44

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    .line 424
    iget-object v2, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "0x111127"

    const-string v5, "\u8da3\u5e01"

    invoke-static {v3, v4, v5}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    return-object v1
.end method

.method private Z()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 431
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 432
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    const-string v2, "1.\u9996\u6b21\u4e0b\u8f7d\u5e76\u6ce8\u518c\u53ef\u83b7\u5956\u52b1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 440
    return-object v1
.end method

.method private aa()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v3, -0x2

    .line 444
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 445
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 451
    const/16 v2, 0xec

    const/16 v3, 0x68

    const/16 v4, 0x44

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    return-object v1
.end method

.method private ab()Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v4, -0x2

    .line 462
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 463
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 467
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f80

    .line 466
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 468
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "0x111127"

    const-string v5, "\u8da3\u5e01"

    invoke-static {v3, v4, v5}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, strUnit:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const/high16 v3, 0x4160

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 474
    return-object v1
.end method

.method private ac()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 478
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 479
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 483
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    const-string v2, "2.\u6b21\u65e5\u767b\u5f55\u5e76\u8bd5\u75283\u5206\u949f\u53ef\u83b7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    return-object v1
.end method

.method private ad()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v3, -0x2

    .line 491
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 492
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 498
    const/16 v2, 0xec

    const/16 v3, 0x68

    const/16 v4, 0x44

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    return-object v1
.end method

.method private ae()Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v4, -0x2

    .line 507
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 508
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f80

    .line 511
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 513
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "0x111127"

    const-string v5, "\u8da3\u5e01"

    invoke-static {v3, v4, v5}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, strUnit:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    const/high16 v3, 0x4160

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 518
    return-object v1
.end method

.method private af()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/high16 v3, 0x4120

    .line 522
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 523
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 527
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 526
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 529
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 528
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 531
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a0

    .line 530
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 532
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    const-string v2, "\u5728\u672a\u5b8c\u6210\u4ee5\u4e0a\u6240\u6709\u6b65\u9aa4\u524d\u5207\u52ff\u5378\u8f7d\u5e94\u7528"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const-string v2, "#cdcdcd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    const/high16 v2, 0x4140

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 537
    return-object v1
.end method

.method private ag()Landroid/widget/LinearLayout;
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/high16 v10, 0x41a0

    const/high16 v9, 0x4180

    const/high16 v8, 0x3f80

    const/4 v7, -0x1

    .line 542
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 543
    .local v1, localRelativeLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43a5

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 543
    invoke-direct {v0, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 548
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4140

    .line 547
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 550
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 552
    const-string v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 553
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    invoke-virtual {v3, v4, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v2, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    .line 554
    iget-object v2, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    invoke-virtual {v3, v6, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v2, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    .line 556
    iget-object v2, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    return-object v1
.end method

.method private ah()Landroid/widget/ImageView;
    .locals 6

    .prologue
    .line 561
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 562
    .local v2, localImageView:Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    const/4 v4, -0x2

    .line 564
    const/4 v5, -0x1

    .line 562
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 566
    .local v3, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4180

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v0

    .line 567
    .local v0, iMargin1:I
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v1

    .line 569
    .local v1, iMargin2:I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v0, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 570
    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 571
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 576
    return-object v2
.end method

.method private ai()Landroid/widget/ImageView;
    .locals 6

    .prologue
    .line 580
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 581
    .local v2, localImageView:Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 582
    const/4 v4, -0x2

    .line 583
    const/4 v5, -0x1

    .line 581
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 585
    .local v3, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4180

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v0

    .line 586
    .local v0, iMargin1:I
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v1

    .line 588
    .local v1, iMargin2:I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 589
    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 590
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 595
    return-object v2
.end method

.method private aj()Landroid/widget/RelativeLayout;
    .locals 9

    .prologue
    const/16 v8, 0x2714

    const/4 v7, -0x1

    const/high16 v4, 0x4120

    const/high16 v6, 0x4170

    const/4 v5, -0x2

    .line 600
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 601
    .local v1, localRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 604
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42f0

    .line 603
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 601
    invoke-direct {v0, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 607
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 606
    invoke-static {v2, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 609
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 608
    invoke-static {v2, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 611
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 610
    invoke-static {v2, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 613
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 612
    invoke-static {v2, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 614
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setId(I)V

    const-string v3, "\u7b80\u4ecb:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 617
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    .line 618
    iget-object v2, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 619
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cyz_introduction_Button.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x111115

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    .line 620
    iget-object v2, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 621
    return-object v1
.end method

.method private ak()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 625
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 626
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 630
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4170

    .line 629
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 632
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    const/16 v2, 0x2714

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 634
    const-string v2, "\u7b80\u4ecb:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 637
    return-object v1
.end method

.method private al()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 641
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 642
    .local v1, localWebView:Landroid/webkit/WebView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 646
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000

    .line 645
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 648
    const/4 v2, 0x3

    const/16 v3, 0x2714

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 649
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    return-object v1
.end method

.method private am()Landroid/widget/Button;
    .locals 5

    .prologue
    .line 657
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 658
    .local v0, localBtnMoreView:Landroid/widget/Button;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 659
    const/4 v2, -0x1

    .line 661
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a0

    .line 660
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 658
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 662
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 664
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    invoke-virtual {p0}, Lcom/jy/func/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cyz_introduction_Button.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    const v2, 0x111115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 669
    return-object v0
.end method


# virtual methods
.method public final aA()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/jy/func/h;->T:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final an()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/jy/func/h;->G:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final ao()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/jy/func/h;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method public final ap()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/jy/func/h;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method public final aq()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/jy/func/h;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method public final ar()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/jy/func/h;->K:Landroid/widget/Button;

    return-object v0
.end method

.method public final as()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/jy/func/h;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method public final at()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/jy/func/h;->M:Landroid/widget/TextView;

    return-object v0
.end method

.method public final au()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/jy/func/h;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method public final av()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/jy/func/h;->O:Landroid/widget/TextView;

    return-object v0
.end method

.method public final aw()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jy/func/h;->P:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final ax()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/jy/func/h;->Q:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final ay()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/jy/func/h;->R:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final az()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/jy/func/h;->S:Landroid/widget/Button;

    return-object v0
.end method
