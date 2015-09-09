.class public Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZhuanQianJiLuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;


# direct methods
.method public constructor <init>(Lcom/hck/zhuanqian/data/ZhuanQianJiLu;Landroid/content/Context;)V
    .locals 0
    .parameter "zhuanQianJiLu"
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    .line 22
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "arg0"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, viewHolder:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 44
    iget-object v5, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 45
    const v6, 0x7f03002c

    const/4 v7, 0x0

    .line 44
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;

    .end local v4           #viewHolder:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;
    invoke-direct {v4}, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;-><init>()V

    .line 48
    .restart local v4       #viewHolder:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;
    const v5, 0x7f060090

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    iput-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 50
    const v5, 0x7f060091

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    iput-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 51
    const v5, 0x7f06008f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    const/4 v1, 0x0

    .line 57
    .local v1, bean:Lcom/hck/zhuanqian/bean/OrderBean;
    iget-object v5, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {v5}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bean:Lcom/hck/zhuanqian/bean/OrderBean;
    check-cast v1, Lcom/hck/zhuanqian/bean/OrderBean;

    .line 58
    .restart local v1       #bean:Lcom/hck/zhuanqian/bean/OrderBean;
    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/OrderBean;->isChuLi()Z

    move-result v2

    .line 59
    .local v2, state:Z
    const/4 v0, 0x0

    .line 60
    .local v0, addString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 61
    const-string v0, " \u5df2\u5904\u7406"

    .line 62
    iget-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    :goto_1
    iget-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/OrderBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/OrderBean;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, timeString:Ljava/lang/String;
    iget-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/16 v7, 0xb

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object p2

    .line 54
    .end local v0           #addString:Ljava/lang/String;
    .end local v1           #bean:Lcom/hck/zhuanqian/bean/OrderBean;
    .end local v2           #state:Z
    .end local v3           #timeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #viewHolder:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;
    check-cast v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;

    .restart local v4       #viewHolder:Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;
    goto :goto_0

    .line 66
    .restart local v0       #addString:Ljava/lang/String;
    .restart local v1       #bean:Lcom/hck/zhuanqian/bean/OrderBean;
    .restart local v2       #state:Z
    :cond_1
    const-string v0, " \u5904\u7406\u4e2d"

    .line 67
    iget-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, v4, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public notifyDataSetChanged(Lcom/hck/zhuanqian/data/ZhuanQianJiLu;)V
    .locals 2
    .parameter "zhuanQianJiLu"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-virtual {p1}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->setOrderBeans(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Lcom/hck/zhuanqian/adapter/ZhuanQianJiLuAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
