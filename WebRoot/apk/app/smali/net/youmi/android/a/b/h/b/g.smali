.class final Lnet/youmi/android/a/b/h/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    new-instance v0, Lnet/youmi/android/a/b/h/b/j;

    invoke-direct {v0}, Lnet/youmi/android/a/b/h/b/j;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/youmi/android/a/b/h/b/j;->a:J

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->b:F

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->c:F

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->d:F

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/h/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/b/h/b/a;->a(Lnet/youmi/android/a/b/h/b/j;)Z

    invoke-static {v4}, Lnet/youmi/android/a/b/h/b/d;->c(Z)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    new-instance v0, Lnet/youmi/android/a/b/h/b/j;

    invoke-direct {v0}, Lnet/youmi/android/a/b/h/b/j;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/youmi/android/a/b/h/b/j;->a:J

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v7, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->b:F

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/h/b/i;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/b/h/b/i;->a(Lnet/youmi/android/a/b/h/b/j;)Z

    invoke-static {v4}, Lnet/youmi/android/a/b/h/b/d;->b(Z)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    new-instance v0, Lnet/youmi/android/a/b/h/b/j;

    invoke-direct {v0}, Lnet/youmi/android/a/b/h/b/j;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/youmi/android/a/b/h/b/j;->a:J

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->b:F

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->c:F

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lnet/youmi/android/a/b/h/b/j;->d:F

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/h/b/h;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/b/h/b/h;->a(Lnet/youmi/android/a/b/h/b/j;)Z

    invoke-static {v4}, Lnet/youmi/android/a/b/h/b/d;->d(Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
