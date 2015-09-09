.class public Lcom/hck/zhuanqian/view/TitleBar;
.super Landroid/widget/LinearLayout;
.source "TitleBar.java"


# instance fields
.field private mCenterTextV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLeftBackBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/hck/zhuanqian/view/TitleBar;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/view/TitleBar;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/hck/zhuanqian/view/TitleBar;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/view/TitleBar;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/view/TitleBar;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hck/zhuanqian/view/TitleBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/TitleBar;->mLeftBackBtn:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/TitleBar;->mCenterTextV:Landroid/widget/TextView;

    .line 44
    invoke-direct {p0}, Lcom/hck/zhuanqian/view/TitleBar;->setListener()V

    .line 45
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hck/zhuanqian/view/TitleBar;->mLeftBackBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/hck/zhuanqian/view/TitleBar$1;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/view/TitleBar$1;-><init>(Lcom/hck/zhuanqian/view/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public setTitleContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hck/zhuanqian/view/TitleBar;->mCenterTextV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
