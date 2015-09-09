.class public final Lcom/jy/func/e;
.super Landroid/support/v4/app/Fragment;
.source "CYZTaskDetailFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/e$a;
    }
.end annotation


# static fields
.field private static Y:Ljava/lang/String; = "CYZ_DownLoad"

.field private static Z:Ljava/lang/String; = "downloadId"

.field private static ad:I

.field private static ae:I

.field private static af:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private ConDialog:Lcom/jy/func/v/a;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/jy/func/i/b;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/webkit/WebView;

.field private S:Landroid/widget/Button;

.field private T:Landroid/widget/RelativeLayout;

.field private U:Landroid/app/DownloadManager;

.field private V:Lcom/jy/func/t/a;

.field private W:Lcom/jy/func/e$a;

.field private X:J

.field private aa:Ljava/util/Timer;

.field private ab:Ljava/util/TimerTask;

.field private ac:Ljava/util/TimerTask;

.field private ag:I

.field private k:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    sput v1, Lcom/jy/func/e;->ad:I

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/jy/func/e;->ae:I

    .line 112
    sput v1, Lcom/jy/func/e;->af:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/jy/func/e;->D:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/jy/func/e;->E:Ljava/lang/String;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jy/func/e;->X:J

    .line 107
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/jy/func/e;->aa:Ljava/util/Timer;

    .line 108
    iput-object v2, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    .line 109
    iput-object v2, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    .line 115
    iput v3, p0, Lcom/jy/func/e;->ag:I

    .line 118
    invoke-virtual {p0, v3}, Lcom/jy/func/e;->setRetainInstance(Z)V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/jy/func/e;)J
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/jy/func/e;->X:J

    return-wide v0
.end method

