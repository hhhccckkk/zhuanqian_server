.class public Lcn/aow/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/aow/android/a$b;,
        Lcn/aow/android/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DExecutor"

.field private static final b:Z

.field private static r:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcn/aow/android/DInterface;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:Lcn/aow/android/a$a;

.field private n:Lcn/aow/android/a$b;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/widget/TextView;

.field private q:Lcn/aow/android/DCloseListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcn/aow/android/a;->d:Ljava/lang/String;

    .line 39
    const-string v0, "dynamic.jar"

    iput-object v0, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lcn/aow/android/a;->i:Z

    .line 45
    iput-boolean v2, p0, Lcn/aow/android/a;->j:Z

    .line 47
    iput-boolean v2, p0, Lcn/aow/android/a;->k:Z

    .line 73
    iput-object p1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    const-string v1, "preference_daow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/aow/android/a;->e:Landroid/content/SharedPreferences;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/aow/android/a;->f:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcn/aow/android/a;->c()V

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcn/aow/android/a;->d:Ljava/lang/String;

    .line 39
    const-string v0, "dynamic.jar"

    iput-object v0, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lcn/aow/android/a;->i:Z

    .line 45
    iput-boolean v2, p0, Lcn/aow/android/a;->j:Z

    .line 47
    iput-boolean v2, p0, Lcn/aow/android/a;->k:Z

    .line 85
    iput-object p1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcn/aow/android/a;->d:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    const-string v1, "preference_daow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/aow/android/a;->e:Landroid/content/SharedPreferences;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/aow/android/a;->f:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcn/aow/android/a;->c()V

    .line 95
    return-void
.end method

