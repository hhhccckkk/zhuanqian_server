.class public final Lcom/jy/func/l/b;
.super Landroid/widget/LinearLayout;
.source "CYZ_ListFooterXML.java"


# instance fields
.field aO:Landroid/widget/RelativeLayout;

.field aP:Landroid/widget/ProgressBar;

.field aQ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "paramContext"

    .prologue
    const v10, 0x186a1

    const/16 v9, 0xd

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0, v8}, Lcom/jy/func/l/b;->setOrientation(I)V

    .line 36
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    .line 38
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    const/4 v1, -0x1

    .line 38
    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v1, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42c8

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4218

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "jiongyoupic.png"

    invoke-static {v3, v4}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setId(I)V

    iput-object v1, p0, Lcom/jy/func/l/b;->aQ:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jy/func/l/b;->aQ:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 49
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a0

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-object v1, p0, Lcom/jy/func/l/b;->aP:Landroid/widget/ProgressBar;

    .line 50
    iget-object v1, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jy/func/l/b;->aP:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/jy/func/l/b;->addView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method private aF()Landroid/widget/ImageView;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, localImageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c8

    .line 57
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 59
    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4218

    .line 58
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 56
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4120

    .line 63
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "jiongyoupic.png"

    invoke-static {v2, v3}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-object v0
.end method

.method private aG()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 74
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    const-string v2, "\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v2, 0x186a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 82
    return-object v1
.end method

.method private aH()Landroid/widget/ProgressBar;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 87
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, localProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    const v2, 0x186a1

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    invoke-virtual {p0}, Lcom/jy/func/l/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a0

    .line 93
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    return-object v1
.end method


# virtual methods
.method public final aC()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final aD()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jy/func/l/b;->aQ:Landroid/widget/TextView;

    return-object v0
.end method

.method public final aE()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jy/func/l/b;->aP:Landroid/widget/ProgressBar;

    return-object v0
.end method
