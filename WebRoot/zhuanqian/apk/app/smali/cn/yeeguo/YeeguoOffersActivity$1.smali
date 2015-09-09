.class Lcn/yeeguo/YeeguoOffersActivity$1;
.super Landroid/os/Handler;
.source "YeeguoOffersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yeeguo/YeeguoOffersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/YeeguoOffersActivity;


# direct methods
.method constructor <init>(Lcn/yeeguo/YeeguoOffersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    .line 243
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcn/yeeguo/YeeguoHttpRequest;->sensor_xyz(Landroid/content/Context;Ljava/lang/String;)J

    .line 245
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    .line 244
    invoke-static {v0}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v0

    .line 246
    const-string v1, "sensor_listener"

    const/4 v2, 0x1

    .line 245
    invoke-virtual {v0, v1, v2}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$0(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$1(Lcn/yeeguo/YeeguoOffersActivity;)Lcn/yeeguo/YeeguoSensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$0(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yeeguo/YeeguoOffersActivity$1;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->sensorListener:Lcn/yeeguo/YeeguoSensorEventListener;
    invoke-static {v1}, Lcn/yeeguo/YeeguoOffersActivity;->access$1(Lcn/yeeguo/YeeguoOffersActivity;)Lcn/yeeguo/YeeguoSensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
    .end packed-switch
.end method
