.class public Lcom/lostip/sdk/offerwalllibrary/other/bo;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/app/Activity;

.field private c:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, -0x2

    const/high16 v4, 0x3f00

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x2

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x3

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x10

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b:Landroid/app/Activity;

    const-string v3, "lostip_offerwall_progress_bar.png"

    invoke-static {v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b:Landroid/app/Activity;

    const/high16 v3, 0x4240

    invoke-static {v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/ah;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/bo;->a:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method
