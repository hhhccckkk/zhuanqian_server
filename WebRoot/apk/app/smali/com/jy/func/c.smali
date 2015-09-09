.class public final Lcom/jy/func/c;
.super Landroid/support/v4/app/Fragment;
.source "CYZTabOneFrgment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jy/func/l/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/c$a;
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
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

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

.field private p:Ljava/lang/String;

.field private q:Landroid/content/pm/PackageManager;

.field private r:Lcom/jy/func/c$a;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/jy/func/c;->s:I

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jy/func/c;->setRetainInstance(Z)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/jy/func/c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jy/func/c;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/jy/func/c;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/jy/func/c;->s:I

    return v0
.end method

.method static synthetic c(Lcom/jy/func/c;)Lcom/jy/func/l/a;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jy/func/c;->o:Lcom/jy/func/l/a;

    return-object v0
.end method

.method static synthetic d(Lcom/jy/func/c;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/jy/func/c;)Lcom/jy/func/l/d;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    return-object v0
.end method

.method static synthetic f(Lcom/jy/func/c;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    return-void
.end method

.method static synthetic g(Lcom/jy/func/c;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/jy/func/c;->initData()V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 113
    new-instance v0, Lcom/jy/func/u/p;

    iget-object v1, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/jy/func/u/p;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, a:Lcom/jy/func/u/p;
    new-instance v1, Lcom/jy/func/u/d;

    invoke-direct {v1, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jy/func/u/b;

    .line 117
    invoke-interface {v1}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/jy/func/u/p;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v2

    .line 118
    new-instance v3, Lcom/jy/func/c$1;

    invoke-direct {v3, p0}, Lcom/jy/func/c$1;-><init>(Lcom/jy/func/c;)V

    .line 117
    invoke-static {v1, v2, v3}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    .line 138
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    .line 175
    return-void
.end method


# virtual methods
.method public final j()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jy/func/c;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jy/func/c$3;

    invoke-direct {v1, p0}, Lcom/jy/func/c$3;-><init>(Lcom/jy/func/c;)V

    .line 167
    const-wide/16 v2, 0x7d0

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 206
    new-instance v1, Lcom/jy/func/c$a;

    invoke-direct {v1, p0}, Lcom/jy/func/c$a;-><init>(Lcom/jy/func/c;)V

    iput-object v1, p0, Lcom/jy/func/c;->r:Lcom/jy/func/c$a;

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.jiongyou.app.action.TASKSUCCESSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/jy/func/c;->r:Lcom/jy/func/c$a;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 211
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v1, p0, Lcom/jy/func/c;->k:Landroid/view/View;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jy/func/c;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/jy/func/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    .line 85
    new-instance v1, Lcom/jy/func/l/d;

    iget-object v2, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/jy/func/l/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    .line 86
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jy/func/l/d;->setCacheColorHint(I)V

    .line 87
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jy/func/l/d;->b(Z)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jy/func/c;->n:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Lcom/jy/func/l/a;

    iget-object v2, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    .line 91
    iget-object v3, p0, Lcom/jy/func/c;->n:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/jy/func/l/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 90
    iput-object v1, p0, Lcom/jy/func/c;->o:Lcom/jy/func/l/a;

    .line 92
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    iget-object v2, p0, Lcom/jy/func/c;->o:Lcom/jy/func/l/a;

    invoke-virtual {v1, v2}, Lcom/jy/func/l/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    const/4 v1, -0x1

    .line 95
    const/4 v2, -0x2

    .line 93
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v0, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1, v0}, Lcom/jy/func/l/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1, p0}, Lcom/jy/func/l/d;->a(Lcom/jy/func/l/d$a;)V

    .line 98
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1, p0}, Lcom/jy/func/l/d;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    invoke-virtual {v1}, Lcom/jy/func/l/d;->aZ()V

    .line 101
    iget-object v1, p0, Lcom/jy/func/c;->l:Lcom/jy/func/l/d;

    iput-object v1, p0, Lcom/jy/func/c;->k:Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/jy/func/c;->initData()V

    .line 108
    .end local v0           #localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/jy/func/c;->k:Landroid/view/View;

    return-object v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/jy/func/c;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jy/func/c;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/jy/func/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/c;->r:Lcom/jy/func/c$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 257
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
    .line 181
    iput p3, p0, Lcom/jy/func/c;->s:I

    .line 182
    iget-object v3, p0, Lcom/jy/func/c;->n:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jy/func/c;->s:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/a;

    .line 183
    .local v2, model:Lcom/jy/func/a;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "ID"

    invoke-virtual {v2}, Lcom/jy/func/a;->a()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string v3, "SoftAPKname"

    invoke-virtual {v2}, Lcom/jy/func/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v3, "SoftName"

    invoke-virtual {v2}, Lcom/jy/func/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "SoftPackName"

    invoke-virtual {v2}, Lcom/jy/func/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "SoftSize"

    invoke-virtual {v2}, Lcom/jy/func/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v3, "SoftImg"

    invoke-virtual {v2}, Lcom/jy/func/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "SoftScore"

    invoke-virtual {v2}, Lcom/jy/func/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "PageNum"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lcom/jy/func/JYOfferDetail;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lcom/jy/func/c;->m:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public final onRefresh()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jy/func/c;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jy/func/c$2;

    invoke-direct {v1, p0}, Lcom/jy/func/c$2;-><init>(Lcom/jy/func/c;)V

    .line 148
    const-wide/16 v2, 0x7d0

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method
