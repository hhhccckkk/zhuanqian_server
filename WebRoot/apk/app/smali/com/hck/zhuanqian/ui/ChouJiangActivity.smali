.class public Lcom/hck/zhuanqian/ui/ChouJiangActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "ChouJiangActivity.java"


# static fields
.field private static final ONE_WHEEL_TIME:J = 0x1f4L


# instance fields
.field private al:Landroid/view/animation/Animation$AnimationListener;

.field private angles:[I

.field private choujiangTextView:Landroid/widget/TextView;

.field private dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

.field private laps:[I

.field private lightIv:Landroid/widget/ImageView;

.field private lightsOn:Z

.field private lotteryStr:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private pointIv:Landroid/widget/ImageView;

.field private postion2:I

.field private startDegree:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 35
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    .line 42
    iput-boolean v3, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightsOn:Z

    .line 44
    iput v5, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startDegree:I

    .line 49
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->laps:[I

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0x3c

    aput v1, v0, v3

    const/16 v1, 0x78

    aput v1, v0, v6

    const/16 v1, 0xb4

    aput v1, v0, v7

    const/16 v1, 0xf0

    aput v1, v0, v4

    const/4 v1, 0x5

    const/16 v2, 0x12c

    aput v2, v0, v1

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->angles:[I

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u606d\u559c\u83b7\u53d6\u91d1\u5e0150\u4e2a"

    aput-object v1, v0, v5

    const-string v1, "\u606d\u559c\u83b7\u53d6\u91d1\u5e01150\u4e2a"

    aput-object v1, v0, v3

    const-string v1, "\u8c22\u8c22\u53c2\u4e0e"

    aput-object v1, v0, v6

    const-string v1, "\u606d\u559c\u83b7\u53d6\u91d1\u5e01200\u4e2a"

    aput-object v1, v0, v7

    const-string v1, "\u606d\u559c\u83b7\u53d61\u4e2aQ\u5e01"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "\u606d\u559c\u83b7\u53d6\u91d1\u5e01100\u4e2a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lotteryStr:[Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity$1;-><init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity$2;-><init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->al:Landroid/view/animation/Animation$AnimationListener;

    .line 35
    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightsOn:Z

    return v0
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->updateChouJiangSize()V

    return-void
.end method

.method static synthetic access$11(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startChouJiang()V

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/ChouJiangActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightsOn:Z

    return-void
.end method

.method static synthetic access$3(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lotteryStr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    return v0
.end method

.method static synthetic access$5(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->addPoint()V

    return-void
.end method

.method static synthetic access$6(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->updateView()V

    return-void
.end method

.method static synthetic access$7(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->reduceChouJiangSize()V

    return-void
.end method

.method static synthetic access$8(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->getMoney()V

    return-void
.end method

.method static synthetic access$9(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPoint()V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    if-nez v0, :cond_1

    .line 207
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->savePoint(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 209
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->savePoint(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 211
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->savePoint(I)V

    goto :goto_0

    .line 212
    :cond_3
    iget v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 213
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->savePoint(I)V

    goto :goto_0
.end method

.method private flashLights()V
    .locals 6

    .prologue
    .line 225
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 226
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/hck/zhuanqian/ui/ChouJiangActivity$5;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity$5;-><init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    .line 237
    .local v1, tt:Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 238
    return-void
.end method

.method private getJiangPingSize(I)I
    .locals 4
    .parameter "postion"

    .prologue
    const/16 v3, 0x50

    const/16 v2, 0x3c

    const/4 v0, 0x5

    .line 241
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 242
    const/4 v0, 0x4

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    const/16 v1, 0xa

    if-ge v1, p1, :cond_2

    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :cond_2
    const/16 v1, 0x32

    if-ge v1, p1, :cond_3

    if-gt p1, v2, :cond_3

    .line 246
    const/4 v0, 0x3

    goto :goto_0

    .line 247
    :cond_3
    if-ge v2, p1, :cond_4

    if-le p1, v3, :cond_0

    .line 249
    :cond_4
    if-ge v3, p1, :cond_5

    const/16 v0, 0x64

    if-gt p1, v0, :cond_5

    .line 250
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getJiangPingSizeByciShu(I)I
    .locals 6
    .parameter "postion"

    .prologue
    const/16 v5, 0x50

    const/16 v4, 0x3c

    const/4 v2, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 257
    if-ltz p1, :cond_1

    if-gt p1, v2, :cond_1

    .line 258
    const/4 v0, 0x3

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    const/16 v3, 0xa

    if-ge v3, p1, :cond_2

    const/16 v3, 0x14

    if-lt p1, v3, :cond_0

    .line 261
    :cond_2
    const/16 v3, 0x32

    if-ge v3, p1, :cond_3

    if-gt p1, v4, :cond_3

    move v0, v1

    .line 262
    goto :goto_0

    .line 263
    :cond_3
    if-ge v4, p1, :cond_4

    if-gt p1, v5, :cond_4

    move v0, v2

    .line 264
    goto :goto_0

    .line 265
    :cond_4
    if-ge v5, p1, :cond_0

    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    move v0, v1

    .line 266
    goto :goto_0
.end method

.method private getMoney()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/hck/zhuanqian/ui/KindActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private reduceChouJiangSize()V
    .locals 6

    .prologue
    .line 277
    const-string v2, "\u8bf7\u7a0d\u7b49\uff0c\u5904\u7406\u4e2d"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 278
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v1

    .line 279
    .local v1, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 280
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    const-string v2, "uid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "cjSize"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v2, Lcom/hck/zhuanqian/ui/ChouJiangActivity$6;

    invoke-direct {v2, p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity$6;-><init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    invoke-static {v0, v2}, Lcom/hck/zhuanqian/net/Request;->updateChouJiangSize(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 305
    return-void
.end method

.method private reducePoint()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method private setupViews()V
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->lightIv:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->pointIv:Landroid/widget/ImageView;

    .line 220
    return-void
.end method

.method private startChouJiang()V
    .locals 15

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 129
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->laps:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v13, 0x4010

    mul-double/2addr v5, v13

    double-to-int v2, v5

    aget v9, v1, v2

    .line 130
    .local v9, lap:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startDegree:I

    .line 131
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    double-to-int v10, v1

    .line 132
    .local v10, postion:I
    const/4 v7, 0x0

    .line 133
    .local v7, angle:I
    const/4 v1, 0x2

    iput v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    .line 134
    invoke-direct {p0, v10}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->getJiangPingSizeByciShu(I)I

    move-result v1

    iput v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    .line 135
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->angles:[I

    iget v2, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->postion2:I

    aget v7, v1, v2

    .line 137
    mul-int/lit16 v1, v9, 0x168

    add-int v8, v1, v7

    .line 139
    .local v8, increaseDegree:I
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startDegree:I

    int-to-float v1, v1

    iget v2, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startDegree:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 142
    .local v0, rotateAnimation:Landroid/view/animation/RotateAnimation;
    iget v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startDegree:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->startDegree:I

    .line 144
    div-int/lit16 v1, v7, 0x168

    add-int/2addr v1, v9

    int-to-long v1, v1

    const-wide/16 v4, 0x1f4

    mul-long v11, v1, v4

    .line 146
    .local v11, time:J
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 150
    const v1, 0x10a0004

    invoke-virtual {v0, p0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 152
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->al:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 154
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->pointIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    return-void
.end method

.method private updateChouJiangSize()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v1

    .line 309
    .local v1, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/UserBean;->getChoujiang()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 310
    .local v0, cjSize:I
    if-lez v0, :cond_0

    .line 311
    :goto_0
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hck/zhuanqian/bean/UserBean;->setChoujiang(I)V

    .line 312
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->updateView()V

    .line 313
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    .line 85
    .local v0, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->choujiangTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u62bd\u5956\u6b21\u6570: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getChoujiang()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getMoney(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->getMoney()V

    .line 317
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->choujiangTextView:Landroid/widget/TextView;

    .line 60
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->updateView()V

    .line 61
    const-string v0, "\u62bd\u5956\u770b\u4eba\u54c1"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->initTitle(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->setupViews()V

    .line 63
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->flashLights()V

    .line 65
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->pointIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity$3;-><init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->dismiss()V

    .line 126
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    .line 96
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCancelable(Z)V

    .line 97
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setLeftText(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setRightText(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    const-string v1, "\u6ca1\u6709\u62bd\u5956\u6b21\u6570\u4e86\uff0c\u505a\u4efb\u52a1\u8d5a\u91d1\u5e01\u5151\u6362Q\u5e01\u6216\u8005\u652f\u4ed8\u5b9d\u540e\uff0c\u5206\u4eab\u597d\u53cb\u53ef\u4ee5\u83b7\u53d6\u62bd\u5956\u6b21\u6570"

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    new-instance v1, Lcom/hck/zhuanqian/ui/ChouJiangActivity$4;

    invoke-direct {v1, p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity$4;-><init>(Lcom/hck/zhuanqian/ui/ChouJiangActivity;)V

    invoke-virtual {v0, v1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setOnRightListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/ChouJiangActivity;->dialog:Lcom/hck/zhuanqian/view/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->show()V

    goto :goto_0
.end method
