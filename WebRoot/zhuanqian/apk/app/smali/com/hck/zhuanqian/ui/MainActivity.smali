.class public Lcom/hck/zhuanqian/ui/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private badge1:Lcom/hck/zhuanqian/view/RemindView;

.field private hongBaoSize:Landroid/widget/TextView;

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mAllMoneyBtn:Landroid/widget/Button;

.field private mAllTgUserBtn:Landroid/widget/Button;

.field private mTGSize:Landroid/widget/TextView;

.field private mUserIdTV:Landroid/widget/TextView;

.field private mUserJinbiTv:Landroid/widget/TextView;

.field private mUserNameTv:Landroid/widget/TextView;

.field private msgTishiLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/MainActivity;->remindMsg(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/ui/MainActivity;->remindHB(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->updateUser()V

    return-void
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->initUserData()V

    return-void
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method private getHongBaoAndMsgSize()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/hck/zhuanqian/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/MainActivity$1;-><init>(Lcom/hck/zhuanqian/ui/MainActivity;)V

    invoke-static {v0}, Lcom/hck/zhuanqian/net/Request;->getSize(Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 127
    return-void
.end method

.method private initUserData()V
    .locals 7

    .prologue
    .line 175
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    .line 176
    .local v0, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 177
    .local v1, userId:J
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mUserIdTV:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mUserJinbiTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6211\u7684\u91d1\u5e01:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getAllKeDouBi()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e2a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mAllMoneyBtn:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e00\u5171\u8d5a\u94b1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getAllMoney()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mAllTgUserBtn:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u63a8\u5e7f\u8d5a\u94b1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getTGMoney()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mUserNameTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mTGSize:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u63a8\u5e7f\u7528\u6237:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getTg()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e2a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 140
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 141
    const v0, 0x7f060024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mUserIdTV:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f060026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mUserJinbiTv:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f060028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mAllMoneyBtn:Landroid/widget/Button;

    .line 144
    const v0, 0x7f060029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mAllTgUserBtn:Landroid/widget/Button;

    .line 145
    const v0, 0x7f060025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mUserNameTv:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f060027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mTGSize:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mAllMoneyBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->mAllTgUserBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f06002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f06002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f06002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f06002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f060032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f060030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f060035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f060037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 159
    const v0, 0x7f060034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->hongBaoSize:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f06002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->msgTishiLayout:Landroid/widget/LinearLayout;

    .line 162
    return-void
.end method

.method private remind(Lcom/hck/zhuanqian/view/RemindView;I)V
    .locals 2
    .parameter "remindView"
    .parameter "size"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->setBadgePosition(I)V

    .line 78
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->setTextColor(I)V

    .line 79
    const/high16 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->setBadgeBackgroundColor(I)V

    .line 80
    const/high16 v0, 0x4140

    invoke-virtual {p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->setTextSize(F)V

    .line 81
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/hck/zhuanqian/view/RemindView;->setBadgeMargin(I)V

    .line 82
    invoke-virtual {p1}, Lcom/hck/zhuanqian/view/RemindView;->show()V

    .line 83
    return-void
.end method

.method private remindHB(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 86
    new-instance v0, Lcom/hck/zhuanqian/view/RemindView;

    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MainActivity;->hongBaoSize:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Lcom/hck/zhuanqian/view/RemindView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->badge1:Lcom/hck/zhuanqian/view/RemindView;

    .line 87
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->badge1:Lcom/hck/zhuanqian/view/RemindView;

    invoke-direct {p0, v0, p1}, Lcom/hck/zhuanqian/ui/MainActivity;->remind(Lcom/hck/zhuanqian/view/RemindView;I)V

    .line 88
    return-void
.end method

.method private remindMsg(I)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->msgTishiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/hck/zhuanqian/ui/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/MainActivity$2;-><init>(Lcom/hck/zhuanqian/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 172
    return-void
.end method

.method private setStartLabel()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MainActivity;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    .line 134
    .local v0, startLabel:Lcom/handmark/pulltorefresh/library/ILoadingLayout;
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 135
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 136
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method private startActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method private updateUser()V
    .locals 3

    .prologue
    .line 236
    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "\u83b7\u53d6\u624b\u673aimei\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->finish()V

    .line 289
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v1, "\u6a21\u62df\u5668\uff0c\u4e0d\u80fd\u4f7f\u7528\u672c\u8f6f\u4ef6"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->finish()V

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 246
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    const-string v1, "mac"

    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "phone"

    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getTel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "point"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "xh"

    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "sdk"

    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getSDK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "ips"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/hck/zhuanqian/ui/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/MainActivity$3;-><init>(Lcom/hck/zhuanqian/ui/MainActivity;)V

    invoke-static {v1, v0}, Lcom/hck/zhuanqian/net/Request;->addUser(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    const-class v0, Lcom/hck/zhuanqian/ui/TuiGuangActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 193
    :pswitch_2
    const-class v0, Lcom/hck/zhuanqian/ui/ZhuanQianJiLuActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 196
    :pswitch_3
    const-class v0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 199
    :pswitch_4
    const-class v0, Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 202
    :pswitch_5
    const-class v0, Lcom/hck/zhuanqian/ui/HelpActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 205
    :pswitch_6
    const-class v0, Lcom/hck/zhuanqian/ui/MoreActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    .line 206
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->remindMsg(I)V

    goto :goto_0

    .line 209
    :pswitch_7
    const-class v0, Lcom/hck/zhuanqian/ui/HongBaoActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    .line 210
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MainActivity;->badge1:Lcom/hck/zhuanqian/view/RemindView;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/view/RemindView;->hide()V

    goto :goto_0

    .line 213
    :pswitch_8
    const-class v0, Lcom/hck/zhuanqian/ui/KindActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 216
    :pswitch_9
    const-class v0, Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 219
    :pswitch_a
    const-class v0, Lcom/hck/zhuanqian/ui/TGActivity;

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x7f060028
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v1, Lcom/hck/zhuanqian/util/MyPreferences;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/util/MyPreferences;-><init>(Landroid/content/Context;)V

    .line 57
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MainActivity;->setContentView(I)V

    .line 58
    sget-object v1, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->finish()V

    .line 62
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->setStartLabel()V

    .line 65
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->getHongBaoAndMsgSize()V

    .line 66
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->setListener()V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->showExitDialog()V

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->initUserData()V

    .line 73
    return-void
.end method

.method public showExitDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v0, Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;
    invoke-virtual {v0, v2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCancelable(Z)V

    .line 304
    invoke-virtual {v0, v2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 305
    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setLeftText(Ljava/lang/String;)V

    .line 306
    const-string v1, "\u597d\u8bc4"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setRightText(Ljava/lang/String;)V

    .line 307
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 308
    const-string v1, "\u8fd9\u4e48\u597d\u7684\u8f6f\u4ef6\uff0c\u5fc5\u9700\u7ed9\u4e2a\u597d\u8bc4"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 309
    new-instance v1, Lcom/hck/zhuanqian/ui/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/MainActivity$4;-><init>(Lcom/hck/zhuanqian/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setOnLeftListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    new-instance v1, Lcom/hck/zhuanqian/ui/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/MainActivity$5;-><init>(Lcom/hck/zhuanqian/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setOnRightListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 324
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->show()V

    goto :goto_0
.end method

.method public startPinLunActivity()V
    .locals 3

    .prologue
    .line 332
    :try_start_0
    const-string v2, "market://details?id=com.hck.zhuanqian"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 333
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v2

    goto :goto_0
.end method
