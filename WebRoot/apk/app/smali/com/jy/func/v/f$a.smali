.class final Lcom/jy/func/v/f$a;
.super Landroid/webkit/WebChromeClient;
.source "JYHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/v/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic dI:Lcom/jy/func/v/f;


# direct methods
.method private constructor <init>(Lcom/jy/func/v/f;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jy/func/v/f$a;->dI:Lcom/jy/func/v/f;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jy/func/v/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/jy/func/v/f$a;-><init>(Lcom/jy/func/v/f;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jy/func/v/f$a;->dI:Lcom/jy/func/v/f;

    invoke-static {v0}, Lcom/jy/func/v/f;->a(Lcom/jy/func/v/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jy/func/v/f$a;->dI:Lcom/jy/func/v/f;

    invoke-static {v0}, Lcom/jy/func/v/f;->a(Lcom/jy/func/v/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 141
    return-void
.end method
