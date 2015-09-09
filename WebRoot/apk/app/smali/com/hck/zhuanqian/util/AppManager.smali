.class public Lcom/hck/zhuanqian/util/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static activityStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/hck/zhuanqian/util/AppManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppManager()Lcom/hck/zhuanqian/util/AppManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/hck/zhuanqian/util/AppManager;->instance:Lcom/hck/zhuanqian/util/AppManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/hck/zhuanqian/util/AppManager;

    invoke-direct {v0}, Lcom/hck/zhuanqian/util/AppManager;-><init>()V

    sput-object v0, Lcom/hck/zhuanqian/util/AppManager;->instance:Lcom/hck/zhuanqian/util/AppManager;

    .line 18
    :cond_0
    sget-object v0, Lcom/hck/zhuanqian/util/AppManager;->instance:Lcom/hck/zhuanqian/util/AppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/hck/zhuanqian/util/AppManager;->activityStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 34
    :goto_1
    return-void

    .line 30
    :cond_0
    sget-object v1, Lcom/hck/zhuanqian/util/AppManager;->activityStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 21
    sget-object v0, Lcom/hck/zhuanqian/util/AppManager;->activityStack:Ljava/util/List;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hck/zhuanqian/util/AppManager;->activityStack:Ljava/util/List;

    .line 24
    :cond_0
    sget-object v0, Lcom/hck/zhuanqian/util/AppManager;->activityStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