.method static synthetic a(Lcom/jy/func/e;Lcom/jy/func/f;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    invoke-virtual {p1}, Lcom/jy/func/f;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/e;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    invoke-virtual {p1}, Lcom/jy/func/f;->B()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/e;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/jy/func/e;->R:Landroid/webkit/WebView;

    const-string v1, "file://"

    invoke-virtual {p1}, Lcom/jy/func/f;->C()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, "about:blank"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jy/func/e;->L:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1.\u9996\u6b21"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jy/func/f;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u53ef\u83b7\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "0x111126"

    invoke-static {v0, v1}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/jy/func/e;->N:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jy/func/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jy/func/e;->M:Landroid/widget/TextView;

    const-string v2, "2.\u6b21\u65e5\u7b7e\u5230 ,\u53ef\u83b7\u5f97"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jy/func/e;->O:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jy/func/f;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/jy/func/f;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jy/func/t/h;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CYZ_DownLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jy/func/t/h;->A(Ljava/lang/String;)Z

    move-result v4

    const-string v2, "\u6253\u5f00"

    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    const-string v0, "\u514d\u8d39\u4e0b\u8f7d"

    iget-object v5, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v6, "0x111123"

    invoke-static {v5, v6}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const-string v1, "\u6d4b\u8bd5\u72b6\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v5, p0, Lcom/jy/func/e;->ag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {p1}, Lcom/jy/func/f;->v()I

    move-result v5

    sput v5, Lcom/jy/func/e;->ae:I

    iget-object v5, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v6, "DL_TASKTime"

    sget v7, Lcom/jy/func/e;->ae:I

    invoke-static {v5, v6, v7}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :goto_1
    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/t/c;->bQ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const-string v2, "\u7b7e\u5230"

    const-string v1, "\u7b7e\u5230\u5b89\u88c5"

    const-string v0, "\u7b7e\u5230\u4e0b\u8f7d"

    const/16 v5, 0x14

    sput v5, Lcom/jy/func/e;->ae:I

    iget-object v5, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v6, "DL_TASKTime"

    sget v7, Lcom/jy/func/e;->ae:I

    invoke-static {v5, v6, v7}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private a(Lcom/jy/func/f;)V
    .locals 13
    .parameter "taskDetailMode"

    .prologue
    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    invoke-virtual {p1}, Lcom/jy/func/f;->A()Ljava/lang/String;

    move-result-object v1

    .line 666
    iget-object v2, p0, Lcom/jy/func/e;->P:Landroid/widget/ImageView;

    .line 665
    invoke-virtual {v0, v1, v2}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 669
    iget-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    invoke-virtual {p1}, Lcom/jy/func/f;->B()Ljava/lang/String;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lcom/jy/func/e;->Q:Landroid/widget/ImageView;

    .line 669
    invoke-virtual {v0, v1, v2}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 672
    iget-object v0, p0, Lcom/jy/func/e;->R:Landroid/webkit/WebView;

    const-string v1, "file://"

    .line 673
    invoke-virtual {p1}, Lcom/jy/func/f;->C()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    .line 674
    const-string v5, "about:blank"

    .line 672
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/jy/func/e;->L:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1.\u9996\u6b21"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jy/func/f;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    const-string v2, ",\u53ef\u83b7\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "0x111126"

    invoke-static {v0, v1}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 680
    .local v12, strRate:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const-string v12, "1"

    .line 684
    :cond_0
    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 685
    .local v11, rate:F
    iget-object v0, p0, Lcom/jy/func/e;->N:Landroid/widget/TextView;

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    invoke-virtual {p1}, Lcom/jy/func/f;->f()Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/jy/func/e;->M:Landroid/widget/TextView;

    const-string v1, "2.\u6b21\u65e5\u7b7e\u5230 ,\u53ef\u83b7\u5f97"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/jy/func/e;->O:Landroid/widget/TextView;

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    invoke-virtual {p1}, Lcom/jy/func/f;->z()Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual {p1}, Lcom/jy/func/f;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->D:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 702
    iget-object v1, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    .line 701
    invoke-static {v0, v1}, Lcom/jy/func/t/h;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 705
    .local v10, packageNameExist:Z
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CYZ_DownLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jy/func/t/h;->A(Ljava/lang/String;)Z

    move-result v6

    .line 709
    .local v6, apkExist:Z
    const-string v7, "\u6253\u5f00"

    .line 710
    .local v7, btnText1:Ljava/lang/String;
    const-string v8, "\u7acb\u5373\u5b89\u88c5"

    .line 711
    .local v8, btnText2:Ljava/lang/String;
    const-string v9, "\u514d\u8d39\u4e0b\u8f7d"

    .line 713
    .local v9, btnText3:Ljava/lang/String;
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "0x111123"

    invoke-static {v0, v1}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const-string v1, "\u6d4b\u8bd5\u72b6\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 762
    .end local v6           #apkExist:Z
    .end local v7           #btnText1:Ljava/lang/String;
    .end local v8           #btnText2:Ljava/lang/String;
    .end local v9           #btnText3:Ljava/lang/String;
    .end local v10           #packageNameExist:Z
    .end local v11           #rate:F
    .end local v12           #strRate:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 720
    .restart local v6       #apkExist:Z
    .restart local v7       #btnText1:Ljava/lang/String;
    .restart local v8       #btnText2:Ljava/lang/String;
    .restart local v9       #btnText3:Ljava/lang/String;
    .restart local v10       #packageNameExist:Z
    .restart local v11       #rate:F
    .restart local v12       #strRate:Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/jy/func/e;->ag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 721
    invoke-virtual {p1}, Lcom/jy/func/f;->v()I

    move-result v0

    sput v0, Lcom/jy/func/e;->ae:I

    .line 722
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "DL_TASKTime"

    .line 723
    sget v2, Lcom/jy/func/e;->ae:I

    .line 722
    invoke-static {v0, v1, v2}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 733
    :goto_1
    if-eqz v10, :cond_5

    if-nez v6, :cond_5

    .line 734
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    .line 736
    const v1, 0x111113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 753
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/t/c;->bQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .end local v6           #apkExist:Z
    .end local v7           #btnText1:Ljava/lang/String;
    .end local v8           #btnText2:Ljava/lang/String;
    .end local v9           #btnText3:Ljava/lang/String;
    .end local v10           #packageNameExist:Z
    .end local v11           #rate:F
    .end local v12           #strRate:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 725
    .restart local v6       #apkExist:Z
    .restart local v7       #btnText1:Ljava/lang/String;
    .restart local v8       #btnText2:Ljava/lang/String;
    .restart local v9       #btnText3:Ljava/lang/String;
    .restart local v10       #packageNameExist:Z
    .restart local v11       #rate:F
    .restart local v12       #strRate:Ljava/lang/String;
    :cond_4
    const-string v7, "\u7b7e\u5230"

    .line 726
    const-string v8, "\u7b7e\u5230\u5b89\u88c5"

    .line 727
    const-string v9, "\u7b7e\u5230\u4e0b\u8f7d"

    .line 728
    const/16 v0, 0x14

    sput v0, Lcom/jy/func/e;->ae:I

    .line 729
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "DL_TASKTime"

    .line 730
    sget v2, Lcom/jy/func/e;->ae:I

    .line 729
    invoke-static {v0, v1, v2}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_1

    .line 737
    :cond_5
    if-eqz v6, :cond_7

    .line 738
    if-eqz v10, :cond_6

    .line 739
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    .line 741
    const v1, 0x111113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 743
    :cond_6
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    .line 745
    const v1, 0x111114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 747
    :cond_7
    if-nez v10, :cond_3

    if-nez v6, :cond_3

    .line 748
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    .line 750
    const v1, 0x111112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private a(Lcom/jy/func/h;)V
    .locals 1
    .parameter "taskDetailView"

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/jy/func/h;->an()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->G:Landroid/widget/ImageView;

    .line 184
    invoke-virtual {p1}, Lcom/jy/func/h;->ao()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->H:Landroid/widget/TextView;

    .line 185
    invoke-virtual {p1}, Lcom/jy/func/h;->ap()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->I:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p1}, Lcom/jy/func/h;->aq()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->J:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p1}, Lcom/jy/func/h;->ar()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    .line 188
    invoke-virtual {p1}, Lcom/jy/func/h;->as()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->L:Landroid/widget/TextView;

    .line 189
    invoke-virtual {p1}, Lcom/jy/func/h;->at()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->M:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p1}, Lcom/jy/func/h;->au()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->N:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p1}, Lcom/jy/func/h;->av()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->O:Landroid/widget/TextView;

    .line 192
    invoke-virtual {p1}, Lcom/jy/func/h;->aw()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->P:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {p1}, Lcom/jy/func/h;->ax()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->Q:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {p1}, Lcom/jy/func/h;->ay()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->R:Landroid/webkit/WebView;

    .line 195
    invoke-virtual {p1}, Lcom/jy/func/h;->az()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    .line 196
    invoke-virtual {p1}, Lcom/jy/func/h;->aA()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->T:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "PackageName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, topActivityClassName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 590
    .local v3, topActivityPackageName:Ljava/lang/String;
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 589
    check-cast v4, Landroid/app/ActivityManager;

    .line 593
    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    .line 596
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 597
    .local v0, f:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 602
    .end local v0           #f:Landroid/content/ComponentName;
    :cond_0
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 603
    if-eqz v3, :cond_2

    .line 604
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 605
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v5

    .line 610
    :goto_0
    return v4

    :cond_2
    move v4, v6

    goto :goto_0
