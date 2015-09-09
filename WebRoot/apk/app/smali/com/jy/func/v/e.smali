.class public final Lcom/jy/func/v/e;
.super Landroid/widget/LinearLayout;
.source "CYZ_StateButton.java"


# instance fields
.field private dE:Landroid/widget/TextView;

.field private dF:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "paramContext"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x41a0

    const/16 v7, 0xe5

    const/16 v8, 0x72

    const/4 v6, -0x1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/jy/func/v/e;->setOrientation(I)V

    .line 22
    const/16 v5, 0x50

    invoke-virtual {p0, v5}, Lcom/jy/func/v/e;->setGravity(I)V

    .line 25
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    .local v4, localView:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v0, localLayoutParams1:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x14

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 29
    const/16 v5, 0x14

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 30
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p0, v4}, Lcom/jy/func/v/e;->addView(Landroid/view/View;)V

    .line 34
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v3, localLinearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    const/16 v5, 0x51

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jy/func/v/e;->dF:Landroid/widget/ImageView;

    .line 41
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    .line 43
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    .line 41
    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v1, localLayoutParams2:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4180

    .line 44
    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 46
    iget-object v5, p0, Lcom/jy/func/v/e;->dF:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v5, p0, Lcom/jy/func/v/e;->dF:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    iget-object v5, p0, Lcom/jy/func/v/e;->dF:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cyz_btn_download.png"

    invoke-static {v6, v7}, Lcom/jy/func/t/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    .line 52
    iget-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    iget-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4260

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    .line 54
    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v2, localLayoutParams3:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4080

    .line 56
    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 59
    invoke-virtual {p0}, Lcom/jy/func/v/e;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4100

    .line 58
    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 60
    iget-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    const-string v6, "\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v5, p0, Lcom/jy/func/v/e;->dF:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    iget-object v5, p0, Lcom/jy/func/v/e;->dE:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/jy/func/v/e;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method
