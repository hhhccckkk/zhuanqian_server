.class public final Lcom/jy/func/l/a;
.super Landroid/widget/BaseAdapter;
.source "CYZ_ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/l/a$a;
    }
.end annotation


# instance fields
.field private F:Lcom/jy/func/i/b;

.field private aH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jy/func/a;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jy/func/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/jy/func/a;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jy/func/l/a;->aH:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/jy/func/l/a;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/jy/func/l/a;->aH:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/jy/func/i/b;

    invoke-direct {v0, p1}, Lcom/jy/func/i/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jy/func/l/a;->F:Lcom/jy/func/i/b;

    .line 31
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jy/func/l/a;->aH:Ljava/util/List;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jy/func/l/a;->aH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 73
    new-instance v0, Lcom/jy/func/l/a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/jy/func/l/a$a;-><init>(Lcom/jy/func/l/a;B)V

    .line 74
    .local v0, holder:Lcom/jy/func/l/a$a;
    new-instance v1, Lcom/jy/func/l/c;

    iget-object v3, p0, Lcom/jy/func/l/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/jy/func/l/c;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, listItemView:Lcom/jy/func/l/c;
    invoke-virtual {v1}, Lcom/jy/func/l/c;->aI()Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, v0, Lcom/jy/func/l/a$a;->aI:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v1}, Lcom/jy/func/l/c;->aK()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/jy/func/l/a$a;->aJ:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v1}, Lcom/jy/func/l/c;->aL()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/jy/func/l/a$a;->aK:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v1}, Lcom/jy/func/l/c;->aM()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/jy/func/l/a$a;->aL:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v1}, Lcom/jy/func/l/c;->aN()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lcom/jy/func/l/a$a;->aM:Landroid/widget/TextView;

    .line 82
    invoke-virtual {v1, v0}, Lcom/jy/func/l/c;->setTag(Ljava/lang/Object;)V

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/jy/func/l/a;->aH:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/a;

    .line 91
    .local v2, model:Lcom/jy/func/a;
    iget-object v3, v0, Lcom/jy/func/l/a$a;->aJ:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, v0, Lcom/jy/func/l/a$a;->aK:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, v0, Lcom/jy/func/l/a$a;->aL:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jy/func/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, v0, Lcom/jy/func/l/a$a;->aM:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jy/func/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, v0, Lcom/jy/func/l/a$a;->aI:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/jy/func/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v3, p0, Lcom/jy/func/l/a;->F:Lcom/jy/func/i/b;

    invoke-virtual {v2}, Lcom/jy/func/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/jy/func/l/a$a;->aI:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 110
    return-object v1

    .end local v0           #holder:Lcom/jy/func/l/a$a;
    .end local v1           #listItemView:Lcom/jy/func/l/c;
    .end local v2           #model:Lcom/jy/func/a;
    :cond_0
    move-object v1, p2

    .line 86
    check-cast v1, Lcom/jy/func/l/c;

    .line 87
    .restart local v1       #listItemView:Lcom/jy/func/l/c;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jy/func/l/a$a;

    .restart local v0       #holder:Lcom/jy/func/l/a$a;
    goto :goto_0
.end method
