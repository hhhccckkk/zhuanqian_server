.class Lcn/guomob/android/intwal/ak;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/Service01;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/Service01;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/ak;->a:Lcn/guomob/android/intwal/Service01;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/guomob/android/intwal/ak;->a:Lcn/guomob/android/intwal/Service01;

    iget-object v0, v0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, "GMscoreCall"

    invoke-static {v0, v2}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/guomob/android/intwal/GMScoreCallBack;

    sput-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;

    if-eqz v0, :cond_0

    :cond_1
    sget-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;

    iget-object v2, p0, Lcn/guomob/android/intwal/ak;->a:Lcn/guomob/android/intwal/Service01;

    iget-object v2, v2, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lcn/guomob/android/intwal/GMScoreCallBack;->onSuccess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
