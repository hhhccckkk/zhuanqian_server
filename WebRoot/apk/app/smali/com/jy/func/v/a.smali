.class public final Lcom/jy/func/v/a;
.super Landroid/app/Dialog;
.source "CYZ_ComInterfaceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private du:Landroid/widget/Button;

.field private dv:Landroid/widget/Button;

.field private dw:Landroid/widget/TextView;

.field private dx:Lcom/jy/func/v/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/v/d;)V
    .locals 6
    .parameter "context"
    .parameter "strMessage"
    .parameter "interfaceDialogCallback"

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    .line 26
    const v3, 0x1030010

    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    .local v2, pm:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 32
    const-string v3, "#44000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 34
    new-instance v0, Lcom/jy/func/v/c;

    invoke-direct {v0, p1}, Lcom/jy/func/v/c;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, dialogView:Lcom/jy/func/v/c;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/jy/func/v/a;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/jy/func/v/a;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 40
    iput-object p3, p0, Lcom/jy/func/v/a;->dx:Lcom/jy/func/v/d;

    .line 41
    invoke-virtual {v0}, Lcom/jy/func/v/c;->cL()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/v/a;->du:Landroid/widget/Button;

    .line 42
    iget-object v3, p0, Lcom/jy/func/v/a;->du:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v0}, Lcom/jy/func/v/c;->cM()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/v/a;->dv:Landroid/widget/Button;

    .line 44
    iget-object v3, p0, Lcom/jy/func/v/a;->dv:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v0}, Lcom/jy/func/v/c;->cK()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/v/a;->dw:Landroid/widget/TextView;

    .line 46
    iget-object v3, p0, Lcom/jy/func/v/a;->dw:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "strLeftText"
    .parameter "strRightText"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jy/func/v/a;->du:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/jy/func/v/a;->dv:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/jy/func/v/a;->dx:Lcom/jy/func/v/d;

    invoke-interface {v0, p0}, Lcom/jy/func/v/d;->a(Lcom/jy/func/v/a;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/jy/func/v/a;->dx:Lcom/jy/func/v/d;

    invoke-interface {v0, p0}, Lcom/jy/func/v/d;->b(Lcom/jy/func/v/a;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x111117
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/jy/func/v/a;->dismiss()V

    .line 55
    :cond_0
    return-void
.end method
