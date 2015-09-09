.class public Lcom/jy/func/JYOfferActivity;
.super Lcom/jy/func/g;
.source "JYOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private ConDialog:Lcom/jy/func/v/a;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

.field fragment_first:Lcom/jy/func/c;

.field fragment_three:Lcom/jy/func/d;

.field private ll_one:Landroid/widget/LinearLayout;

.field private ll_two:Landroid/widget/LinearLayout;

.field private tvOne:Landroid/widget/TextView;

.field private tvTwo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jy/func/g;-><init>()V

    return-void
.end method

.method private SignOutDlg()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/jy/func/v/a;

    const-string v1, "\u514d\u8d39\u4e0b\u8f7d\u5e94\u7528\u53ef\u4ee5\u83b7\u5f97\u5956\u52b1,\u9694\u5929\u7b7e\u5230\u8fd8\u53ef\u4ee5\u83b7\u5f97\u989d\u5916\u5956\u52b1~"

    .line 195
    new-instance v2, Lcom/jy/func/JYOfferActivity$1;

    invoke-direct {v2, p0}, Lcom/jy/func/JYOfferActivity$1;-><init>(Lcom/jy/func/JYOfferActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/jy/func/v/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/v/d;)V

    .line 194
    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->ConDialog:Lcom/jy/func/v/a;

    .line 219
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->ConDialog:Lcom/jy/func/v/a;

    const-string v1, "\u7ee7\u7eed\u4efb\u52a1"

    const-string v2, "\u9000\u51fa"

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/v/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->ConDialog:Lcom/jy/func/v/a;

    invoke-virtual {v0}, Lcom/jy/func/v/a;->show()V

    .line 221
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected initRecourse()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected bridge synthetic initView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jy/func/JYOfferActivity;->initView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected initView()Landroid/view/ViewGroup;
    .locals 10

    .prologue
    const v9, 0x111111

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 76
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, mLinearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v0, Lcom/jy/func/v/b;

    invoke-direct {v0, p0}, Lcom/jy/func/v/b;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, mHeadBannerView:Lcom/jy/func/v/b;
    invoke-virtual {v0}, Lcom/jy/func/v/b;->cC()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v0}, Lcom/jy/func/v/b;->cD()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v0}, Lcom/jy/func/v/b;->cE()Landroid/widget/TextView;

    move-result-object v4

    .line 87
    const-string v5, "JYTitle"

    const-string v6, "\u7085\u53cb\u8d5e\u52a9\u5899"

    invoke-static {p0, v5, v6}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 93
    const/high16 v5, 0x4234

    invoke-static {p0, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v5

    .line 92
    invoke-direct {v4, v7, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v3, Lcom/jy/func/v/g;

    invoke-direct {v3, p0}, Lcom/jy/func/v/g;-><init>(Landroid/content/Context;)V

    .line 97
    .local v3, topBtn:Lcom/jy/func/v/g;
    invoke-virtual {v3}, Lcom/jy/func/v/g;->cR()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->ll_one:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v3}, Lcom/jy/func/v/g;->cS()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->ll_two:Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v3}, Lcom/jy/func/v/g;->cT()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->tvOne:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v3}, Lcom/jy/func/v/g;->cU()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->tvTwo:Landroid/widget/TextView;

    .line 102
    iget-object v4, p0, Lcom/jy/func/JYOfferActivity;->ll_one:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v4, p0, Lcom/jy/func/JYOfferActivity;->ll_two:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, mLinearLayoutBottom:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v4, Lcom/jy/func/c;

    invoke-direct {v4}, Lcom/jy/func/c;-><init>()V

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->fragment_first:Lcom/jy/func/c;

    .line 117
    invoke-virtual {p0}, Lcom/jy/func/JYOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 118
    iget-object v4, p0, Lcom/jy/func/JYOfferActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 119
    iget-object v4, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 120
    iget-object v5, p0, Lcom/jy/func/JYOfferActivity;->fragment_first:Lcom/jy/func/c;

    const-string v6, "first_Fragment"

    .line 119
    invoke-virtual {v4, v9, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 121
    iget-object v4, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 124
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x111111

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, -0xdd74de

    const/high16 v1, -0x100

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 132
    :sswitch_0
    invoke-direct {p0}, Lcom/jy/func/JYOfferActivity;->SignOutDlg()V

    goto :goto_0

    .line 138
    :sswitch_1
    new-instance v0, Lcom/jy/func/v/f;

    invoke-direct {v0, p0}, Lcom/jy/func/v/f;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0}, Lcom/jy/func/v/f;->show()V

    goto :goto_0

    .line 143
    :sswitch_2
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->ll_one:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->ll_two:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->tvOne:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->tvTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragment_first:Lcom/jy/func/c;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/jy/func/c;

    invoke-direct {v0}, Lcom/jy/func/c;-><init>()V

    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragment_first:Lcom/jy/func/c;

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/jy/func/JYOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 152
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 153
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 154
    iget-object v1, p0, Lcom/jy/func/JYOfferActivity;->fragment_first:Lcom/jy/func/c;

    const-string v2, "first_Fragment"

    .line 153
    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 159
    :sswitch_3
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->ll_one:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->ll_two:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->tvOne:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->tvTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragment_three:Lcom/jy/func/d;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/jy/func/d;

    invoke-direct {v0}, Lcom/jy/func/d;-><init>()V

    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragment_three:Lcom/jy/func/d;

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/jy/func/JYOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 168
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 169
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 170
    iget-object v1, p0, Lcom/jy/func/JYOfferActivity;->fragment_three:Lcom/jy/func/d;

    const-string v2, "fragment_three"

    .line 169
    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 171
    iget-object v0, p0, Lcom/jy/func/JYOfferActivity;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x111107 -> :sswitch_2
        0x111108 -> :sswitch_3
        0x111116 -> :sswitch_0
        0x111120 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter

    .prologue
    .line 183
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/jy/func/JYOfferActivity;->SignOutDlg()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
