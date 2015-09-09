.class final Lcom/jy/func/e$5;
.super Ljava/lang/Object;
.source "CYZTaskDetailFrame.java"

# interfaces
.implements Lcom/jy/func/v/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/e;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ah:Lcom/jy/func/e;


# direct methods
.method constructor <init>(Lcom/jy/func/e;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/e$5;->ah:Lcom/jy/func/e;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/jy/func/v/a;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/jy/func/v/a;->dismiss()V

    .line 637
    return-void
.end method

.method public final b(Lcom/jy/func/v/a;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 642
    invoke-virtual {p1}, Lcom/jy/func/v/a;->dismiss()V

    .line 643
    iget-object v1, p0, Lcom/jy/func/e$5;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->b(Lcom/jy/func/e;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed\u4f53\u9a8c"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, p0, Lcom/jy/func/e$5;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->b(Lcom/jy/func/e;)Landroid/widget/Button;

    move-result-object v1

    .line 645
    const v2, 0x111113

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 646
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jy/func/t/g;->bY:Ljava/lang/Boolean;

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    .line 649
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 650
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 651
    const-string v2, "CYZ_DownLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 652
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jy/func/e$5;->ah:Lcom/jy/func/e;

    invoke-static {v2}, Lcom/jy/func/e;->n(Lcom/jy/func/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, apkFilePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/jy/func/e$5;->ah:Lcom/jy/func/e;

    invoke-static {v1}, Lcom/jy/func/e;->d(Lcom/jy/func/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jy/func/t/h;->l(Landroid/content/Context;Ljava/lang/String;)Z

    .line 655
    return-void
.end method
