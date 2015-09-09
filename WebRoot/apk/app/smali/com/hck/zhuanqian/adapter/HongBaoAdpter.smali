.class public Lcom/hck/zhuanqian/adapter/HongBaoAdpter;
.super Landroid/widget/BaseAdapter;
.source "HongBaoAdpter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;,
        Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;
    }
.end annotation


# static fields
.field private static final IS_OPEN:I = 0x1


# instance fields
.field private callBack:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;

.field private context:Landroid/content/Context;

.field public hongbaos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/Hongbao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/Hongbao;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, hongbaos:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/Hongbao;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->context:Landroid/content/Context;

    .line 32
    check-cast p2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;

    .end local p2
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->callBack:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/adapter/HongBaoAdpter;)Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->callBack:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$CallBack;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "arg0"
    .parameter "contentView"
    .parameter "arg2"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, viewHolder:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 55
    const v4, 0x7f03001b

    .line 54
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;

    .end local v2           #viewHolder:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;-><init>(Lcom/hck/zhuanqian/adapter/HongBaoAdpter;)V

    .line 58
    .restart local v2       #viewHolder:Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;
    const v3, 0x7f060062

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    iput-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->contenTextView:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f060063

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    iput-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 61
    const v3, 0x7f060061

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    .line 62
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v4, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->contenTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/Hongbao;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/Hongbao;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/Hongbao;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/Hongbao;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, time:Ljava/lang/String;
    const/4 v3, 0x2

    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "\u6765\u81ea: "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/Hongbao;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/Hongbao;->getuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/Hongbao;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/Hongbao;->getIsOpen()I

    move-result v0

    .line 74
    .local v0, isOpen:I
    if-ne v0, v6, :cond_0

    .line 75
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    const-string v4, "\u5df2\u9886\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    iget-object v4, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 78
    const v5, 0x7f090005

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    :goto_1
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    new-instance v4, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$1;

    invoke-direct {v4, p0}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$1;-><init>(Lcom/hck/zhuanqian/adapter/HongBaoAdpter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object p2

    .line 81
    :cond_0
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    .line 82
    const v4, 0x7f020020

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 83
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    const-string v4, "\u62c6\u5f00"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    iget-object v4, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    const v5, 0x7f090001

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/HongBaoAdpter$ViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 68
    .end local v0           #isOpen:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public update(I)V
    .locals 2
    .parameter "post"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/bean/Hongbao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/bean/Hongbao;->setIsOpen(I)V

    .line 112
    invoke-virtual {p0}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/Hongbao;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, hongbaos:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/Hongbao;>;"
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->hongbaos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/hck/zhuanqian/adapter/HongBaoAdpter;->notifyDataSetChanged()V

    .line 109
    return-void
.end method
