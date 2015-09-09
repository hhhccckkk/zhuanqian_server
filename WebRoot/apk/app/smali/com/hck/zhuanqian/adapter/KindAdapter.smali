.class public Lcom/hck/zhuanqian/adapter/KindAdapter;
.super Landroid/widget/BaseAdapter;
.source "KindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private kindBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/KindBean;",
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
            "Lcom/hck/zhuanqian/bean/KindBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, kindBean:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/KindBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->kindBeans:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private setImage(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter "type"
    .parameter "imageView"

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    const v0, 0x7f020018

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :pswitch_2
    const v0, 0x7f020017

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :pswitch_3
    const v0, 0x7f020025

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :pswitch_4
    const v0, 0x7f020014

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :pswitch_5
    const v0, 0x7f020113

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :pswitch_6
    const v0, 0x7f02010f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :pswitch_7
    const v0, 0x7f02010d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :pswitch_8
    const v0, 0x7f02002b

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :pswitch_9
    const v0, 0x7f02006e

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :pswitch_a
    const v0, 0x7f020115

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :pswitch_b
    const v0, 0x7f020088

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->kindBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->kindBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "arg0"
    .parameter "content"
    .parameter "arg2"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, viewHolder:Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 45
    iget-object v1, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001c

    .line 46
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;

    .end local v0           #viewHolder:Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;-><init>()V

    .line 49
    .restart local v0       #viewHolder:Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;
    const v1, 0x7f060066

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;->kindConten:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f060065

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;->kindName:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f060064

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->kindBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hck/zhuanqian/bean/KindBean;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/KindBean;->getAid()I

    move-result v1

    iget-object v2, v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/hck/zhuanqian/adapter/KindAdapter;->setImage(ILandroid/widget/ImageView;)V

    .line 59
    iget-object v2, v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;->kindConten:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->kindBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hck/zhuanqian/bean/KindBean;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/KindBean;->getNeirong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;->kindName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hck/zhuanqian/adapter/KindAdapter;->kindBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hck/zhuanqian/bean/KindBean;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/KindBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object p2

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #viewHolder:Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;
    check-cast v0, Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;

    .restart local v0       #viewHolder:Lcom/hck/zhuanqian/adapter/KindAdapter$ViewHolder;
    goto :goto_0
.end method
