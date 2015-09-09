.class public Lcom/hck/zhuanqian/view/AlertDialogs;
.super Ljava/lang/Object;
.source "AlertDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;
    }
.end annotation


# static fields
.field public static aDialog:Landroid/app/AlertDialog;

.field public static aDialog2:Landroid/app/AlertDialog;

.field public static oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "content"
    .parameter "big"

    .prologue
    .line 72
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/hck/zhuanqian/view/AlertDialogs;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V

    .line 73
    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V
    .locals 8
    .parameter "context"
    .parameter "title"
    .parameter "content"
    .parameter "big"
    .parameter "oneBtOnclick"
    .parameter "tag"

    .prologue
    const/4 v6, 0x0

    .line 30
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 33
    :cond_0
    sput-object v6, Lcom/hck/zhuanqian/view/AlertDialogs;->oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;

    .line 34
    sput-object p4, Lcom/hck/zhuanqian/view/AlertDialogs;->oneBtOnclick:Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;

    .line 35
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    .line 36
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030018

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 39
    .local v3, view:Landroid/view/View;
    const v4, 0x7f060057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, contenTextView:Landroid/widget/TextView;
    const v4, 0x7f060058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :try_start_0
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 48
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getScreenWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    if-eqz p3, :cond_1

    .line 50
    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getScreenHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fd6666666666666L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    :goto_1
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    sget-object v4, Lcom/hck/zhuanqian/view/AlertDialogs;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 57
    new-instance v4, Lcom/hck/zhuanqian/view/AlertDialogs$1;

    invoke-direct {v4, p4, p5}, Lcom/hck/zhuanqian/view/AlertDialogs$1;-><init>(Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/hck/zhuanqian/util/MyTools;->getScreenHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fd0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 44
    .end local v2           #params:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
