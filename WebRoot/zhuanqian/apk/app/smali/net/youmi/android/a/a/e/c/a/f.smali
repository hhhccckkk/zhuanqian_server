.class public final Lnet/youmi/android/a/a/e/c/a/f;
.super Lnet/youmi/android/a/a/e/a/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/a/a/e/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lnet/youmi/android/a/a/e/a/b/h;Lnet/youmi/android/a/a/e/a/b/f;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 29

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->a()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lnet/youmi/android/a/a/g/f/a/a;->a(Landroid/content/Context;)V

    const-string v2, "b"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const-string v3, "0"

    const/4 v2, 0x0

    const-string v5, "a"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_11

    const-string v2, "a"

    const/4 v3, 0x0

    invoke-static {v5, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    const-string v2, "b"

    const-wide/16 v6, 0x0

    invoke-static {v5, v2, v6, v7}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_1
    :try_start_2
    const-string v2, "c"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "d"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    if-eqz v2, :cond_10

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_3

    aget-object v8, v5, v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/youmi/android/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lnet/youmi/android/a/a/e/g/e;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v2, "b"

    const-string v3, ""

    invoke-static {v5, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    :goto_3
    const/4 v2, 0x0

    const-string v3, "c"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v2, Lnet/youmi/android/a/a/e/g/b;

    invoke-direct {v2}, Lnet/youmi/android/a/a/e/g/b;-><init>()V

    const-string v4, "a"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/youmi/android/a/a/e/g/b;->a(Ljava/lang/String;)V

    const-string v4, "b"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/youmi/android/a/a/e/g/b;->b(Ljava/lang/String;)V

    const-string v4, "c"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/youmi/android/a/a/e/g/b;->c(Ljava/lang/String;)V

    const-string v4, "d"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/a/a/e/g/b;->d(Ljava/lang/String;)V

    move-object v5, v2

    :goto_4
    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    const/4 v2, 0x2

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const-string v2, "a"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "a"

    const-string v3, "0"

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_5
    invoke-static {v4}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x2

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    const-string v2, "b"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v11

    if-eqz v5, :cond_7

    invoke-virtual {v5, v11}, Lnet/youmi/android/a/a/e/g/b;->a(I)V

    :cond_7
    const-string v2, "c"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    const/4 v2, 0x2

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v2, "d"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    const/4 v2, 0x2

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const-string v2, "e"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v14

    const-string v2, "f"

    const/4 v3, 0x1

    invoke-static {v10, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    move v3, v2

    :goto_6
    const-string v2, "g"

    const/4 v15, 0x0

    invoke-static {v10, v2, v15}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_b

    const/4 v2, 0x2

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    goto :goto_6

    :cond_b
    const-string v2, "h"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v10, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "i"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v10, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "j"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v10, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v18

    const-string v2, "k"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v10, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "l"

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-static {v10, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v20

    const-string v2, "m"

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v10, v2, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v2, v0, :cond_d

    const/4 v2, 0x1

    :goto_7
    const-string v21, "n"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "o"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "p"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "q"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v24

    const-string v25, "r"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v25

    const-string v26, "s"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "t"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v10, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v27, Lnet/youmi/android/a/a/a/a/a;

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v11}, Lnet/youmi/android/a/a/a/a/a;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lnet/youmi/android/a/a/a/a/g;

    invoke-direct {v4}, Lnet/youmi/android/a/a/a/a/g;-><init>()V

    invoke-virtual {v4, v12}, Lnet/youmi/android/a/a/a/a/g;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lnet/youmi/android/a/a/a/a/g;->b(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lnet/youmi/android/a/a/a/a/g;->c(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/g;)V

    new-instance v4, Lnet/youmi/android/a/a/a/a/c;

    invoke-direct {v4}, Lnet/youmi/android/a/a/a/a/c;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lnet/youmi/android/a/a/a/a/c;->i(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/c;)V

    new-instance v4, Lnet/youmi/android/a/a/a/a/d;

    invoke-direct {v4}, Lnet/youmi/android/a/a/a/a/d;-><init>()V

    invoke-virtual {v4, v15}, Lnet/youmi/android/a/a/a/a/d;->a(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lnet/youmi/android/a/a/a/a/d;->b(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lnet/youmi/android/a/a/a/a/d;->b(I)V

    invoke-virtual {v4, v14}, Lnet/youmi/android/a/a/a/a/d;->a(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/d;)V

    new-instance v4, Lnet/youmi/android/a/a/a/a/f;

    invoke-direct {v4}, Lnet/youmi/android/a/a/a/a/f;-><init>()V

    invoke-virtual {v4, v3}, Lnet/youmi/android/a/a/a/a/f;->a(Z)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/f;)V

    invoke-virtual {v4, v9, v13}, Lnet/youmi/android/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v3, Lnet/youmi/android/a/a/e/g/a;

    invoke-direct {v3}, Lnet/youmi/android/a/a/e/g/a;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->a(Lnet/youmi/android/a/a/a/a/a;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->a(I)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->c(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->d(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->e(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lnet/youmi/android/a/a/e/g/a;->a(Z)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->b(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->b(Z)V

    move/from16 v0, v25

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v11, v2

    invoke-virtual {v3, v11, v12}, Lnet/youmi/android/a/a/e/g/a;->a(J)V

    invoke-virtual {v3, v10}, Lnet/youmi/android/a/a/e/g/a;->a(Ljava/lang/String;)V

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lnet/youmi/android/a/a/e/g/b;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3, v5}, Lnet/youmi/android/a/a/e/g/a;->a(Lnet/youmi/android/a/a/e/g/b;)V

    :cond_c
    new-instance v2, Lnet/youmi/android/a/a/e/g/f;

    invoke-direct {v2, v7, v6, v8}, Lnet/youmi/android/a/a/e/g/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v2}, Lnet/youmi/android/a/a/e/a/b/h;->a(Lnet/youmi/android/a/a/e/g/a;Lnet/youmi/android/a/a/e/g/f;)Lnet/youmi/android/a/a/e/a;

    move-result-object v2

    sget-object v3, Lnet/youmi/android/a/a/e/c/a/g;->a:[I

    invoke-virtual {v2}, Lnet/youmi/android/a/a/e/a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x3

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_7

    :pswitch_0
    const/4 v2, 0x4

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    invoke-static {v2}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    move-object v4, v2

    goto/16 :goto_5

    :cond_f
    move-object v5, v2

    goto/16 :goto_4

    :cond_10
    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    goto/16 :goto_3

    :cond_11
    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
