.class public final Lcom/jy/func/d;
.super Landroid/support/v4/app/Fragment;
.source "CYZTabTwoFrgment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jy/func/l/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/jy/func/l/d$a;"
    }
.end annotation


# instance fields
.field private k:Landroid/view/View;

.field private l:Lcom/jy/func/l/d;

.field private m:Landroid/support/v4/app/FragmentActivity;

.field private mHandler:Landroid/os/Handler;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jy/func/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/jy/func/l/a;

.field private s:I

.field private u:Lcom/jy/func/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/jy/func/d;->s:I

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jy/func/d;->setRetainInstance(Z)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/jy/func/d;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jy/func/d;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/jy/func/d;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jy/func/d;->s:I

    return v0
.end method

.method static synthetic c(Lcom/jy/func/d;)Lcom/jy/func/l/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jy/func/d;->o:Lcom/jy/func/l/a;

    return-object v0
.end method

.method static synthetic d(Lcom/jy/func/d;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/jy/func/d;)Lcom/jy/func/l/d;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    return-object v0
.end method

.method static synthetic f(Lcom/jy/func/d;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    iget-object v0, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    return-void
.end method

.method static synthetic g(Lcom/jy/func/d;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jy/func/d;->initData()V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 91
    new-instance v0, Lcom/jy/func/u/p;

    iget-object v1, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/jy/func/u/p;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, a:Lcom/jy/func/u/p;
    new-instance v1, Lcom/jy/func/u/d;

    invoke-direct {v1, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v1}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jy/func/u/b;

    .line 95
    invoke-interface {v1}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/jy/func/u/p;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/jy/func/d$1;

    invoke-direct {v3, p0}, Lcom/jy/func/d$1;-><init>(Lcom/jy/func/d;)V

    .line 95
    invoke-static {v1, v2, v3}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    .line 114
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    .line 148
    iget-object v0, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    .line 150
    return-void
.end method


# virtual methods
.method public final j()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jy/func/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jy/func/d$3;

    invoke-direct {v1, p0}, Lcom/jy/func/d$3;-><init>(Lcom/jy/func/d;)V

    .line 143
    const-wide/16 v2, 0x7d0

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 177
    new-instance v1, Lcom/jy/func/d$a;

    invoke-direct {v1, p0}, Lcom/jy/func/d$a;-><init>(Lcom/jy/func/d;)V

    iput-object v1, p0, Lcom/jy/func/d;->u:Lcom/jy/func/d$a;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.jiongyou.app.action.QIANDAOSUCCESSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/jy/func/d;->u:Lcom/jy/func/d$a;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 182
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v1, p0, Lcom/jy/func/d;->k:Landroid/view/View;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jy/func/d;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0}, Lcom/jy/func/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    .line 67
    new-instance v1, Lcom/jy/func/l/d;

    iget-object v2, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/jy/func/l/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    .line 68
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jy/func/l/d;->setCacheColorHint(I)V

    .line 69
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jy/func/l/d;->b(Z)V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jy/func/d;->n:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Lcom/jy/func/l/a;

    iget-object v2, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    .line 72
    iget-object v3, p0, Lcom/jy/func/d;->n:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/jy/func/l/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 71
    iput-object v1, p0, Lcom/jy/func/d;->o:Lcom/jy/func/l/a;

    .line 73
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    iget-object v2, p0, Lcom/jy/func/d;->o:Lcom/jy/func/l/a;

    invoke-virtual {v1, v2}, Lcom/jy/func/l/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    const/4 v1, -0x1

    .line 76
    const/4 v2, -0x2

    .line 74
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1, v0}, Lcom/jy/func/l/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1, p0}, Lcom/jy/func/l/d;->a(Lcom/jy/func/l/d$a;)V

    .line 79
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1, p0}, Lcom/jy/func/l/d;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/jy/func/d;->l:Lcom/jy/func/l/d;

    iput-object v1, p0, Lcom/jy/func/d;->k:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/jy/func/d;->initData()V

    .line 86
    .end local v0           #localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/jy/func/d;->k:Landroid/view/View;

    return-object v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/jy/func/d;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jy/func/d;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/jy/func/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/d;->u:Lcom/jy/func/d$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 228
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    iput p3, p0, Lcom/jy/func/d;->s:I

    .line 159
    iget-object v3, p0, Lcom/jy/func/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/a;

    .line 160
    .local v2, model:Lcom/jy/func/a;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "ID"

    invoke-virtual {v2}, Lcom/jy/func/a;->a()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v3, "SoftAPKname"

    invoke-virtual {v2}, Lcom/jy/func/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "SoftName"

    invoke-virtual {v2}, Lcom/jy/func/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "SoftPackName"

    invoke-virtual {v2}, Lcom/jy/func/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "SoftSize"

    invoke-virtual {v2}, Lcom/jy/func/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "SoftImg"

    invoke-virtual {v2}, Lcom/jy/func/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "SoftScore"

    invoke-virtual {v2}, Lcom/jy/func/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "PageNum"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lcom/jy/func/JYOfferDetail;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    iget-object v3, p0, Lcom/jy/func/d;->m:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public final onRefresh()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jy/func/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jy/func/d$2;

    invoke-direct {v1, p0}, Lcom/jy/func/d$2;-><init>(Lcom/jy/func/d;)V

    .line 124
    const-wide/16 v2, 0x7d0

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method
