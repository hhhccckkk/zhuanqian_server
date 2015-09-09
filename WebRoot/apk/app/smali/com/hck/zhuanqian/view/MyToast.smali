.class public Lcom/hck/zhuanqian/view/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showCustomerToast(Ljava/lang/String;)V
    .locals 6
    .parameter "textString"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 16
    sget-object v2, Lcom/hck/zhuanqian/ui/MyApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002a

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 17
    .local v1, view:Landroid/view/View;
    const v2, 0x7f06008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 18
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 20
    sget-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 21
    sput-object v5, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    .line 23
    :cond_0
    new-instance v2, Landroid/widget/Toast;

    sget-object v3, Lcom/hck/zhuanqian/ui/MyApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    .line 24
    sget-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 25
    sget-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 26
    sget-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 27
    sget-object v2, Lcom/hck/zhuanqian/view/MyToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 29
    return-void
.end method
