.class public Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "DuiHuanQQActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DUIHUAN_100QBI:I = 0x5

.field private static final DUIHUAN_10QBI:I = 0x2

.field private static final DUIHUAN_1QBI:I = 0x0

.field private static final DUIHUAN_20QBI:I = 0x3

.field private static final DUIHUAN_50QBI:I = 0x4

.field private static final DUIHUAN_5QBI:I = 0x1


# instance fields
.field private buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private errorTextView:Landroid/widget/TextView;

.field private money:I

.field private myJinBiTextView:Landroid/widget/TextView;

.field private needPoinTextView:Landroid/widget/TextView;

.field private needPoint:I

.field private postion:I

.field private qBiSize:I

.field private qqEditText:Landroid/widget/EditText;

.field private subMitBtn:Landroid/widget/Button;

.field private userPoint:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUser()V

    return-void
.end method

.method static synthetic access$1(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->remindNeedPoint()V

    return-void
.end method

.method static synthetic access$2(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->showSuccessDialog()V

    return-void
.end method

.method private changeBtnbg()V
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 234
    return-void

    .line 225
    :cond_0
    iget v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    iget v2, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 227
    const v2, 0x7f02001d

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 231
    const v2, 0x7f02001e

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private checkoutData()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qqEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, qqString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "qq\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->sendDataToServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getAllKeDouBi()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->userPoint:I

    .line 55
    iget v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->userPoint:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->money:I

    .line 56
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->myJinBiTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/bean/UserBean;->getAllKeDouBi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u81f3\u5c11\u53ef\u5151\u6362Q\u5e01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->money:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f060018

    const v5, 0x7f060017

    const v4, 0x7f060016

    const v3, 0x7f060015

    const v2, 0x7f060014

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    .line 62
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->buttons:Ljava/util/List;

    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0, v2}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, v4}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->myJinBiTextView:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoinTextView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->subMitBtn:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->subMitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->errorTextView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qqEditText:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qqEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/bean/UserBean;->getQq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->initData()V

    .line 82
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->subMitBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    return-void
.end method

.method private remindNeedPoint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    iget v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->userPoint:I

    iget v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoinTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u91d1\u5e01: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->subMitBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :goto_1
    return-void

    .line 239
    :pswitch_0
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    goto :goto_0

    .line 242
    :pswitch_1
    const/16 v0, 0x1324

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    goto :goto_0

    .line 245
    :pswitch_2
    const/16 v0, 0x251c

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    goto :goto_0

    .line 248
    :pswitch_3
    const/16 v0, 0x4650

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    goto :goto_0

    .line 251
    :pswitch_4
    const v0, 0xa604

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    goto :goto_0

    .line 254
    :pswitch_5
    const v0, 0x13880

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoinTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u91d1\u5e01: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->subMitBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->errorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendDataToServer(Ljava/lang/String;)V
    .locals 6
    .parameter "qq"

    .prologue
    .line 138
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v0

    .line 139
    .local v0, userBean:Lcom/hck/zhuanqian/bean/UserBean;
    iget v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    if-gtz v1, :cond_0

    .line 140
    const-string v1, "\u5151\u6362\u6570\u91cf\u4e0d\u80fd\u4e3a0\u4e2a"

    invoke-static {v1}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v1, "\u6b63\u5728\u4e0b\u5355 \u8bf7\u7a0d\u7b49.."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/hck/zhuanqian/view/Pdialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 144
    new-instance v1, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v1}, Lcom/hck/httpserver/RequestParams;-><init>()V

    iput-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    .line 145
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "money"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "qq\u53f7\u7801\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h\u5151\u6362"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2aQ\u5e01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "shangjia1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia1()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "shangjia2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia2()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "shangjia3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getShangjia3()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "userName"

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/UserBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    const-string v2, "size"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->params:Lcom/hck/httpserver/RequestParams;

    new-instance v2, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;

    invoke-direct {v2, p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;-><init>(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V

    invoke-static {v1, v2}, Lcom/hck/zhuanqian/net/Request;->addOrder(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method private showSuccessDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 206
    const-string v1, "\u4e0b\u5355\u6210\u529f"

    .line 207
    const-string v2, "\u4e0b\u5355\u6210\u529f 1-2\u5929\u5185\u5904\u7406\u5b8c\u6210\u82e5\u6709\u7591\u95ee \u8bf7\u5728\u610f\u89c1\u53cd\u9988\u5904 \u8fdb\u884c\u53cd\u9988"

    .line 209
    new-instance v4, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$2;

    invoke-direct {v4, p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$2;-><init>(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;)V

    move-object v0, p0

    move v5, v3

    .line 206
    invoke-static/range {v0 .. v5}, Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V

    .line 216
    return-void
.end method

.method private updateUi()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->changeBtnbg()V

    .line 220
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->remindNeedPoint()V

    .line 221
    return-void
.end method

.method private updateUser()V
    .locals 7

    .prologue
    .line 198
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/bean/UserBean;->getAllKeDouBi()J

    move-result-wide v0

    .line 199
    .local v0, jinbi:J
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/bean/UserBean;->getAllMoney()J

    move-result-wide v2

    .line 200
    .local v2, zhuanqian:J
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v4

    iget v5, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->needPoint:I

    int-to-long v5, v5

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Lcom/hck/zhuanqian/bean/UserBean;->setAllKeDouBi(J)V

    .line 201
    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v4

    iget v5, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/hck/zhuanqian/bean/UserBean;->setAllMoney(J)V

    .line 202
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->initData()V

    .line 203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    .line 91
    iput v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    .line 92
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUi()V

    goto :goto_0

    .line 95
    :pswitch_2
    iput v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    .line 96
    iput v2, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    .line 97
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUi()V

    goto :goto_0

    .line 100
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    .line 101
    const/16 v0, 0xa

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    .line 102
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUi()V

    goto :goto_0

    .line 105
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    .line 106
    const/16 v0, 0x14

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    .line 107
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUi()V

    goto :goto_0

    .line 110
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    .line 111
    const/16 v0, 0x32

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    .line 112
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUi()V

    goto :goto_0

    .line 115
    :pswitch_6
    iput v2, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->postion:I

    .line 116
    const/16 v0, 0x64

    iput v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->qBiSize:I

    .line 117
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->updateUi()V

    goto :goto_0

    .line 120
    :pswitch_7
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->checkoutData()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f060014
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->setContentView(I)V

    .line 48
    const-string v0, "\u5151\u6362Q\u5e01"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->initTitle(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->initView()V

    .line 50
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->initData()V

    .line 51
    return-void
.end method
