.class public final Lcom/jy/func/t/a$a;
.super Landroid/app/DownloadManager$Request;
.source "CYZDownloadManagerPro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static bG:Ljava/lang/String; = "setNotiClass"

.field private static bH:Ljava/lang/String; = "setNotiExtras"

.field private static bI:Z

.field private static bJ:Z

.field private static bK:Ljava/lang/reflect/Method;

.field private static bL:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 271
    sput-boolean v0, Lcom/jy/func/t/a$a;->bI:Z

    .line 272
    sput-boolean v0, Lcom/jy/func/t/a$a;->bJ:Z

    .line 274
    sput-object v1, Lcom/jy/func/t/a$a;->bK:Ljava/lang/reflect/Method;

    .line 275
    sput-object v1, Lcom/jy/func/t/a$a;->bL:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 282
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 5
    .parameter "className"

    .prologue
    .line 290
    monitor-enter p0

    .line 292
    :try_start_0
    sget-boolean v0, Lcom/jy/func/t/a$a;->bI:Z

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jy/func/t/a$a;->bI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    const-class v0, Landroid/app/DownloadManager$Request;

    const-string v1, "setNotiClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/a$a;->bK:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    sget-object v0, Lcom/jy/func/t/a$a;->bK:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 305
    :try_start_3
    sget-object v0, Lcom/jy/func/t/a$a;->bK:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 314
    :cond_1
    :goto_1
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 298
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 306
    :catch_1
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private u(Ljava/lang/String;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 322
    monitor-enter p0

    .line 324
    :try_start_0
    sget-boolean v0, Lcom/jy/func/t/a$a;->bJ:Z

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jy/func/t/a$a;->bJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :try_start_1
    const-class v0, Landroid/app/DownloadManager$Request;

    const-string v1, "setNotiExtras"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/a$a;->bL:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    sget-object v0, Lcom/jy/func/t/a$a;->bL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 337
    :try_start_3
    sget-object v0, Lcom/jy/func/t/a$a;->bL:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 338
    :catch_1
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
