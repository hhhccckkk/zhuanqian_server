.class public Lcom/hck/zhuanqian/adapter/DHListAdpter;
.super Landroid/widget/BaseAdapter;
.source "DHListAdpter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private orderBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/OrderBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/OrderBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, beans:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/OrderBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->orderBeans:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->orderBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->orderBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    iget-object v2, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 43
    const v3, 0x7f03001d

    const/4 v4, 0x0

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, holder:Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;
    new-instance v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;

    .end local v1           #holder:Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;
    invoke-direct {v1}, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;-><init>()V

    .line 48
    .restart local v1       #holder:Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;
    const v2, 0x7f060067

    :try_start_0
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    iput-object v2, v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;->nameTextView:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f060068

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    iput-object v2, v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;->contentTextView:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f060069

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    iput-object v2, v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;->timeTextView:Landroid/widget/TextView;

    .line 53
    iget-object v3, v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;->nameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->orderBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hck/zhuanqian/bean/OrderBean;

    invoke-virtual {v2}, Lcom/hck/zhuanqian/bean/OrderBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->orderBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hck/zhuanqian/bean/OrderBean;

    invoke-virtual {v2}, Lcom/hck/zhuanqian/bean/OrderBean;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, content:Ljava/lang/String;
    iget-object v2, v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;->contentTextView:Landroid/widget/TextView;

    const-string v3, "h"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, v1, Lcom/hck/zhuanqian/adapter/DHListAdpter$Holder;->timeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hck/zhuanqian/adapter/DHListAdpter;->orderBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hck/zhuanqian/bean/OrderBean;

    invoke-virtual {v2}, Lcom/hck/zhuanqian/bean/OrderBean;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 57
    const/4 v4, 0x5

    const/16 v5, 0x10

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0           #content:Ljava/lang/String;
    :goto_0
    return-object p2

    .line 58
    :catch_0
    move-exception v2

    goto :goto_0
.end method
