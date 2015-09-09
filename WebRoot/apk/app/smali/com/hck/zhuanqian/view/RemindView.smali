.class public Lcom/hck/zhuanqian/view/RemindView;
.super Landroid/widget/TextView;
.source "RemindView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_BADGE_COLOR:I = 0x0

.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x5

.field private static final DEFAULT_MARGIN_DIP:I = 0x5

.field private static final DEFAULT_POSITION:I = 0x2

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_CENTER:I = 0x5

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2

.field private static fadeIn:Landroid/view/animation/Animation;

.field private static fadeOut:Landroid/view/animation/Animation;


# instance fields
.field private badgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private badgeColor:I

.field private badgeMarginH:I

.field private badgeMarginV:I

.field private badgePosition:I

.field private context:Landroid/content/Context;

.field private isShown:Z

.field private target:Landroid/view/View;

.field private targetTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "#CCFF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 44
    sput v0, Lcom/hck/zhuanqian/view/RemindView;->DEFAULT_BADGE_COLOR:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcom/hck/zhuanqian/view/RemindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/hck/zhuanqian/view/RemindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/hck/zhuanqian/view/RemindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "target"
    .parameter "tabIndex"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-direct {p0, p1, p4, p5}, Lcom/hck/zhuanqian/view/RemindView;->init(Landroid/content/Context;Landroid/view/View;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "target"

    .prologue
    .line 85
    const/4 v2, 0x0

    const v3, 0x1010084

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/hck/zhuanqian/view/RemindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 6
    .parameter "context"
    .parameter "target"
    .parameter "index"

    .prologue
    .line 102
    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hck/zhuanqian/view/RemindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 103
    return-void
.end method

.method private applyLayoutParams()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 355
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 358
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgePosition:I

    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/RemindView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void

    .line 360
    :pswitch_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 361
    iget v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    iget v2, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 364
    :pswitch_1
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 365
    iget v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    iget v2, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 368
    :pswitch_2
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    iget v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    iget v2, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 372
    :pswitch_3
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    iget v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    iget v2, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 376
    :pswitch_4
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 377
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private applyTo(Landroid/view/View;)V
    .locals 10
    .parameter "target"

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 153
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 154
    .local v4, parent:Landroid/view/ViewParent;
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/hck/zhuanqian/view/RemindView;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, container:Landroid/widget/FrameLayout;
    instance-of v5, p1, Landroid/widget/TabWidget;

    if-eqz v5, :cond_0

    .line 161
    const-string v5, "hck"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "target>>>>>> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 163
    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 162
    invoke-virtual {p1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {p0, v9}, Lcom/hck/zhuanqian/view/RemindView;->setVisibility(I)V

    .line 166
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    :goto_0
    return-void

    .restart local p1
    :cond_0
    move-object v1, v4

    .line 170
    check-cast v1, Landroid/view/ViewGroup;

    .line 171
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 173
    .local v2, index:I
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p0, v9}, Lcom/hck/zhuanqian/view/RemindView;->setVisibility(I)V

    .line 179
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method private dipToPixels(I)I
    .locals 5
    .parameter "dip"

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/hck/zhuanqian/view/RemindView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 492
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    int-to-float v3, p1

    .line 493
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 492
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 494
    .local v0, px:F
    float-to-int v2, v0

    return v2
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 342
    invoke-direct {p0, v4}, Lcom/hck/zhuanqian/view/RemindView;->dipToPixels(I)I

    move-result v2

    .line 343
    .local v2, r:I
    new-array v1, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v1, v4

    .line 345
    .local v1, outerR:[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 346
    .local v3, rr:Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 347
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    return-object v0
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1
    .parameter "animate"
    .parameter "anim"

    .prologue
    .line 290
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/RemindView;->setVisibility(I)V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0, p2}, Lcom/hck/zhuanqian/view/RemindView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hck/zhuanqian/view/RemindView;->isShown:Z

    .line 295
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8
    .parameter "context"
    .parameter "target"
    .parameter "tabIndex"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x5

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    iput-object p1, p0, Lcom/hck/zhuanqian/view/RemindView;->context:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/hck/zhuanqian/view/RemindView;->target:Landroid/view/View;

    .line 119
    iput p3, p0, Lcom/hck/zhuanqian/view/RemindView;->targetTabIndex:I

    .line 122
    const/4 v1, 0x2

    iput v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgePosition:I

    .line 123
    invoke-direct {p0, v2}, Lcom/hck/zhuanqian/view/RemindView;->dipToPixels(I)I

    move-result v1

    iput v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    .line 124
    iget v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    iput v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    .line 125
    sget v1, Lcom/hck/zhuanqian/view/RemindView;->DEFAULT_BADGE_COLOR:I

    iput v1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeColor:I

    .line 127
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/view/RemindView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    invoke-direct {p0, v2}, Lcom/hck/zhuanqian/view/RemindView;->dipToPixels(I)I

    move-result v0

    .line 129
    .local v0, paddingPixels:I
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/hck/zhuanqian/view/RemindView;->setPadding(IIII)V

    .line 130
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/view/RemindView;->setTextColor(I)V

    .line 132
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeIn:Landroid/view/animation/Animation;

    .line 133
    sget-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 134
    sget-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeOut:Landroid/view/animation/Animation;

    .line 137
    sget-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    sget-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    iput-boolean v3, p0, Lcom/hck/zhuanqian/view/RemindView;->isShown:Z

    .line 142
    iget-object v1, p0, Lcom/hck/zhuanqian/view/RemindView;->target:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/hck/zhuanqian/view/RemindView;->target:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/hck/zhuanqian/view/RemindView;->applyTo(Landroid/view/View;)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/hck/zhuanqian/view/RemindView;->show()V

    goto :goto_0
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1
    .parameter "animate"
    .parameter "anim"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/hck/zhuanqian/view/RemindView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/hck/zhuanqian/view/RemindView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/RemindView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/hck/zhuanqian/view/RemindView;->applyLayoutParams()V

    .line 282
    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p0, p2}, Lcom/hck/zhuanqian/view/RemindView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/RemindView;->setVisibility(I)V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hck/zhuanqian/view/RemindView;->isShown:Z

    .line 287
    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animate"
    .parameter "animIn"
    .parameter "animOut"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    iget-boolean v2, p0, Lcom/hck/zhuanqian/view/RemindView;->isShown:Z

    if-eqz v2, :cond_1

    .line 299
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/hck/zhuanqian/view/RemindView;->hide(ZLandroid/view/animation/Animation;)V

    .line 303
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 299
    goto :goto_0

    .line 301
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/hck/zhuanqian/view/RemindView;->show(ZLandroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public decrement(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 337
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/RemindView;->increment(I)I

    move-result v0

    return v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeColor:I

    return v0
.end method

.method public getBadgePosition()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgePosition:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/hck/zhuanqian/view/RemindView;->target:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hck/zhuanqian/view/RemindView;->hide(ZLandroid/view/animation/Animation;)V

    .line 221
    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/hck/zhuanqian/view/RemindView;->hide(ZLandroid/view/animation/Animation;)V

    .line 241
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 230
    sget-object v0, Lcom/hck/zhuanqian/view/RemindView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->hide(ZLandroid/view/animation/Animation;)V

    .line 231
    return-void
.end method

.method public increment(I)I
    .locals 4
    .parameter "offset"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/hck/zhuanqian/view/RemindView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 315
    .local v2, txt:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 317
    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    .local v1, i:I
    :goto_0
    add-int/2addr v1, p1

    .line 325
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hck/zhuanqian/view/RemindView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return v1

    .line 318
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 321
    .restart local v1       #i:I
    goto :goto_0

    .line 322
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/hck/zhuanqian/view/RemindView;->isShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1
    .parameter "badgeColor"

    .prologue
    .line 486
    iput p1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeColor:I

    .line 487
    invoke-direct {p0}, Lcom/hck/zhuanqian/view/RemindView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 488
    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0
    .parameter "badgeMargin"

    .prologue
    .line 453
    iput p1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    .line 454
    iput p1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    .line 455
    return-void
.end method

.method public setBadgeMargin(II)V
    .locals 0
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 467
    iput p1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginH:I

    .line 468
    iput p2, p0, Lcom/hck/zhuanqian/view/RemindView;->badgeMarginV:I

    .line 469
    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0
    .parameter "layoutPosition"

    .prologue
    .line 424
    iput p1, p0, Lcom/hck/zhuanqian/view/RemindView;->badgePosition:I

    .line 425
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hck/zhuanqian/view/RemindView;->show(ZLandroid/view/animation/Animation;)V

    .line 193
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/hck/zhuanqian/view/RemindView;->show(ZLandroid/view/animation/Animation;)V

    .line 213
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 202
    sget-object v0, Lcom/hck/zhuanqian/view/RemindView;->fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->show(ZLandroid/view/animation/Animation;)V

    .line 203
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/hck/zhuanqian/view/RemindView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 249
    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animIn"
    .parameter "animOut"

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/hck/zhuanqian/view/RemindView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 271
    return-void
.end method

.method public toggle(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 258
    sget-object v0, Lcom/hck/zhuanqian/view/RemindView;->fadeIn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/hck/zhuanqian/view/RemindView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lcom/hck/zhuanqian/view/RemindView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 259
    return-void
.end method
