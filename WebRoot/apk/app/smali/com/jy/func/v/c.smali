.class public final Lcom/jy/func/v/c;
.super Landroid/widget/RelativeLayout;
.source "CYZ_DialogView.java"


# instance fields
.field private dB:Landroid/widget/TextView;

.field private dC:Landroid/widget/Button;

.field private dD:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "paramContext"

    .prologue
    const/high16 v6, 0x41a0

    const/high16 v9, 0x4180

    const/4 v5, -0x2

    const/high16 v8, 0x3f80

    const/4 v7, -0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4396

    .line 40
    invoke-static {v1, v2}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v1

    .line 41
    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/jy/func/v/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jy/func/v/c;->setBackgroundColor(I)V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4170

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4170

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x15b38

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    const-string v2, "\u786e\u8ba4\u9000\u51fa?"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v1, p0, Lcom/jy/func/v/c;->dB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jy/func/v/c;->dB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    const v4, 0x15b38

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "#ffcecece"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x1869f

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40e0

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x3

    const v4, 0x1869f

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4248

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextSize(F)V

    const-string v3, "#7f7f7f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x111117

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iput-object v2, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    iget-object v2, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#ffcecece"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4248

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextSize(F)V

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v3, "#7f7f7f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x111118

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iput-object v2, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    iget-object v2, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/jy/func/v/c;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method private D()Landroid/widget/RelativeLayout;
    .locals 11

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x41a0

    const/high16 v10, 0x4180

    const/high16 v9, 0x3f80

    const/4 v8, -0x1

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, localRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    invoke-static {v2, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4170

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x4170

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x15b38

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    const-string v3, "\u786e\u8ba4\u9000\u51fa?"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v2, p0, Lcom/jy/func/v/c;->dB:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/jy/func/v/c;->dB:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    const v5, 0x15b38

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#ffcecece"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x1869f

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40e0

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x3

    const v5, 0x1869f

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4248

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    const-string v4, "#7f7f7f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x111117

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    iput-object v3, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffcecece"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4248

    invoke-static {v6, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextSize(F)V

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v4, "#7f7f7f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x111118

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    iput-object v3, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 60
    return-object v1
.end method

.method private I()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x4248

    const/high16 v8, 0x4180

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, localLinearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    const/4 v2, -0x2

    .line 100
    invoke-direct {v0, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40e0

    .line 104
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 107
    const/4 v2, 0x3

    const v3, 0x1869f

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextSize(F)V

    const-string v3, "#7f7f7f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x111117

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iput-object v2, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    .line 112
    iget-object v2, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#ffcecece"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextSize(F)V

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v3, "#7f7f7f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x111118

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iput-object v2, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    return-object v1
.end method

.method private J()Landroid/widget/TextView;
    .locals 6

    .prologue
    const/high16 v5, 0x41a0

    const/high16 v4, 0x4170

    .line 65
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, localTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    const/4 v2, -0x1

    .line 68
    const/4 v3, -0x2

    .line 66
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    invoke-static {v2, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 72
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    invoke-static {v2, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 74
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 73
    invoke-static {v2, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 76
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    invoke-static {v2, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const v2, 0x15b38

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 80
    const-string v2, "\u786e\u8ba4\u9000\u51fa?"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    return-object v1
.end method

.method private cN()Landroid/view/View;
    .locals 5

    .prologue
    .line 86
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, localTextView:Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    const/4 v2, -0x1

    .line 90
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f80

    .line 89
    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 87
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    const v3, 0x15b38

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const-string v2, "#ffcecece"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    const v2, 0x1869f

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 96
    return-object v1
.end method

.method private cO()Landroid/widget/Button;
    .locals 5

    .prologue
    .line 121
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, localButton:Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 124
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4248

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 122
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v1, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 130
    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 131
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/high16 v2, 0x4180

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 133
    const-string v2, "#7f7f7f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 134
    const v2, 0x111117

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 136
    return-object v0
.end method

.method private cP()Landroid/widget/Button;
    .locals 5

    .prologue
    .line 139
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, localButton:Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 142
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4248

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 140
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v1, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 148
    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const/high16 v2, 0x4180

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 150
    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 151
    const-string v2, "#7f7f7f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 152
    const v2, 0x111118

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 154
    return-object v0
.end method

.method private cQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 157
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, localTextView:Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    invoke-virtual {p0}, Lcom/jy/func/v/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f80

    .line 159
    invoke-static {v2, v3}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 160
    const/4 v3, -0x1

    .line 158
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v0, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const-string v2, "#ffcecece"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    return-object v1
.end method


# virtual methods
.method public final cK()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jy/func/v/c;->dB:Landroid/widget/TextView;

    return-object v0
.end method

.method public final cL()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jy/func/v/c;->dC:Landroid/widget/Button;

    return-object v0
.end method

.method public final cM()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jy/func/v/c;->dD:Landroid/widget/Button;

    return-object v0
.end method
