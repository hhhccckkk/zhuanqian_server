.class abstract Lnet/youmi/android/a/b/h/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/youmi/android/a/b/h/b/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/b/h/b/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lnet/youmi/android/a/b/h/b/c;->a:Lnet/youmi/android/a/b/h/b/b;

    return-void
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

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

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


# virtual methods
.method a()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnet/youmi/android/a/b/h/b/c;->a:Lnet/youmi/android/a/b/h/b/b;

    invoke-virtual {v2}, Lnet/youmi/android/a/b/h/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v0

    :cond_0
    :try_start_2
    const-string v2, "sv"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method a(Lnet/youmi/android/a/b/h/b/j;)Z
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnet/youmi/android/a/b/h/b/c;->a:Lnet/youmi/android/a/b/h/b/b;

    invoke-virtual {v2}, Lnet/youmi/android/a/b/h/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "gt"

    iget-wide v6, p1, Lnet/youmi/android/a/b/h/b/j;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "v0"

    iget v6, p1, Lnet/youmi/android/a/b/h/b/j;->b:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "v1"

    iget v6, p1, Lnet/youmi/android/a/b/h/b/j;->c:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "v2"

    iget v6, p1, Lnet/youmi/android/a/b/h/b/j;->d:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "v3"

    iget v6, p1, Lnet/youmi/android/a/b/h/b/j;->e:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "v4"

    iget v6, p1, Lnet/youmi/android/a/b/h/b/j;->f:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "v5"

    iget v6, p1, Lnet/youmi/android/a/b/h/b/j;->g:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v3, "sv"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v2

    :goto_1
    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    :try_start_4
    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v2

    move-wide v2, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method b()Ljava/util/List;
    .locals 9

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/b/h/b/c;->a:Lnet/youmi/android/a/b/h/b/b;

    invoke-virtual {v0}, Lnet/youmi/android/a/b/h/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    const-string v1, "sv"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "gt"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    if-nez v1, :cond_1

    :try_start_5
    invoke-direct {p0, v2}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v8

    goto :goto_0

    :cond_1
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v3

    if-eqz v3, :cond_2

    :try_start_7
    new-instance v3, Lnet/youmi/android/a/b/h/b/j;

    invoke-direct {v3}, Lnet/youmi/android/a/b/h/b/j;-><init>()V

    const-string v4, "gt"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lnet/youmi/android/a/b/h/b/j;->a:J

    const-string v4, "v0"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lnet/youmi/android/a/b/h/b/j;->b:F

    const-string v4, "v1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lnet/youmi/android/a/b/h/b/j;->c:F

    const-string v4, "v2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lnet/youmi/android/a/b/h/b/j;->d:F

    const-string v4, "v3"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lnet/youmi/android/a/b/h/b/j;->e:F

    const-string v4, "v4"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lnet/youmi/android/a/b/h/b/j;->f:F

    const-string v4, "v5"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lnet/youmi/android/a/b/h/b/j;->g:F

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    :try_start_8
    invoke-direct {p0, v2}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    :goto_2
    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v1}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit p0

    move-object v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_3
    invoke-direct {p0, v2}, Lnet/youmi/android/a/b/h/b/c;->a(Landroid/database/Cursor;)V

    invoke-direct {p0, v8}, Lnet/youmi/android/a/b/h/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2
.end method
