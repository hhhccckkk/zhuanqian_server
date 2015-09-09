.class public Lcom/hck/zhuanqian/adapter/MessageAdpter;
.super Landroid/widget/BaseAdapter;
.source "MessageAdpter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/MessageBean;",
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
            "Lcom/hck/zhuanqian/bean/MessageBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, messageBeans:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/MessageBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

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
    const/4 v1, 0x0

    .line 43
    .local v1, holder:Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;
    if-nez p2, :cond_0

    .line 44
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v1, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;

    .end local v1           #holder:Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;
    invoke-direct {v1}, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;-><init>()V

    .line 46
    .restart local v1       #holder:Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;
    const v3, 0x7f06006a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;->contentTextView:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f06006b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;->timeTextView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/MessageBean;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/MessageBean;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, contentString:Ljava/lang/String;
    iget-object v3, v1, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;->contentTextView:Landroid/widget/TextView;

    const-string v4, "h"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/MessageBean;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/MessageBean;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, timeString:Ljava/lang/String;
    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v3, v1, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 51
    .end local v0           #contentString:Ljava/lang/String;
    .end local v2           #timeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;
    check-cast v1, Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;

    .restart local v1       #holder:Lcom/hck/zhuanqian/adapter/MessageAdpter$Holder;
    goto :goto_0
.end method

.method public updateMsg(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/hck/zhuanqian/adapter/MessageAdpter;->mBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lcom/hck/zhuanqian/adapter/MessageAdpter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method