.method static synthetic a(Lcn/aow/android/a;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcn/aow/android/a;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcn/aow/android/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/aow/android/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcn/aow/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/aow/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/aow/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 362
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v0, p1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 368
    :try_start_0
    const-string v0, "cn.aow.android.impl.DImplement"

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aow/android/DInterface;

    iput-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    .line 371
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    iget-object v2, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/aow/android/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcn/aow/android/DInterface;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    iget-object v1, p0, Lcn/aow/android/a;->q:Lcn/aow/android/DCloseListener;

    invoke-interface {v0, v1}, Lcn/aow/android/DInterface;->setOnCloseListener(Lcn/aow/android/DCloseListener;)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/aow/android/a;->i:Z

    .line 375
    iget-object v0, p0, Lcn/aow/android/a;->m:Lcn/aow/android/a$a;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcn/aow/android/a;->m:Lcn/aow/android/a$a;

    iget-object v1, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    iget-object v2, p0, Lcn/aow/android/a;->n:Lcn/aow/android/a$b;

    invoke-interface {v0, v1, v2}, Lcn/aow/android/a$a;->a(Lcn/aow/android/DInterface;Lcn/aow/android/a$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 381
    const-string v1, "report_dexloadfail"

    invoke-virtual {p0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 382
    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/Throwable;)V

    .line 383
    invoke-virtual {p0, v4}, Lcn/aow/android/a;->a(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    const-string v0, "DExecutor==>>DownloadStart====="

    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/aow/android/a;->k:Z

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 298
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    .line 300
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v7, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    new-instance v0, Lcn/aow/android/a$3;

    move-object v1, p0

    move-object v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcn/aow/android/a$3;-><init>(Lcn/aow/android/a;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, p1, v2, v0}, Lcn/aow/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcn/aow/android/c$b;)V

    .line 353
    return-void
.end method

.method static synthetic a(Lcn/aow/android/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/aow/android/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcn/aow/android/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/aow/android/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/aow/android/a;->k:Z

    return p1
.end method

.method static synthetic c(Lcn/aow/android/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/aow/android/a;->i:Z

    return v0
.end method

.method static synthetic d(Lcn/aow/android/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcn/aow/android/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/aow/android/a;->j:Z

    .line 221
    sget-object v0, Lcn/aow/android/DOWConstants;->a:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcn/aow/android/a;->e:Landroid/content/SharedPreferences;

    const-string v3, "columns_jsv"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 227
    const-string v4, "pkg_name"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "ipb"

    iget-object v4, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "jsv"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "dsv"

    const-string v2, "030100"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "idv"

    iget-object v2, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-static {v2}, Lcn/aow/android/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "dmaow@12*!secrue"

    invoke-static {v3}, Lcn/aow/android/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/aow/android/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 236
    const-string v2, "msg"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcn/aow/android/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DExecutor==>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    new-instance v2, Lcn/aow/android/a$2;

    invoke-direct {v2, p0}, Lcn/aow/android/a$2;-><init>(Lcn/aow/android/a;)V

    invoke-static {v1, v0, v2}, Lcn/aow/android/c;->a(Landroid/content/Context;Ljava/lang/String;Lcn/aow/android/c$a;)V

    .line 279
    return-void
.end method

.method private f()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 393
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 394
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 399
    const-string v1, "#CCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 402
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcn/aow/android/a;->n:Lcn/aow/android/a$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/aow/android/a;->n:Lcn/aow/android/a$b;

    sget-object v1, Lcn/aow/android/a$b;->b:Lcn/aow/android/a$b;

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcn/aow/android/a;->f()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    new-instance v1, Lcn/aow/android/a$1;

    invoke-direct {v1, p0}, Lcn/aow/android/a$1;-><init>(Lcn/aow/android/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/aow/android/a;->a(Z)V

    .line 127
    iget-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    const v2, 0x1030005

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    .line 129
    iget-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 130
    iget-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 134
    :cond_2
    return-void
.end method

.method protected a(Lcn/aow/android/DCloseListener;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcn/aow/android/a;->q:Lcn/aow/android/DCloseListener;

    .line 206
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    invoke-interface {v0, p1}, Lcn/aow/android/DInterface;->setOnCloseListener(Lcn/aow/android/DCloseListener;)V

    goto :goto_0
.end method

.method protected a(Lcn/aow/android/a$a;Lcn/aow/android/a$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcn/aow/android/a;->m:Lcn/aow/android/a$a;

    .line 183
    iput-object p2, p0, Lcn/aow/android/a;->n:Lcn/aow/android/a$b;

    .line 184
    return-void
.end method

.method protected a(Lcn/aow/android/a$b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 98
    iput-object p1, p0, Lcn/aow/android/a;->n:Lcn/aow/android/a$b;

    .line 100
    iget-boolean v0, p0, Lcn/aow/android/a;->i:Z

    if-nez v0, :cond_2

    .line 101
    iget-boolean v0, p0, Lcn/aow/android/a;->j:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/aow/android/a;->k:Z

    if-ne v0, v1, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcn/aow/android/a;->a()V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcn/aow/android/a;->a()V

    .line 107
    invoke-virtual {p0}, Lcn/aow/android/a;->c()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcn/aow/android/a;->m:Lcn/aow/android/a$a;

    iget-object v1, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    invoke-interface {v0, v1, p1}, Lcn/aow/android/a$a;->a(Lcn/aow/android/DInterface;Lcn/aow/android/a$b;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcn/aow/android/a;->d:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    invoke-interface {v0, p1}, Lcn/aow/android/DInterface;->setUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u5f02\u5e38,\u5237\u65b0\u8bd5\u8bd5..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    const-string v1, "\u52aa\u529b\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    const-string v1, "#CCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v0, p0, Lcn/aow/android/a;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/aow/android/a;->o:Landroid/app/Dialog;

    .line 141
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 409
    const-string v1, "http://aow.dmaow.com/rp"

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    const-string v0, "type"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v0, "ipb"

    iget-object v3, p0, Lcn/aow/android/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :try_start_0
    sget-object v0, Lcn/aow/android/a;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 417
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/aow/android/a;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    sget-object v0, Lcn/aow/android/a;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 422
    const-string v0, "imei"

    sget-object v3, Lcn/aow/android/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcn/aow/android/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcn/aow/android/a;->l:Landroid/content/Context;

    new-instance v2, Lcn/aow/android/a$4;

    invoke-direct {v2, p0}, Lcn/aow/android/a$4;-><init>(Lcn/aow/android/a;)V

    invoke-static {v1, v0, v2}, Lcn/aow/android/c;->a(Landroid/content/Context;Ljava/lang/String;Lcn/aow/android/c$a;)V

    .line 434
    return-void

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcn/aow/android/a;->e:Landroid/content/SharedPreferences;

    const-string v1, "columns_jfn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/aow/android/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/aow/android/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcn/aow/android/a;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/aow/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcn/aow/android/a;->e()V

    .line 174
    return-void
.end method

.method protected d()Lcn/aow/android/DInterface;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcn/aow/android/a;->h:Lcn/aow/android/DInterface;

    return-object v0
.end method
