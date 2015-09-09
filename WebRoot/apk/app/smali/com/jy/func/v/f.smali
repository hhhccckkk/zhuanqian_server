.class public final Lcom/jy/func/v/f;
.super Landroid/app/Dialog;
.source "JYHelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/v/f$a;
    }
.end annotation


# instance fields
.field private dG:Landroid/webkit/WebView;

.field private dH:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 36
    const v6, 0x1030010

    invoke-direct {p0, p1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v3, pm:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 43
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    new-instance v2, Lcom/jy/func/v/b;

    invoke-direct {v2, p1}, Lcom/jy/func/v/b;-><init>(Landroid/content/Context;)V

    .line 47
    .local v2, mHeadBannerView:Lcom/jy/func/v/b;
    invoke-virtual {v2}, Lcom/jy/func/v/b;->cC()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v2}, Lcom/jy/func/v/b;->cD()Landroid/widget/RelativeLayout;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 49
    invoke-virtual {v2}, Lcom/jy/func/v/b;->cE()Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u5e2e\u52a9"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, layoutWeb:Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v5, pmWeb:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/jy/func/v/f;->dH:Landroid/widget/ProgressBar;

    .line 59
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v4, pmPb:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    iget-object v6, p0, Lcom/jy/func/v/f;->dH:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v6, p0, Lcom/jy/func/v/f;->dH:Landroid/widget/ProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 65
    new-instance v6, Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    const-string v8, "0x111122"

    invoke-static {v7, v8}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    const-string v9, "0x111123"

    invoke-static {v8, v9}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "110100001101:1110100011101:111010001:111000001:111010001110:10111100:10111100:11101110111:111011101:1110111011101:10111000101:110101001:1101001:1101111011011:110111001:110011101100:1111001011110:110111101:11101010111:10111000:110111001:110010101100:1110100011101:10111100:110000101:1110000011100:110100101:10111100:11010000110:110010101:110110001101:1110000011100:10111100:110100001:1100101011001:110110001:111000001:1011100010:111000001:1101000011010:1110000011:11111100:111010101110:"

    iget-object v10, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/jy/func/u/i;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "id="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "&appid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v7, Lcom/jy/func/v/f$1;

    invoke-direct {v7, p0}, Lcom/jy/func/v/f$1;-><init>(Lcom/jy/func/v/f;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v7, Lcom/jy/func/v/f$a;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/jy/func/v/f$a;-><init>(Lcom/jy/func/v/f;B)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v6, p0, Lcom/jy/func/v/f;->dH:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/jy/func/v/f;->setContentView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/jy/func/v/f;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jy/func/v/f;->dH:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private al()Landroid/webkit/WebView;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 104
    new-instance v2, Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, localWebView:Landroid/webkit/WebView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v1, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v5, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    const-string v6, "0x111122"

    invoke-static {v5, v6}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, sUD:Ljava/lang/String;
    iget-object v5, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    const-string v6, "0x111123"

    invoke-static {v5, v6}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, sAD:Ljava/lang/String;
    const-string v5, "110100001101:1110100011101:111010001:111000001:111010001110:10111100:10111100:11101110111:111011101:1110111011101:10111000101:110101001:1101001:1101111011011:110111001:110011101100:1111001011110:110111101:11101010111:10111000:110111001:110010101100:1110100011101:10111100:110000101:1110000011100:110100101:10111100:11010000110:110010101:110110001101:1110000011100:10111100:110100001:1100101011001:110110001:111000001:1011100010:111000001:1101000011010:1110000011:11111100:111010101110:"

    iget-object v6, p0, Lcom/jy/func/v/f;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/jy/func/u/i;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, a:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&appid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    new-instance v5, Lcom/jy/func/v/f$1;

    invoke-direct {v5, p0}, Lcom/jy/func/v/f$1;-><init>(Lcom/jy/func/v/f;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    new-instance v5, Lcom/jy/func/v/f$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/jy/func/v/f$a;-><init>(Lcom/jy/func/v/f;B)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    return-object v2
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/jy/func/v/f;->dismiss()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x111116
        :pswitch_0
    .end packed-switch
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/jy/func/v/f;->dismiss()V

    .line 83
    :cond_0
    return-void
.end method
