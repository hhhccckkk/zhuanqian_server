.class public Lnet/youmi/android/a/a/g/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/a/a/g/f/a;

.field private static b:Lnet/youmi/android/a/a/g/f/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnet/youmi/android/a/a/g/f/b;

    invoke-direct {v0, p1}, Lnet/youmi/android/a/a/g/f/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/a/a/g/f/a;->b:Lnet/youmi/android/a/a/g/f/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;
    .locals 3

    const-class v1, Lnet/youmi/android/a/a/g/f/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/a/g/f/a;->a:Lnet/youmi/android/a/a/g/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/a/a/g/f/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/youmi/android/a/a/g/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/a/a/g/f/a;->a:Lnet/youmi/android/a/a/g/f/a;

    :cond_0
    sget-object v0, Lnet/youmi/android/a/a/g/f/a;->a:Lnet/youmi/android/a/a/g/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/f/c;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lnet/youmi/android/a/a/g/f/c;

    invoke-direct {v1}, Lnet/youmi/android/a/a/g/f/c;-><init>()V

    const-string v2, "a"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->a(Ljava/lang/String;)V

    const-string v2, "b"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->b(Ljava/lang/String;)V

    const-string v2, "c"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->c(Ljava/lang/String;)V

    const-string v2, "d"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->a(I)V

    const-string v2, "e"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->b(I)V

    const-string v2, "f"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->c(I)V

    const-string v2, "g"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/f/c;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lnet/youmi/android/a/b/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-static {v0, v1}, Lnet/youmi/android/a/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lnet/youmi/android/a/b/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-static {v0, v1}, Lnet/youmi/android/a/c/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    const-string v4, "lock"

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lnet/youmi/android/a/a/g/f/a;->b:Lnet/youmi/android/a/a/g/f/b;

    invoke-virtual {v2}, Lnet/youmi/android/a/a/g/f/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v1, "select %s from %s where %s=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "b5I3kl9i"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "f"

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v2, v5

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :try_start_5
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_2
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_1
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v0

    if-eqz v0, :cond_3

    :try_start_8
    const-string v0, "a"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/f/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_9
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    :goto_2
    monitor-exit v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_3
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v3

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "lock"

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lnet/youmi/android/a/a/g/f/a;->b:Lnet/youmi/android/a/a/g/f/b;

    invoke-virtual {v2}, Lnet/youmi/android/a/a/g/f/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_1

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    const-string v1, "select * from b5I3kl9i where a=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    :try_start_5
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/f/c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v0

    :try_start_7
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_3
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public a(Ljava/util/List;)Z
    .locals 13

    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v8, "lock"

    monitor-enter v8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lnet/youmi/android/a/a/g/f/a;->b:Lnet/youmi/android/a/a/g/f/b;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/g/f/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_2

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/a/a/g/f/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "a"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "b"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "c"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "d"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "e"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "f"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "g"

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    const-string v4, "b5I3kl9i"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v4

    :goto_2
    cmp-long v4, v6, v4

    if-nez v4, :cond_3

    :try_start_6
    const-string v4, "b5I3kl9i"

    const-string v5, "a=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    invoke-virtual {v3, v4, v10, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-wide v4, v6

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v8

    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v8

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_3
.end method

.method public a(Lnet/youmi/android/a/a/g/f/c;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "lock"

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lnet/youmi/android/a/a/g/f/a;->b:Lnet/youmi/android/a/a/g/f/b;

    invoke-virtual {v4}, Lnet/youmi/android/a/a/g/f/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "d"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/f/c;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "e"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/f/c;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "f"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/f/c;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "g"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/f/c;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "b5I3kl9i"

    const-string v6, "a=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/f/c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    :try_start_4
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "lock"

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lnet/youmi/android/a/a/g/f/a;->b:Lnet/youmi/android/a/a/g/f/b;

    invoke-virtual {v2}, Lnet/youmi/android/a/a/g/f/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_1

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    const-string v1, "select * from b5I3kl9i where b=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    :try_start_5
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/f/c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v0

    :try_start_7
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_3
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/f/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2
.end method