.end method

.method static synthetic a(Lcom/jy/func/e;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 585
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/jy/func/e;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0
    .parameter

    .prologue
    .line 110
    sput p0, Lcom/jy/func/e;->ad:I

    return-void
.end method

.method static synthetic c(Lcom/jy/func/e;)Lcom/jy/func/t/a;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jy/func/e;->V:Lcom/jy/func/t/a;

    return-object v0
.end method

.method static synthetic c(I)V
    .locals 0
    .parameter

    .prologue
    .line 112
    sput p0, Lcom/jy/func/e;->af:I

    return-void
.end method

.method static synthetic d(Lcom/jy/func/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/jy/func/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/jy/func/e;)V
    .locals 4
    .parameter

    .prologue
    .line 629
    new-instance v0, Lcom/jy/func/v/a;

    iget-object v1, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v2, "\u606d\u559c\u60a8\u4e0b\u8f7d\u6210\u529f!"

    new-instance v3, Lcom/jy/func/e$5;

    invoke-direct {v3, p0}, Lcom/jy/func/e$5;-><init>(Lcom/jy/func/e;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/jy/func/v/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/v/d;)V

    iput-object v0, p0, Lcom/jy/func/e;->ConDialog:Lcom/jy/func/v/a;

    iget-object v0, p0, Lcom/jy/func/e;->ConDialog:Lcom/jy/func/v/a;

    const-string v1, "\u53d6\u6d88"

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/v/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jy/func/e;->ConDialog:Lcom/jy/func/v/a;

    invoke-virtual {v0}, Lcom/jy/func/v/a;->show()V

    return-void
.end method

.method static synthetic g(Lcom/jy/func/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/jy/func/e;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/jy/func/e;->q()V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    .line 440
    invoke-static {p1}, Lcom/jy/func/t/h;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 443
    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 444
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 445
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/jy/func/e;->startActivity(Landroid/content/Intent;)V

    .line 465
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "CYZ_DownLoad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, dir:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 452
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, SDCardRoot:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 455
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    invoke-static {v2}, Lcom/jy/func/t/h;->b(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 459
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 461
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jy/func/e;->p()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/jy/func/e;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    return-object v0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jy/func/e;->w:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SoftAPKname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    const-string v1, "SoftAPKname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->E:Ljava/lang/String;

    const-string v1, "SoftName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    const-string v1, "SoftPackName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    const-string v1, "SoftSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    const-string v1, "SoftImg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    const-string v1, "SoftScore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    const-string v1, "PageNum"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jy/func/e;->ag:I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    new-instance v0, Lcom/jy/func/t/a;

    iget-object v1, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    invoke-direct {v0, v1}, Lcom/jy/func/t/a;-><init>(Landroid/app/DownloadManager;)V

    iput-object v0, p0, Lcom/jy/func/e;->V:Lcom/jy/func/t/a;

    new-instance v0, Lcom/jy/func/e$a;

    invoke-direct {v0, p0}, Lcom/jy/func/e$a;-><init>(Lcom/jy/func/e;)V

    iput-object v0, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method private initView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 146
    new-instance v3, Lcom/jy/func/i/b;

    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/jy/func/i/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    .line 149
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, mLinearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Lcom/jy/func/v/b;

    .line 156
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 155
    invoke-direct {v0, v3}, Lcom/jy/func/v/b;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, mHeadBannerView:Lcom/jy/func/v/b;
    invoke-virtual {v0}, Lcom/jy/func/v/b;->cC()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v0}, Lcom/jy/func/v/b;->cD()Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    invoke-virtual {v0}, Lcom/jy/func/v/b;->cE()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 164
    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4234

    invoke-static {v4, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v4

    .line 163
    invoke-direct {v3, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 162
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v2, Lcom/jy/func/h;

    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/jy/func/h;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, taskDetailView:Lcom/jy/func/h;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 170
    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {v2}, Lcom/jy/func/h;->an()Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->G:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/jy/func/h;->ao()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->H:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->ap()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->I:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->aq()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->J:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->ar()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/jy/func/h;->as()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->L:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->at()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->M:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->au()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->N:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->av()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->O:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jy/func/h;->aw()Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->P:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/jy/func/h;->ax()Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->Q:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/jy/func/h;->ay()Landroid/webkit/WebView;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->R:Landroid/webkit/WebView;

    invoke-virtual {v2}, Lcom/jy/func/h;->az()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/jy/func/h;->aA()Landroid/widget/RelativeLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/jy/func/e;->T:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v3, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    iget-object v4, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/jy/func/e;->G:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/jy/func/e;->H:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/jy/func/e;->I:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/jy/func/e;->J:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v4, Lcom/jy/func/u/m;

    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v4, v3}, Lcom/jy/func/u/m;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/jy/func/u/d;

    invoke-direct {v3, v4}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jy/func/u/b;

    invoke-interface {v3}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/jy/func/e;->w:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p0, Lcom/jy/func/e;->ag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/jy/func/u/m;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v4

    new-instance v5, Lcom/jy/func/e$1;

    invoke-direct {v5, p0}, Lcom/jy/func/e$1;-><init>(Lcom/jy/func/e;)V

    invoke-static {v3, v4, v5}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    .line 178
    return-object v1
.end method

.method static synthetic j(Lcom/jy/func/e;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/jy/func/e;->w:I

    return v0
.end method

.method static synthetic k(Lcom/jy/func/e;)I
    .locals 1
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lcom/jy/func/e;->ag:I

    return v0
.end method

.method static synthetic l(Lcom/jy/func/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jy/func/e;->E:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    iget-object v1, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/jy/func/e;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 208
    iget-object v0, p0, Lcom/jy/func/e;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/jy/func/e;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/jy/func/e;->J:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method static synthetic m(Lcom/jy/func/e;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 218
    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 217
    iput-object v0, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    .line 219
    new-instance v0, Lcom/jy/func/t/a;

    iget-object v1, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    invoke-direct {v0, v1}, Lcom/jy/func/t/a;-><init>(Landroid/app/DownloadManager;)V

    iput-object v0, p0, Lcom/jy/func/e;->V:Lcom/jy/func/t/a;

    .line 221
    new-instance v0, Lcom/jy/func/e$a;

    invoke-direct {v0, p0}, Lcom/jy/func/e$a;-><init>(Lcom/jy/func/e;)V

    iput-object v0, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    .line 223
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    .line 224
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method

.method static synthetic n(Lcom/jy/func/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 231
    const-string v1, "ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jy/func/e;->w:I

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SoftAPKname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    .line 233
    const-string v1, "SoftAPKname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->E:Ljava/lang/String;

    .line 234
    const-string v1, "SoftName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    .line 236
    const-string v1, "SoftPackName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    .line 237
    const-string v1, "SoftSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    .line 238
    const-string v1, "SoftImg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    .line 239
    const-string v1, "SoftScore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    .line 240
    const-string v1, "PageNum"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jy/func/e;->ag:I

    .line 242
    :cond_0
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    .line 248
    new-instance v0, Lcom/jy/func/u/m;

    iget-object v1, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jy/func/u/m;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, a:Lcom/jy/func/u/m;
    new-instance v1, Lcom/jy/func/u/d;

    invoke-direct {v1, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v1}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jy/func/u/b;

    .line 252
    invoke-interface {v1}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/jy/func/e;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/jy/func/e;->ag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/jy/func/u/m;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v2

    .line 253
    new-instance v3, Lcom/jy/func/e$1;

    invoke-direct {v3, p0}, Lcom/jy/func/e$1;-><init>(Lcom/jy/func/e;)V

    .line 252
    invoke-static {v1, v2, v3}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    .line 278
    return-void
.end method

.method private p()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 366
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 367
    const-string v5, "mounted"

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 367
    if-nez v4, :cond_0

    .line 368
    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v5, "\u9700\u8981SD\u5361\u3002"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 369
    .local v3, t:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 370
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 404
    .end local v3           #t:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string v4, "CYZ_DownLoad"

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 376
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 377
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 381
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 386
    :cond_3
    new-instance v2, Landroid/app/DownloadManager$Request;

    .line 387
    iget-object v4, p0, Lcom/jy/func/e;->D:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 386
    invoke-direct {v2, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 388
    .local v2, request:Landroid/app/DownloadManager$Request;
    const-string v4, "CYZ_DownLoad"

    .line 389
    iget-object v5, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    .line 388
    invoke-virtual {v2, v4, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 398
    const-string v4, "application/com.cyz.func.main.file"

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 399
    iget-object v4, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    invoke-virtual {v4, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jy/func/e;->X:J

    .line 401
    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v5, "downloadId"

    .line 402
    iget-wide v6, p0, Lcom/jy/func/e;->X:J

    .line 401
    invoke-static {v4, v5, v6, v7}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private q()V
    .locals 6

    .prologue
    .line 513
    sget v0, Lcom/jy/func/e;->ae:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 515
    const-string v1, "DL_TASKTime"

    .line 514
    invoke-static {v0, v1}, Lcom/jy/func/t/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jy/func/e;->ae:I

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 520
    :cond_1
    new-instance v0, Lcom/jy/func/e$4;

    invoke-direct {v0, p0}, Lcom/jy/func/e$4;-><init>(Lcom/jy/func/e;)V

    iput-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    .line 556
    iget-object v0, p0, Lcom/jy/func/e;->aa:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 557
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    .line 630
    new-instance v0, Lcom/jy/func/v/a;

    iget-object v1, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v2, "\u606d\u559c\u60a8\u4e0b\u8f7d\u6210\u529f!"

    .line 631
    new-instance v3, Lcom/jy/func/e$5;

    invoke-direct {v3, p0}, Lcom/jy/func/e$5;-><init>(Lcom/jy/func/e;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/jy/func/v/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/jy/func/v/d;)V

    .line 630
    iput-object v0, p0, Lcom/jy/func/e;->ConDialog:Lcom/jy/func/v/a;

    .line 658
    iget-object v0, p0, Lcom/jy/func/e;->ConDialog:Lcom/jy/func/v/a;

    const-string v1, "\u53d6\u6d88"

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v1, v2}, Lcom/jy/func/v/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/jy/func/e;->ConDialog:Lcom/jy/func/v/a;

    invoke-virtual {v0}, Lcom/jy/func/v/a;->show()V

    .line 660
    return-void
.end method

.method static synthetic s()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/jy/func/e;->af:I

    return v0
.end method

.method static synthetic t()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/jy/func/e;->ad:I

    return v0
.end method

.method static synthetic u()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/jy/func/e;->ae:I

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4170

    const/high16 v5, 0x4120

    const/4 v6, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 287
    :sswitch_0
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v4, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :sswitch_1
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v4, "\u6d4b\u8bd5\u72b6\u6001\u4e0d\u7ed9\u4e88\u4e0b\u8f7d!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 298
    :sswitch_2
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 304
    :sswitch_3
    iget v3, p0, Lcom/jy/func/e;->ag:I

    if-ne v3, v6, :cond_0

    .line 306
    new-instance v0, Lcom/jy/func/u/m;

    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/jy/func/u/m;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, a:Lcom/jy/func/u/m;
    new-instance v3, Lcom/jy/func/u/d;

    invoke-direct {v3, v0}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v3}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jy/func/u/b;

    .line 310
    invoke-interface {v3}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/jy/func/e;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lcom/jy/func/u/m;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v4

    new-instance v5, Lcom/jy/func/e$2;

    invoke-direct {v5, p0}, Lcom/jy/func/e$2;-><init>(Lcom/jy/func/e;)V

    invoke-static {v3, v4, v5}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    .line 312
    .end local v0           #a:Lcom/jy/func/u/m;
    :cond_0
    iget-object v3, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d.."

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v3, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 314
    invoke-direct {p0}, Lcom/jy/func/e;->p()V

    goto :goto_0

    .line 320
    :sswitch_4
    iget-object v3, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    invoke-static {v3}, Lcom/jy/func/t/h;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jy/func/e;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "CYZ_DownLoad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/jy/func/t/h;->b(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/jy/func/e;->p()V

    goto/16 :goto_0

    .line 326
    :sswitch_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CYZ_DownLoad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, apkFilePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/jy/func/t/h;->l(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 338
    .end local v1           #apkFilePath:Ljava/lang/String;
    :sswitch_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    const/4 v3, -0x1

    .line 340
    const/4 v4, -0x2

    .line 338
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v2, localLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 342
    invoke-static {v3, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 345
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 344
    invoke-static {v3, v5}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 347
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 346
    invoke-static {v3, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 349
    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {v3, v7}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 351
    iget-object v3, p0, Lcom/jy/func/e;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v3, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x111112 -> :sswitch_3
        0x111113 -> :sswitch_4
        0x111114 -> :sswitch_5
        0x111115 -> :sswitch_6
        0x111116 -> :sswitch_2
        0x111121 -> :sswitch_1
        0x111123 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 124
    iget-object v0, p0, Lcom/jy/func/e;->k:Landroid/view/View;

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/jy/func/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ID"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jy/func/e;->w:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SoftAPKname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->y:Ljava/lang/String;

    const-string v1, "SoftAPKname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->E:Ljava/lang/String;

    const-string v1, "SoftName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    const-string v1, "SoftPackName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    const-string v1, "SoftSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    const-string v1, "SoftImg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    const-string v1, "SoftScore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    const-string v1, "PageNum"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jy/func/e;->ag:I

    :cond_0
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    new-instance v0, Lcom/jy/func/t/a;

    iget-object v1, p0, Lcom/jy/func/e;->U:Landroid/app/DownloadManager;

    invoke-direct {v0, v1}, Lcom/jy/func/t/a;-><init>(Landroid/app/DownloadManager;)V

    iput-object v0, p0, Lcom/jy/func/e;->V:Lcom/jy/func/t/a;

    new-instance v0, Lcom/jy/func/e$a;

    invoke-direct {v0, p0}, Lcom/jy/func/e$a;-><init>(Lcom/jy/func/e;)V

    iput-object v0, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v0, Lcom/jy/func/i/b;

    iget-object v1, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jy/func/i/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/jy/func/v/b;

    iget-object v2, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/jy/func/v/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jy/func/v/b;->cC()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/jy/func/v/b;->cD()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/jy/func/v/b;->cE()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4234

    invoke-static {v3, v4}, Lcom/jy/func/t/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/jy/func/h;

    iget-object v2, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/jy/func/h;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/jy/func/h;->an()Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->G:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jy/func/h;->ao()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->ap()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->aq()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->ar()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/jy/func/h;->as()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->at()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->au()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->av()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jy/func/h;->aw()Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->P:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jy/func/h;->ax()Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jy/func/h;->ay()Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->R:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/jy/func/h;->az()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/jy/func/h;->aA()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/e;->T:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jy/func/e;->S:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jy/func/e;->F:Lcom/jy/func/i/b;

    iget-object v2, p0, Lcom/jy/func/e;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/jy/func/e;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Lcom/jy/func/i/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/jy/func/e;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jy/func/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->I:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jy/func/e;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jy/func/e;->J:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jy/func/e;->C:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/jy/func/u/m;

    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/jy/func/u/m;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/jy/func/u/d;

    invoke-direct {v0, v2}, Lcom/jy/func/u/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/jy/func/u/d;->bW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jy/func/u/b;

    invoke-interface {v0}, Lcom/jy/func/u/b;->bV()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/jy/func/e;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/jy/func/e;->ag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/jy/func/u/m;->a([Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v2

    new-instance v3, Lcom/jy/func/e$1;

    invoke-direct {v3, p0}, Lcom/jy/func/e$1;-><init>(Lcom/jy/func/e;)V

    invoke-static {v0, v2, v3}, Lcom/jy/func/b;->b(Ljava/lang/String;Lcom/jy/func/w/m;Lcom/jy/func/w/h;)V

    iput-object v1, p0, Lcom/jy/func/e;->k:Landroid/view/View;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/jy/func/e;->k:Landroid/view/View;

    return-object v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/jy/func/e;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jy/func/e;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 617
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 618
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jy/func/e;->W:Lcom/jy/func/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    iget-object v0, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 621
    const/4 v0, 0x0

    sput v0, Lcom/jy/func/e;->af:I

    .line 622
    iget-object v0, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 627
    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 6

    .prologue
    .line 470
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 472
    sget-object v0, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x0

    sput v0, Lcom/jy/func/e;->ad:I

    .line 475
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "\u7acb\u5373\u4f53\u9a8c,\u5c06\u83b7\u5f97\u5bf9\u5e94\u5956\u52b1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 476
    invoke-direct {p0}, Lcom/jy/func/e;->q()V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/jy/func/e;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 483
    :cond_2
    new-instance v0, Lcom/jy/func/e$3;

    invoke-direct {v0, p0}, Lcom/jy/func/e$3;-><init>(Lcom/jy/func/e;)V

    iput-object v0, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    .line 505
    iget-object v0, p0, Lcom/jy/func/e;->aa:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jy/func/e;->ac:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 562
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 565
    sget-object v0, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 567
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/jy/func/e;->ab:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 570
    :cond_0
    sget v0, Lcom/jy/func/e;->ad:I

    sget v1, Lcom/jy/func/e;->ae:I

    if-ge v0, v1, :cond_2

    .line 571
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "\u60a8\u4f53\u9a8c\u7684\u65f6\u95f4\u4e0d\u591f\uff0c\u4e0d\u80fd\u83b7\u5f97\u5956\u52b1"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed\u4f53\u9a8c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/jy/func/e;->K:Landroid/widget/Button;

    const v1, 0x111113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 582
    :cond_1
    return-void

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/jy/func/e;->mContext:Landroid/content/Context;

    const-string v1, "\u4f53\u9a8c\u6210\u529f\uff0c\u8be6\u7ec6\u4fe1\u606f\uff0c\u8bf7\u67e5\u770b\u4efb\u52a1\u8bb0\u5f55"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
