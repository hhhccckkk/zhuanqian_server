.class public Lcn/aow/android/DAOW;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/aow/android/DAOW$2;
    }
.end annotation


# static fields
.field private static d:Lcn/aow/android/DAOW;


# instance fields
.field a:Lcn/aow/android/a$a;

.field private b:Lcn/aow/android/a;

.field private c:Lcn/aow/android/DInterface;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcn/aow/android/DAOW$1;

    invoke-direct {v0, p0}, Lcn/aow/android/DAOW$1;-><init>(Lcn/aow/android/DAOW;)V

    iput-object v0, p0, Lcn/aow/android/DAOW;->a:Lcn/aow/android/a$a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcn/aow/android/DAOW;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcn/aow/android/DAOW;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/aow/android/DAOW;Lcn/aow/android/DInterface;)Lcn/aow/android/DInterface;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    return-object p1
.end method

.method static synthetic b(Lcn/aow/android/DAOW;)Lcn/aow/android/a;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/aow/android/DAOW;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcn/aow/android/DAOW;->d:Lcn/aow/android/DAOW;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/aow/android/DAOW;

    invoke-direct {v0, p0}, Lcn/aow/android/DAOW;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/aow/android/DAOW;->d:Lcn/aow/android/DAOW;

    .line 33
    :cond_0
    sget-object v0, Lcn/aow/android/DAOW;->d:Lcn/aow/android/DAOW;

    return-object v0
.end method


# virtual methods
.method public checkPoints(Lcn/aow/android/DListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 69
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5!!"

    invoke-interface {p1, v0}, Lcn/aow/android/DListener;->onError(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    sget-object v1, Lcn/aow/android/a$b;->c:Lcn/aow/android/a$b;

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a$b;)V

    .line 72
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    const-string v1, "report_nodexcheckpoints"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    invoke-interface {v0, p1}, Lcn/aow/android/DInterface;->checkPoints(Lcn/aow/android/DListener;)V

    goto :goto_0
.end method

.method public consumePoints(ILcn/aow/android/DListener;)V
    .locals 2
    .parameter "point"
    .parameter "listener"

    .prologue
    .line 79
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5!!"

    invoke-interface {p2, v0}, Lcn/aow/android/DListener;->onError(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    sget-object v1, Lcn/aow/android/a$b;->d:Lcn/aow/android/a$b;

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a$b;)V

    .line 82
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    const-string v1, "report_nodexconsumepoints"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    invoke-interface {v0, p1, p2}, Lcn/aow/android/DInterface;->consumePoints(ILcn/aow/android/DListener;)V

    goto :goto_0
.end method

.method public getUnitName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    invoke-interface {v0}, Lcn/aow/android/DInterface;->getUnitName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pid"

    .prologue
    .line 39
    iput-object p1, p0, Lcn/aow/android/DAOW;->e:Landroid/content/Context;

    .line 40
    new-instance v0, Lcn/aow/android/a;

    invoke-direct {v0, p1, p2}, Lcn/aow/android/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    .line 41
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    iget-object v1, p0, Lcn/aow/android/DAOW;->a:Lcn/aow/android/a$a;

    sget-object v2, Lcn/aow/android/a$b;->a:Lcn/aow/android/a$b;

    invoke-virtual {v0, v1, v2}, Lcn/aow/android/a;->a(Lcn/aow/android/a$a;Lcn/aow/android/a$b;)V

    .line 42
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pid"
    .parameter "userid"

    .prologue
    .line 45
    iput-object p1, p0, Lcn/aow/android/DAOW;->e:Landroid/content/Context;

    .line 46
    new-instance v0, Lcn/aow/android/a;

    invoke-direct {v0, p1, p2, p3}, Lcn/aow/android/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    .line 47
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    iget-object v1, p0, Lcn/aow/android/DAOW;->a:Lcn/aow/android/a$a;

    sget-object v2, Lcn/aow/android/a$b;->a:Lcn/aow/android/a$b;

    invoke-virtual {v0, v1, v2}, Lcn/aow/android/a;->a(Lcn/aow/android/a$a;Lcn/aow/android/a$b;)V

    .line 48
    return-void
.end method

.method public onAOWExit()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    invoke-interface {v0}, Lcn/aow/android/DInterface;->onAOWExit()V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    invoke-interface {v0}, Lcn/aow/android/DInterface;->onResume()Z

    move-result v0

    goto :goto_0
.end method

.method public setCloseListener(Lcn/aow/android/DCloseListener;)V
    .locals 1
    .parameter "onCloseListener"

    .prologue
    .line 65
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    invoke-virtual {v0, p1}, Lcn/aow/android/a;->a(Lcn/aow/android/DCloseListener;)V

    .line 66
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 61
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    invoke-virtual {v0, p1}, Lcn/aow/android/a;->a(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "mDInterface ===>>null"

    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    sget-object v1, Lcn/aow/android/a$b;->b:Lcn/aow/android/a$b;

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a$b;)V

    .line 54
    iget-object v0, p0, Lcn/aow/android/DAOW;->b:Lcn/aow/android/a;

    const-string v1, "report_nodexshow"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/aow/android/DAOW;->c:Lcn/aow/android/DInterface;

    invoke-interface {v0, p1}, Lcn/aow/android/DInterface;->show(Landroid/content/Context;)V

    goto :goto_0
.end method
