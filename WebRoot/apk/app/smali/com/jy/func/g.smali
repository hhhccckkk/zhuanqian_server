.class public abstract Lcom/jy/func/g;
.super Landroid/support/v4/app/FragmentActivity;
.source "CYZ_BaseActivity.java"


# static fields
.field public static i:I


# instance fields
.field public handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/jy/func/g;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initRecourse()V
.end method

.method protected abstract initView()Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/jy/func/g;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/jy/func/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 43
    const/4 v1, 0x2

    .line 42
    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, v2}, Lcom/jy/func/g;->setRequestedOrientation(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/jy/func/g;->initData()V

    .line 64
    invoke-virtual {p0}, Lcom/jy/func/g;->initRecourse()V

    .line 65
    invoke-virtual {p0}, Lcom/jy/func/g;->initView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jy/func/g;->setContentView(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/jy/func/g$1;

    invoke-direct {v0, p0}, Lcom/jy/func/g$1;-><init>(Lcom/jy/func/g;)V

    iput-object v0, p0, Lcom/jy/func/g;->handler:Landroid/os/Handler;

    .line 73
    return-void
.end method
