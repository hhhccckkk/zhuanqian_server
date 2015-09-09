.class public final Lcn/yeeguo/Yeeguo;
.super Ljava/lang/Object;
.source "Yeeguo.java"


# static fields
.field public static final ALL_SCORE:I = 0x1

.field public static final AWARD_SCORE:I = 0x2

.field public static final CONSUME_SCORE:I = 0x3

.field public static final DOWN_SCORE:I = 0x4

.field protected static final HANLER_ERROR:I = 0x2711

.field protected static final HANLER_SENOR:I = 0x2712

.field protected static appID:Ljava/lang/String; = null

.field protected static channelID:Ljava/lang/String; = null

.field protected static hasInit:Z = false

.field protected static final libraryVersion:Ljava/lang/String; = "3.0.1"

.field public static offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener; = null

.field protected static final osType:Ljava/lang/String; = "android"

.field protected static final resolution:Ljava/lang/String; = ""

.field private static userid:Ljava/lang/String;

.field private static yeeguo:Lcn/yeeguo/Yeeguo;


# instance fields
.field private context:Landroid/content/Context;

.field private offerHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-object v1, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcn/yeeguo/Yeeguo;->hasInit:Z

    .line 28
    const-string v0, ""

    sput-object v0, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    .line 29
    const-string v0, "Yeeguo"

    sput-object v0, Lcn/yeeguo/Yeeguo;->channelID:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcn/yeeguo/Yeeguo;->userid:Ljava/lang/String;

    .line 37
    sput-object v1, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Lcn/yeeguo/Yeeguo$1;

    invoke-direct {v0, p0}, Lcn/yeeguo/Yeeguo$1;-><init>(Lcn/yeeguo/Yeeguo;)V

    iput-object v0, p0, Lcn/yeeguo/Yeeguo;->offerHandler:Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lcn/yeeguo/Yeeguo;->context:Landroid/content/Context;

    .line 75
    sget-boolean v0, Lcn/yeeguo/Yeeguo;->hasInit:Z

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcn/yeeguo/Yeeguo;->channelID:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v1

    .line 80
    const-string v2, "client_uid"

    .line 79
    invoke-virtual {v1, v2}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p1, v0, v1}, Lcn/yeeguo/YeeguoHttpRequest;->initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 336
    invoke-static {p0}, Lcn/yeeguo/Yeeguo;->verifyInit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcn/yeeguo/Yeeguo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcn/yeeguo/Yeeguo;->offerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static awardScore(Landroid/content/Context;ILcn/yeeguo/YeeguoScoreOnListener;)V
    .locals 2
    .parameter "context"
    .parameter "amount"
    .parameter "listener"

    .prologue
    .line 286
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_0

    .line 287
    const-string v0, "\u8bf7\u521d\u59cb\u5316\uff0cYeeguo.initYeeguo() "

    invoke-interface {p2, v0}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/yeeguo/Yeeguo$5;

    invoke-direct {v1, p0, p2, p1}, Lcn/yeeguo/Yeeguo$5;-><init>(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static consumeScore(Landroid/content/Context;ILcn/yeeguo/YeeguoScoreOnListener;)V
    .locals 2
    .parameter "context"
    .parameter "amount"
    .parameter "listener"

    .prologue
    .line 240
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "\u8bf7\u521d\u59cb\u5316\uff0cYeeguo.initYeeguo() "

    invoke-interface {p2, v0}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/yeeguo/Yeeguo$4;

    invoke-direct {v1, p0, p2, p1}, Lcn/yeeguo/Yeeguo$4;-><init>(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static enableLogging(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 102
    invoke-static {p0}, Lcn/yeeguo/YeeguoLog;->enableLogging(Z)V

    .line 103
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/yeeguo/Yeeguo;
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcn/yeeguo/Yeeguo;

    invoke-direct {v0, p0}, Lcn/yeeguo/Yeeguo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    .line 93
    :cond_0
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    return-object v0
.end method

.method public static getTotalScore(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 197
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "\u8bf7\u521d\u59cb\u5316\uff0cYeeguo.initYeeguo() "

    invoke-interface {p1, v0}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/yeeguo/Yeeguo$3;

    invoke-direct {v1, p0, p1}, Lcn/yeeguo/Yeeguo$3;-><init>(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static initYeeguo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appid"

    .prologue
    .line 48
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_0

    .line 49
    sput-object p1, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    .line 50
    new-instance v0, Lcn/yeeguo/Yeeguo;

    invoke-direct {v0, p0}, Lcn/yeeguo/Yeeguo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    .line 52
    :cond_0
    return-void
.end method

.method public static initYeeguo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appid"
    .parameter "_userid"

    .prologue
    .line 64
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_0

    .line 65
    sput-object p1, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    .line 66
    sput-object p2, Lcn/yeeguo/Yeeguo;->userid:Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v0

    .line 68
    const-string v1, "client_uid"

    sget-object v2, Lcn/yeeguo/Yeeguo;->userid:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcn/yeeguo/Yeeguo;

    invoke-direct {v0, p0}, Lcn/yeeguo/Yeeguo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    .line 71
    :cond_0
    return-void
.end method

.method public static setCurrentUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "_userID"

    .prologue
    .line 112
    return-void
.end method

.method public static showOffers(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;)V
    .locals 3
    .parameter "context"
    .parameter "_offerScoreListener"

    .prologue
    .line 120
    sput-object p1, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    .line 122
    sget-object v2, Lcn/yeeguo/Yeeguo;->appID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcn/yeeguo/YeeguoHttpRequest;->showWallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/yeeguo/YeeguoOffersActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, i:Landroid/content/Intent;
    const-string v2, "Yeeguo_offer_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method private static verifyInit(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, i:I
    :goto_0
    const-string v3, ""

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    if-lt v1, v3, :cond_2

    .line 361
    :cond_0
    const-string v3, ""

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 364
    :cond_1
    :goto_1
    return v2

    .line 340
    :cond_2
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_2
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 345
    const-string v3, ""

    invoke-static {p0}, Lcn/yeeguo/YeeguoUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    sget-object v3, Lcn/yeeguo/Yeeguo;->channelID:Ljava/lang/String;

    .line 351
    invoke-static {p0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v4

    .line 353
    const-string v5, "client_uid"

    .line 352
    invoke-virtual {v4, v5}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-static {p0, v3, v4}, Lcn/yeeguo/YeeguoHttpRequest;->initApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 358
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 364
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected adComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "adid"
    .parameter "token"
    .parameter "expcount"

    .prologue
    .line 135
    sget-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    .line 138
    const-string v1, "\u8bf7\u521d\u59cb\u5316\uff0cYeeguo.initYeeguo() "

    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcn/yeeguo/Yeeguo$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/yeeguo/Yeeguo$2;-><init>(Lcn/yeeguo/Yeeguo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    sput-object v0, Lcn/yeeguo/Yeeguo;->yeeguo:Lcn/yeeguo/Yeeguo;

    .line 328
    return-void
.end method
