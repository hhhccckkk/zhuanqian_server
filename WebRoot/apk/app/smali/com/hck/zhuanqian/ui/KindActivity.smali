.class public Lcom/hck/zhuanqian/ui/KindActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "KindActivity.java"


# instance fields
.field private errorView:Landroid/view/View;

.field private kBean:Lcom/hck/zhuanqian/data/KindData;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/KindActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/KindActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/KindActivity;Lcom/hck/zhuanqian/data/KindData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KindActivity;->kBean:Lcom/hck/zhuanqian/data/KindData;

    return-void
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/KindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KindActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/KindActivity;)Lcom/hck/zhuanqian/data/KindData;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->kBean:Lcom/hck/zhuanqian/data/KindData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hck/zhuanqian/ui/KindActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(II)V

    return-void
.end method

.method private getKindFromServer()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/hck/zhuanqian/ui/KindActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/KindActivity$1;-><init>(Lcom/hck/zhuanqian/ui/KindActivity;)V

    invoke-static {v0}, Lcom/hck/zhuanqian/net/Request;->getKind(Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 71
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "\u8d5a\u94b1\u4e13\u533a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->initTitle(Ljava/lang/String;)V

    .line 39
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->listView:Landroid/widget/ListView;

    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->errorView:Landroid/view/View;

    .line 42
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/hck/zhuanqian/ui/KindActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/KindActivity$2;-><init>(Lcom/hck/zhuanqian/ui/KindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-void
.end method

.method private startActivity(II)V
    .locals 2
    .parameter "type"
    .parameter "maxSize"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "maxNum"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const-class v1, Lcom/hck/zhuanqian/ui/DLActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :pswitch_1
    const-class v1, Lcom/hck/zhuanqian/ui/DianCaiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :pswitch_2
    const-class v1, Lcom/hck/zhuanqian/ui/DuoMengActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :pswitch_3
    const-class v1, Lcom/hck/zhuanqian/ui/DaTouNiaoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :pswitch_4
    const-class v1, Lcom/hck/zhuanqian/ui/YouMiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :pswitch_5
    const-class v1, Lcom/hck/zhuanqian/ui/YeGuoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :pswitch_6
    const-class v1, Lcom/hck/zhuanqian/ui/MiDiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :pswitch_7
    const-class v1, Lcom/hck/zhuanqian/ui/GuoMengActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :pswitch_8
    const-class v1, Lcom/hck/zhuanqian/ui/QiDianActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :pswitch_9
    const-class v1, Lcom/hck/zhuanqian/ui/ZhongYiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :pswitch_a
    const-class v1, Lcom/hck/zhuanqian/ui/DianRuActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :pswitch_b
    const-class v1, Lcom/hck/zhuanqian/ui/BeiDuoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :pswitch_c
    const-class v1, Lcom/hck/zhuanqian/ui/JiongYouActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_d
    const-class v1, Lcom/hck/zhuanqian/ui/KeKeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KindActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/hck/zhuanqian/adapter/KindAdapter;

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/KindActivity;->kBean:Lcom/hck/zhuanqian/data/KindData;

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/KindData;->getKindBeans()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/hck/zhuanqian/adapter/KindAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/KindActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KindActivity;->initView()V

    .line 33
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KindActivity;->getKindFromServer()V

    .line 34
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/KindActivity;->setListener()V

    .line 35
    return-void
.end method
