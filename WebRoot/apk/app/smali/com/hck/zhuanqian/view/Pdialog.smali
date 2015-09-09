.class public Lcom/hck/zhuanqian/view/Pdialog;
.super Ljava/lang/Object;
.source "Pdialog.java"


# static fields
.field static loadingDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 9
    .parameter "context"
    .parameter "msg"
    .parameter "cancelable"

    .prologue
    const/4 v8, -0x1

    .line 28
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 29
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03001f

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 30
    .local v5, v:Landroid/view/View;
    const v6, 0x7f06006c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 31
    .local v2, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f060060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 32
    .local v3, spaceshipImage:Landroid/widget/ImageView;
    const v6, 0x7f06006d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 34
    .local v4, tipTextView:Landroid/widget/TextView;
    const/high16 v6, 0x7f04

    .line 33
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 35
    .local v0, hyperspaceJumpAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v6, Landroid/app/Dialog;

    const v7, 0x7f0a0001

    invoke-direct {v6, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v6, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    .line 38
    sget-object v6, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v6, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    sget-object v6, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {v6, v2, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    sget-object v6, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    return-object v6
.end method

.method public static hiddenDialog()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    .line 58
    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "msg"
    .parameter "cancelable"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/hck/zhuanqian/view/Pdialog;->creatDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    .line 49
    sget-object v0, Lcom/hck/zhuanqian/view/Pdialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 51
    return-void
.end method
