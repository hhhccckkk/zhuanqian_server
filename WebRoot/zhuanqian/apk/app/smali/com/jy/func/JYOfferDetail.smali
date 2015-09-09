.class public Lcom/jy/func/JYOfferDetail;
.super Lcom/jy/func/g;
.source "JYOfferDetail.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jy/func/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected initRecourse()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method protected bridge synthetic initView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jy/func/JYOfferDetail;->initView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected initView()Landroid/view/ViewGroup;
    .locals 7

    .prologue
    const v6, 0x111119

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, mLinearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, mLinearLayoutBottom:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v2, Lcom/jy/func/e;

    invoke-direct {v2}, Lcom/jy/func/e;-><init>()V

    .line 52
    .local v2, taskDetailFrame:Lcom/jy/func/e;
    invoke-virtual {p0}, Lcom/jy/func/JYOfferDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/JYOfferDetail;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 53
    iget-object v3, p0, Lcom/jy/func/JYOfferDetail;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/JYOfferDetail;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 54
    iget-object v3, p0, Lcom/jy/func/JYOfferDetail;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 55
    const-string v4, "TaskDetailFrame"

    .line 54
    invoke-virtual {v3, v6, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    iget-object v3, p0, Lcom/jy/func/JYOfferDetail;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/jy/func/g;->onDestroy()V

    .line 63
    return-void
.end method
