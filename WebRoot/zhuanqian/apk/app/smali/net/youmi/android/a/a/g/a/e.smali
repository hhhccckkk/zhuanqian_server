.class public Lnet/youmi/android/a/a/g/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/a/a/g/a/e;

.field private static b:Lnet/youmi/android/a/a/g/a/f;


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
    new-instance v0, Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/youmi/android/a/a/g/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;
    .locals 2

    const-class v1, Lnet/youmi/android/a/a/g/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/a/g/a/e;->a:Lnet/youmi/android/a/a/g/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/a/a/g/a/e;

    invoke-direct {v0, p0}, Lnet/youmi/android/a/a/g/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/a/a/g/a/e;->a:Lnet/youmi/android/a/a/g/a/e;

    :cond_0
    sget-object v0, Lnet/youmi/android/a/a/g/a/e;->a:Lnet/youmi/android/a/a/g/a/e;
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

.method private b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/a/g;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lnet/youmi/android/a/a/g/a/g;

    invoke-direct {v1}, Lnet/youmi/android/a/a/g/a/g;-><init>()V

    const-string v2, "a"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/a/g;->a(Ljava/lang/String;)V

    const-string v2, "c"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/a/g;->c(Ljava/lang/String;)V

    const-string v2, "b"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/a/g;->b(Ljava/lang/String;)V

    const-string v2, "d"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/youmi/android/a/a/g/a/g;->a(J)V

    const-string v2, "e"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/youmi/android/a/a/g/a/g;->b(J)V

    const-string v2, "f"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/a/g;->a(I)V

    const-string v2, "g"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/youmi/android/a/a/g/a/g;->c(J)V

    const-string v2, "i"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/a/g;->d(Ljava/lang/String;)V

    const-string v2, "h"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/g/a/g;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

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
.method public a()V
    .locals 7

    const/4 v0, 0x0

    const-string v2, "lock"

    monitor-enter v2

    :try_start_0
    sget-object v1, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_2
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "f"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "d4fI98p"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    :try_start_4
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_5
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v3, "lock"

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v4}, Lnet/youmi/android/a/a/g/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_1

    :try_start_2
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

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
    const-string v4, "d4fI98p"

    const-string v5, "a=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :try_start_4
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public a(Lnet/youmi/android/a/a/g/a/g;)Z
    .locals 9

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v6, "lock"

    monitor-enter v6

    :try_start_0
    sget-object v2, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v2}, Lnet/youmi/android/a/a/g/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "a"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "c"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "d"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->d()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "e"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->e()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "f"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->h()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "g"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->f()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "i"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "h"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v3, "d4fI98p"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v2

    :goto_1
    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v6

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-wide v2, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v6

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Ljava/lang/String;)Lnet/youmi/android/a/a/g/a/g;
    .locals 12

    const/4 v9, 0x0

    const-string v10, "lock"

    monitor-enter v10

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    const-string v1, "d4fI98p"

    const/4 v2, 0x0

    const-string v3, "a=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    if-nez v1, :cond_1

    :try_start_5
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    goto :goto_0

    :cond_1
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/a/g;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v1

    :try_start_7
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v10

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    :goto_2
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_3
    :try_start_8
    invoke-direct {p0, v9}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v9, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2
.end method

.method public b()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "lock"

    monitor-enter v2

    :try_start_0
    sget-object v3, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/g/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v0

    :cond_0
    :try_start_2
    const-string v3, "d4fI98p"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Lnet/youmi/android/a/a/g/a/g;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "lock"

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v4}, Lnet/youmi/android/a/a/g/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

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

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->d()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-eqz v5, :cond_3

    const-string v5, "d"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->e()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-eqz v5, :cond_4

    const-string v5, "e"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v5

    if-ne v5, v1, :cond_5

    const-string v5, "h"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->f()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-eqz v5, :cond_6

    const-string v5, "g"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "i"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v5, "f"

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "d4fI98p"

    const-string v6, "a=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lnet/youmi/android/a/a/g/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    if-eqz v4, :cond_8

    :try_start_4
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public c()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    const-string v4, "lock"

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v2}, Lnet/youmi/android/a/a/g/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    const-string v1, "select * from d4fI98p"

    const/4 v2, 0x0

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
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

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

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v5

    if-eqz v5, :cond_3

    :try_start_7
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/a/g;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_3
    :try_start_8
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v4

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public c(Lnet/youmi/android/a/a/g/a/g;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()Lnet/youmi/android/a/a/g/a/g;
    .locals 12

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v10, "lock"

    monitor-enter v10

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/a/g/a/e;->b:Lnet/youmi/android/a/a/g/a/f;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    const-string v1, "d4fI98p"

    const/4 v2, 0x0

    const-string v3, "f=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    if-nez v1, :cond_1

    :try_start_5
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    goto :goto_0

    :cond_1
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/Cursor;)Lnet/youmi/android/a/a/g/a/g;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v1

    :try_start_7
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v10

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    :goto_2
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_3
    :try_start_8
    invoke-direct {p0, v9}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/a/a/g/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v9, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2
.end method
