.class public Lcom/hck/zhuanqian/ui/MoreActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "MoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field msgView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v1, 0x7f06003a

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f06003f

    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/MoreActivity;->msgView:Landroid/widget/ImageView;

    .line 32
    const-string v1, "isShowMsg"

    invoke-static {v1, v2}, Lcom/hck/zhuanqian/util/MyPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    .local v0, isShowMsg:Z
    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, v2}, Lcom/hck/zhuanqian/ui/MoreActivity;->showMsgTiShi(I)V

    .line 36
    :cond_0
    return-void
.end method

.method private showMsgTiShi(I)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MoreActivity;->msgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    :pswitch_0
    return-void

    .line 46
    :pswitch_1
    const-class v0, Lcom/hck/zhuanqian/ui/UpdateUserInfoActivity;

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 49
    :pswitch_2
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->showMsgTiShi(I)V

    .line 50
    const-class v0, Lcom/hck/zhuanqian/ui/MessageActivity;

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 53
    :pswitch_3
    const-class v0, Lcom/hck/zhuanqian/ui/HelpActivity;

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 56
    :pswitch_4
    const-class v0, Lcom/hck/zhuanqian/ui/FanKuiActivity;

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-virtual {p0}, Lcom/hck/zhuanqian/ui/MoreActivity;->startPinLunActivity()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x7f06003a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->setContentView(I)V

    .line 21
    const-string v0, "\u66f4\u591a"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->initTitle(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/MoreActivity;->initView()V

    .line 23
    return-void
.end method

.method public startPinLunActivity()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    const-string v2, "market://details?id=com.hck.zhuanqian"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/MoreActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v2

    goto :goto_0
.end method
