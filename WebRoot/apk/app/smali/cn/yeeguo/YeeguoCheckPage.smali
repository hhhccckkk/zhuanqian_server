.class public Lcn/yeeguo/YeeguoCheckPage;
.super Ljava/lang/Object;
.source "YeeguoCheckPage.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityManager:Landroid/app/ActivityManager;

.field private allTaskInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActivityManager;)V
    .locals 1
    .parameter "activity"
    .parameter "am"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->activityManager:Landroid/app/ActivityManager;

    .line 53
    new-instance v0, Lcn/yeeguo/YeeguoCheckPage$1;

    invoke-direct {v0, p0}, Lcn/yeeguo/YeeguoCheckPage$1;-><init>(Lcn/yeeguo/YeeguoCheckPage;)V

    iput-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;

    .line 20
    iput-object p1, p0, Lcn/yeeguo/YeeguoCheckPage;->activity:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcn/yeeguo/YeeguoCheckPage;->activityManager:Landroid/app/ActivityManager;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcn/yeeguo/YeeguoCheckPage;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->page:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcn/yeeguo/YeeguoCheckPage;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcn/yeeguo/YeeguoCheckPage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcn/yeeguo/YeeguoCheckPage;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/yeeguo/YeeguoCheckPage;->listActivity()V

    return-void
.end method

.method private listActivity()V
    .locals 5

    .prologue
    .line 25
    iget-object v3, p0, Lcn/yeeguo/YeeguoCheckPage;->activityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcn/yeeguo/YeeguoCheckPage;->allTaskInfo:Ljava/util/List;

    .line 26
    iget-object v3, p0, Lcn/yeeguo/YeeguoCheckPage;->allTaskInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 27
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, activityName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 30
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 31
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 32
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    iget-object v3, p0, Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 4
    .parameter "page"

    .prologue
    .line 49
    iput-object p1, p0, Lcn/yeeguo/YeeguoCheckPage;->page:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    iget-object v0, p0, Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    return-void
.end method
