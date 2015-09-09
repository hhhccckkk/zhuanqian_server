.class public Lcom/hck/zhuanqian/ui/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# instance fields
.field ids:[Ljava/lang/String;

.field private final mAnimationTime:J

.field private mImageView:Landroid/widget/ImageView;

.field private shangjiaString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->mAnimationTime:J

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->addUser()V

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->startMainActivity()V

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->getConfig()V

    return-void
.end method

.method private addUser()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "\u83b7\u53d6\u624b\u673aimei\u5931\u8d25"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "\u6a21\u62df\u5668\uff0c\u4e0d\u80fd\u4f7f\u7528\u672c\u8f6f\u4ef6"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->finish()V

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 132
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    const-string v1, "mac"

    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getTel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "phone"

    invoke-static {p0}, Lcom/hck/zhuanqian/util/MyTools;->getTel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2
    const-string v1, "point"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "xh"

    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "sdk"

    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getSDK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v4, :cond_4

    .line 142
    const-string v1, "shangjia1"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_1
    new-instance v1, Lcom/hck/zhuanqian/ui/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/SplashActivity$2;-><init>(Lcom/hck/zhuanqian/ui/SplashActivity;)V

    invoke-static {v1, v0}, Lcom/hck/zhuanqian/net/Request;->addUser(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V

    goto :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v5, :cond_5

    .line 144
    const-string v1, "shangjia1"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "shangjia2"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v6, :cond_6

    .line 147
    const-string v1, "shangjia1"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "shangjia2"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "shangjia3"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v7, :cond_7

    .line 151
    const-string v1, "shangjia1"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "shangjia2"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "shangjia3"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "shangjia4"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    :cond_7
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 158
    const-string v1, "shangjia1"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "shangjia2"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "shangjia3"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "shangjia4"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "shangjia5"

    iget-object v2, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getConfig()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/hck/zhuanqian/ui/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/SplashActivity$1;-><init>(Lcom/hck/zhuanqian/ui/SplashActivity;)V

    invoke-static {v0}, Lcom/hck/zhuanqian/net/Request;->getConfig(Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 116
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 48
    invoke-static {p0}, Lcom/hck/zhuanqian/util/FileUtil;->readFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->shangjiaString:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->shangjiaString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->shangjiaString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->ids:[Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->mImageView:Landroid/widget/ImageView;

    .line 57
    return-void
.end method

.method private startAnim()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 64
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 65
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/SplashActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 66
    return-void
.end method

.method private startMainActivity()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hck/zhuanqian/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->finish()V

    .line 208
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->initData()V

    .line 41
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/SplashActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->initView()V

    .line 43
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->startAnim()V

    .line 44
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->getConfig()V

    .line 45
    return-void
.end method

.method public showNetErrorDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;
    invoke-virtual {v0, v2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCancelable(Z)V

    .line 217
    invoke-virtual {v0, v2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 218
    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setLeftText(Ljava/lang/String;)V

    .line 219
    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setRightText(Ljava/lang/String;)V

    .line 220
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 221
    const-string v1, "\u60a8\u7684\u7f51\u7edc\u4e0d\u7a33\u5b9a"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/hck/zhuanqian/ui/SplashActivity$3;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/SplashActivity$3;-><init>(Lcom/hck/zhuanqian/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setOnLeftListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 231
    new-instance v1, Lcom/hck/zhuanqian/ui/SplashActivity$4;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/SplashActivity$4;-><init>(Lcom/hck/zhuanqian/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setOnRightListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 237
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/SplashActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->show()V

    goto :goto_0
.end method
