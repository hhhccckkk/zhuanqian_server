.class public final Lcom/jy/func/l/d;
.super Landroid/widget/ListView;
.source "CYZ_ListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/l/d$a;,
        Lcom/jy/func/l/d$b;
    }
.end annotation


# static fields
.field private static final bm:I = 0x0

.field private static final bn:I = 0x1

.field private static final bo:I = 0x190

.field private static final bp:I = 0x32

.field private static final bq:F = 1.8f


# instance fields
.field private aX:F

.field private aY:Landroid/widget/Scroller;

.field private aZ:Landroid/widget/AbsListView$OnScrollListener;

.field private ba:Lcom/jy/func/l/d$a;

.field private bb:Landroid/widget/RelativeLayout;

.field private bc:Landroid/widget/TextView;

.field private bd:I

.field private be:Z

.field private bf:Z

.field private bg:Lcom/jy/func/l/e;

.field private bh:Z

.field private bi:Z

.field private bj:Z

.field private bk:I

.field private bl:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jy/func/l/d;->aX:F

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/l/d;->be:Z

    .line 42
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bf:Z

    .line 48
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bj:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/jy/func/l/d;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jy/func/l/d;->aX:F

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/l/d;->be:Z

    .line 42
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bf:Z

    .line 48
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bj:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/jy/func/l/d;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jy/func/l/d;->aX:F

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/l/d;->be:Z

    .line 42
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bf:Z

    .line 48
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bj:Z

    .line 79
    invoke-direct {p0, p1}, Lcom/jy/func/l/d;->a(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method private a(F)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v1}, Lcom/jy/func/l/e;->bb()I

    move-result v1

    float-to-int v2, p1

    add-int v0, v1, v2

    .line 196
    .local v0, height:I
    iget-boolean v1, p0, Lcom/jy/func/l/d;->bh:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jy/func/l/d;->bi:Z

    if-nez v1, :cond_0

    .line 197
    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jy/func/l/e;->setState(I)V

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v1, v0}, Lcom/jy/func/l/e;->f(I)V

    .line 207
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jy/func/l/e;->setState(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/jy/func/l/d;->aY:Landroid/widget/Scroller;

    .line 86
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 95
    new-instance v0, Lcom/jy/func/l/e;

    invoke-direct {v0, p1}, Lcom/jy/func/l/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    .line 107
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/jy/func/l/d;->be:Z

    .line 126
    iget-boolean v0, p0, Lcom/jy/func/l/d;->be:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private aX()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method private aY()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0}, Lcom/jy/func/l/e;->bb()I

    move-result v2

    .line 211
    .local v2, bottomMargin:I
    if-lez v2, :cond_0

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/jy/func/l/d;->bl:I

    .line 213
    iget-object v0, p0, Lcom/jy/func/l/d;->aY:Landroid/widget/Scroller;

    neg-int v4, v2

    .line 214
    const/16 v5, 0x190

    move v3, v1

    .line 213
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 215
    invoke-virtual {p0}, Lcom/jy/func/l/d;->invalidate()V

    .line 217
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 2
    .parameter "iType"

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setState(I)V

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setState(I)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private s(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method


# virtual methods
.method public final a(Lcom/jy/func/l/d$a;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/jy/func/l/d;->ba:Lcom/jy/func/l/d$a;

    .line 314
    return-void
.end method

.method public final aV()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final aW()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-boolean v0, p0, Lcom/jy/func/l/d;->bi:Z

    if-eqz v0, :cond_0

    .line 171
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bi:Z

    .line 172
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setState(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public final aZ()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/l/d;->bi:Z

    .line 221
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setState(I)V

    .line 222
    iget-object v0, p0, Lcom/jy/func/l/d;->ba:Lcom/jy/func/l/d$a;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/jy/func/l/d;->ba:Lcom/jy/func/l/d$a;

    invoke-interface {v0}, Lcom/jy/func/l/d$a;->j()V

    .line 225
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/l/d;->bh:Z

    .line 140
    iget-boolean v0, p0, Lcom/jy/func/l/d;->bh:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0}, Lcom/jy/func/l/e;->hide()V

    .line 142
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-boolean v1, p0, Lcom/jy/func/l/d;->bi:Z

    .line 145
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0}, Lcom/jy/func/l/e;->show()V

    .line 146
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setState(I)V

    .line 148
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    new-instance v1, Lcom/jy/func/l/d$1;

    invoke-direct {v1, p0}, Lcom/jy/func/l/d$1;-><init>(Lcom/jy/func/l/d;)V

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final computeScroll()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jy/func/l/d;->aY:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget v0, p0, Lcom/jy/func/l/d;->bl:I

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    iget-object v1, p0, Lcom/jy/func/l/d;->aY:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jy/func/l/e;->f(I)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/jy/func/l/d;->postInvalidate()V

    .line 283
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 286
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 305
    iput p4, p0, Lcom/jy/func/l/d;->bk:I

    .line 306
    iget-object v0, p0, Lcom/jy/func/l/d;->aZ:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/jy/func/l/d;->aZ:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 310
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jy/func/l/d;->aZ:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/jy/func/l/d;->aZ:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 299
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x1

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 229
    iget v0, p0, Lcom/jy/func/l/d;->aX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jy/func/l/d;->aX:F

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    :pswitch_0
    iput v2, p0, Lcom/jy/func/l/d;->aX:F

    .line 261
    invoke-virtual {p0}, Lcom/jy/func/l/d;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/jy/func/l/d;->bk:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    .line 263
    iget-boolean v0, p0, Lcom/jy/func/l/d;->bh:Z

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0}, Lcom/jy/func/l/e;->bb()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/jy/func/l/d;->aZ()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0}, Lcom/jy/func/l/e;->bb()I

    move-result v2

    if-lez v2, :cond_2

    iput v3, p0, Lcom/jy/func/l/d;->bl:I

    iget-object v0, p0, Lcom/jy/func/l/d;->aY:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/jy/func/l/d;->invalidate()V

    .line 271
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 235
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jy/func/l/d;->aX:F

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/jy/func/l/d;->aX:F

    sub-float v6, v0, v2

    .line 239
    .local v6, deltaY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jy/func/l/d;->aX:F

    .line 252
    invoke-virtual {p0}, Lcom/jy/func/l/d;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/jy/func/l/d;->bk:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    .line 253
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v0}, Lcom/jy/func/l/e;->bb()I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2

    .line 255
    :cond_3
    neg-float v0, v6

    const v2, 0x3fe66666

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v2}, Lcom/jy/func/l/e;->bb()I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/jy/func/l/d;->bh:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/jy/func/l/d;->bi:Z

    if-nez v2, :cond_4

    if-le v0, v4, :cond_5

    iget-object v1, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v1, v3}, Lcom/jy/func/l/e;->setState(I)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v1, v0}, Lcom/jy/func/l/e;->f(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {v2, v1}, Lcom/jy/func/l/e;->setState(I)V

    goto :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/jy/func/l/d;->bj:Z

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jy/func/l/d;->bj:Z

    .line 114
    iget-object v0, p0, Lcom/jy/func/l/d;->bg:Lcom/jy/func/l/e;

    invoke-virtual {p0, v0}, Lcom/jy/func/l/d;->addFooterView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/jy/func/l/d;->aZ:Landroid/widget/AbsListView$OnScrollListener;

    .line 291
    return-void
.end method
