.class public final Lcom/jy/func/v/g;
.super Landroid/widget/LinearLayout;
.source "TopBtn.java"


# instance fields
.field private dJ:Landroid/widget/LinearLayout;

.field private dK:Landroid/widget/LinearLayout;

.field private tvOne:Landroid/widget/TextView;

.field private tvTwo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, v7}, Lcom/jy/func/v/g;->setOrientation(I)V

    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/jy/func/v/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const-string v1, "#F5F5F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jy/func/v/g;->setBackgroundColor(I)V

    .line 50
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/jy/func/v/g;->a(Landroid/widget/LinearLayout;)V

    const v2, 0x111107

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const-string v2, "\u4efb\u52a1"

    invoke-direct {p0, v2}, Lcom/jy/func/v/g;->N(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/v/g;->tvOne:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jy/func/v/g;->tvOne:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-object v1, p0, Lcom/jy/func/v/g;->dJ:Landroid/widget/LinearLayout;

    .line 51
    iget-object v1, p0, Lcom/jy/func/v/g;->dJ:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/jy/func/v/g;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/jy/func/v/g;->a(Landroid/widget/LinearLayout;)V

    const v2, 0x111108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const-string v2, "\u7b7e\u5230"

    invoke-direct {p0, v2}, Lcom/jy/func/v/g;->N(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/v/g;->tvTwo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jy/func/v/g;->tvTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-object v1, p0, Lcom/jy/func/v/g;->dK:Landroid/widget/LinearLayout;

    .line 53
    iget-object v1, p0, Lcom/jy/func/v/g;->dK:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/jy/func/v/g;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method private I()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 57
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v2, -0x1

    .line 61
    const/4 v3, -0x2

    .line 59
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/jy/func/v/g;->a(Landroid/widget/LinearLayout;)V

    .line 67
    const v2, 0x111107

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    const-string v2, "\u4efb\u52a1"

    invoke-direct {p0, v2}, Lcom/jy/func/v/g;->N(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/v/g;->tvOne:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/jy/func/v/g;->tvOne:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 71
    return-object v1
.end method

.method private N(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5
    .parameter "str"

    .prologue
    .line 93
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, localTextView:Landroid/widget/TextView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    const/4 v3, -0x1

    .line 96
    const/4 v4, -0x2

    .line 94
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v0

    .line 101
    .local v0, i:I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    const-string v3, "#008000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    return-object v2
.end method

.method private S()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 75
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    const/4 v2, -0x1

    .line 79
    const/4 v3, -0x2

    .line 77
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/jy/func/v/g;->a(Landroid/widget/LinearLayout;)V

    .line 85
    const v2, 0x111108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 86
    const-string v2, "\u7b7e\u5230"

    invoke-direct {p0, v2}, Lcom/jy/func/v/g;->N(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/v/g;->tvTwo:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/jy/func/v/g;->tvTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 89
    return-object v1
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter "llbtn"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 111
    .local v2, stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "abc_ab_share_pack_holo_dark.9.png"

    .line 110
    invoke-static {v3, v4}, Lcom/jy/func/t/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    .line 113
    .local v0, normalDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jy/func/v/g;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "abc_cab_background_top_holo_light.9.png"

    .line 112
    invoke-static {v3, v4}, Lcom/jy/func/t/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    .line 115
    .local v1, pressedDrawable:Landroid/graphics/drawable/Drawable;
    new-array v3, v6, [I

    const v4, 0x101009e

    aput v4, v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 117
    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method


# virtual methods
.method public final cR()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jy/func/v/g;->dJ:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final cS()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jy/func/v/g;->dK:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final cT()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jy/func/v/g;->tvOne:Landroid/widget/TextView;

    return-object v0
.end method

.method public final cU()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jy/func/v/g;->tvTwo:Landroid/widget/TextView;

    return-object v0
.end method
