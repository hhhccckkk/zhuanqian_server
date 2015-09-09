.class public final Lcom/jy/func/l/e;
.super Landroid/widget/LinearLayout;
.source "CYZ_ListViewFooter.java"


# static fields
.field private static bs:I = 0x0

.field private static bt:I = 0x1

.field private static bu:I = 0x2

.field private static bv:I = 0x3

.field private static bw:I = 0x4


# instance fields
.field private bx:Landroid/view/View;

.field private by:Landroid/view/View;

.field private bz:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/jy/func/l/e;->b(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/jy/func/l/e;->b(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 118
    new-instance v0, Lcom/jy/func/l/b;

    invoke-direct {v0, p1}, Lcom/jy/func/l/b;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, listFooterXML:Lcom/jy/func/l/b;
    invoke-virtual {p0, v0}, Lcom/jy/func/l/e;->addView(Landroid/view/View;)V

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/jy/func/l/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, v0, Lcom/jy/func/l/b;->aO:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    .line 125
    iget-object v1, v0, Lcom/jy/func/l/b;->aP:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/jy/func/l/e;->by:Landroid/view/View;

    .line 126
    iget-object v1, v0, Lcom/jy/func/l/b;->aQ:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    .line 127
    return-void
.end method

.method private bc()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/jy/func/l/e;->by:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method

.method private bd()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/jy/func/l/e;->by:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method


# virtual methods
.method public final bb()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public final f(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 71
    if-gez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 74
    iget-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final hide()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 105
    iget-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method public final setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/jy/func/l/e;->by:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 64
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const-string v1, "\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u8f7d\u5165\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/jy/func/l/e;->by:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const-string v1, "\u73a9\u547d\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const-string v1, "\u4f60\u771f\u5389\u5bb3\uff0c\u8f6f\u4ef6\u88ab\u4f60\u4e0b\u8f7d\u5b8c\u4e86\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/jy/func/l/e;->bz:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u53ef\u7b7e\u5230\u7684\u5e94\u7528\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 114
    iget-object v1, p0, Lcom/jy/func/l/e;->bx:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method
