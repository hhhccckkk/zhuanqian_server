.class public Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;
.super Landroid/widget/BaseAdapter;
.source "TuiGuangAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private tData:Lcom/hck/zhuanqian/data/TuiGuangData;


# direct methods
.method public constructor <init>(Lcom/hck/zhuanqian/data/TuiGuangData;Landroid/content/Context;)V
    .locals 0
    .parameter "data"
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    .line 20
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "arg0"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, viewHolder:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 42
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 43
    const v4, 0x7f03002b

    const/4 v5, 0x0

    .line 42
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;

    .end local v2           #viewHolder:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;-><init>()V

    .line 46
    .restart local v2       #viewHolder:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;
    const v3, 0x7f06008e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    iput-object v3, v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 48
    const v3, 0x7f06008d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    iput-object v3, v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f060027

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    iput-object v3, v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;->userNameTextView:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    const/4 v0, 0x0

    .line 56
    .local v0, bean:Lcom/hck/zhuanqian/bean/TuiGBean;
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bean:Lcom/hck/zhuanqian/bean/TuiGBean;
    check-cast v0, Lcom/hck/zhuanqian/bean/TuiGBean;

    .line 57
    .restart local v0       #bean:Lcom/hck/zhuanqian/bean/TuiGBean;
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;->contentTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8d26\u5355: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/TuiGBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/TuiGBean;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, timeString:Ljava/lang/String;
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;->userNameTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6765\u81ea:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/TuiGBean;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object p2

    .line 53
    .end local v0           #bean:Lcom/hck/zhuanqian/bean/TuiGBean;
    .end local v1           #timeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHolder:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;
    check-cast v2, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/hck/zhuanqian/adapter/TuiGuangAdapter$ViewHolder;
    goto :goto_0
.end method

.method public notifyDataSetChanged(Lcom/hck/zhuanqian/data/TuiGuangData;)V
    .locals 2
    .parameter "tData"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->tData:Lcom/hck/zhuanqian/data/TuiGuangData;

    invoke-virtual {p1}, Lcom/hck/zhuanqian/data/TuiGuangData;->getTuiGBeans()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/data/TuiGuangData;->setTuiGBeans(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/hck/zhuanqian/adapter/TuiGuangAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method
