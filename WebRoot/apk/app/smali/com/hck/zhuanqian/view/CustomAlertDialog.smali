.class public Lcom/hck/zhuanqian/view/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LEFT_BUTTON_ID:I = 0x0

.field private static final RIGHT_BUTTON_ID:I = 0x1


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mLeftBtn:Landroid/widget/TextView;

.field private mLeftListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRightBtn:Landroid/widget/TextView;

.field private mRightListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;-><init>(Landroid/content/Context;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "cancelable"

    .prologue
    .line 28
    const/high16 v0, 0x7f0a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->init(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCancelable(Z)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setContentView(I)V

    .line 35
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftBtn:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightBtn:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContentView:Landroid/widget/RelativeLayout;

    .line 40
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideLeftBtn()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->dismiss()V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x7f06005d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLeftButtonTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    return-void
.end method

.method public setLeftText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 130
    if-lez p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .parameter "txt"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 90
    if-lez p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setMessageContentView(I)V
    .locals 3
    .parameter "viewId"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 62
    invoke-virtual {p0}, Lcom/hck/zhuanqian/view/CustomAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public setMessageContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public setOnLeftListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mLeftListener:Landroid/content/DialogInterface$OnClickListener;

    .line 158
    return-void
.end method

.method public setOnRightListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightListener:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    return-void
.end method

.method public setRightButtonTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    return-void
.end method

.method public setRightText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 145
    if-lez p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 110
    if-lez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hck/zhuanqian/view/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    return-void
.end method
