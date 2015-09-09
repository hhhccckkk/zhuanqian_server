.class public final Lcom/jy/func/v/b;
.super Landroid/widget/LinearLayout;
.source "CYZ_CommonHeadBannerView.java"


# instance fields
.field private dA:Landroid/widget/RelativeLayout;

.field private dy:Landroid/widget/RelativeLayout;

.field private dz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "paramContext"

    .prologue
    const/high16 v10, 0x4248

    const/high16 v9, 0x41c8

    const/high16 v8, 0x4120

    const/4 v6, -0x2

    const/16 v7, 0xff

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/jy/func/v/b;->setOrientation(I)V

    .line 43
    const/16 v2, 0x16

    const/16 v3, 0xa0

    const/16 v4, 0x85

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jy/func/v/b;->setBackgroundColor(I)V

    .line 45
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, localRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    const/4 v2, -0x1

    .line 49
    invoke-static {p1, v10}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 47
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-direct {p0}, Lcom/jy/func/v/b;->cF()Landroid/widget/RelativeLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/v/b;->dy:Landroid/widget/RelativeLayout;

    .line 53
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u7085\u53cb\u8d5e\u52a9\u5899"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, p0, Lcom/jy/func/v/b;->dz:Landroid/widget/TextView;

    .line 54
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4316

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x111120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/jy/func/v/b;->dA:Landroid/widget/RelativeLayout;

    .line 56
    invoke-direct {p0}, Lcom/jy/func/v/b;->cF()Landroid/widget/RelativeLayout;

    .line 57
    iget-object v2, p0, Lcom/jy/func/v/b;->dy:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v2, p0, Lcom/jy/func/v/b;->dz:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v2, p0, Lcom/jy/func/v/b;->dA:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/jy/func/v/b;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method private cF()Landroid/widget/RelativeLayout;
    .locals 7

    .prologue
    const/high16 v6, 0x41c8

    .line 65
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, localRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4316

    .line 67
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 70
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4248

    .line 69
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 66
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const v2, 0x111116

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 74
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cyz_title_back.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 76
    return-object v1
.end method

.method private cG()Landroid/widget/RelativeLayout;
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v5, -0x2

    const/16 v6, 0xff

    .line 80
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, localRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4316

    .line 82
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4248

    .line 84
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 81
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const v2, 0x111120

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 91
    return-object v1
.end method

.method private cH()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/16 v4, 0xff

    .line 95
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a0

    .line 98
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 101
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4120

    .line 100
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 102
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const-string v2, "@"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/high16 v2, 0x41c8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    return-object v1
.end method

.method private cI()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/high16 v4, 0x41c8

    .line 112
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, localImageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 114
    invoke-static {v2, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 116
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 115
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 113
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4120

    .line 120
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cyz_title_back.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-object v0
.end method

.method private cJ()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/16 v4, 0xff

    .line 132
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4120

    .line 135
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const-string v2, "\u7085\u53cb\u8d5e\u52a9\u5899"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/high16 v2, 0x41c8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    return-object v1
.end method


# virtual methods
.method public final cC()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jy/func/v/b;->dy:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final cD()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jy/func/v/b;->dA:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final cE()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jy/func/v/b;->dz:Landroid/widget/TextView;

    return-object v0
.end method
