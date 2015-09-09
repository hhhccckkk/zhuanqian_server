.class public final Lnet/youmi/android/a/a/e/c/e/b;
.super Lnet/youmi/android/a/a/e/a/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/a/a/e/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lnet/youmi/android/a/a/e/a/b/h;Lnet/youmi/android/a/a/e/a/b/f;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 20

    if-nez p1, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->a()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "a"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "b"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :goto_1
    :try_start_2
    const-string v1, "c"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "b"

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v1, "d"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "e"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v7, v8}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "f"

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v9, "g"

    const-string v10, "a_js"

    move-object/from16 v0, p3

    invoke-static {v0, v9, v10}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "h"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v9, v11}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/youmi/android/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lnet/youmi/android/a/a/e/g/e;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    const/4 v9, 0x1

    if-ne v1, v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    const-wide/16 v11, 0x0

    cmp-long v1, v7, v11

    if-lez v1, :cond_7

    const-wide/16 v11, 0x3e8

    mul-long/2addr v7, v11

    new-instance v1, Lnet/youmi/android/a/a/e/f/d;

    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->e()I

    move-result v11

    invoke-direct/range {v1 .. v11}, Lnet/youmi/android/a/a/e/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;I)V

    :goto_3
    invoke-static {v1}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    new-instance v11, Lnet/youmi/android/a/a/e/f/d;

    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->e()I

    move-result v19

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v19}, Lnet/youmi/android/a/a/e/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v11

    goto :goto_3

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0
.end method
