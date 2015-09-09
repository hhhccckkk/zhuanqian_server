.class Lcn/yeeguo/Yeeguo$1;
.super Landroid/os/Handler;
.source "Yeeguo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yeeguo/Yeeguo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/Yeeguo;


# direct methods
.method constructor <init>(Lcn/yeeguo/Yeeguo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/Yeeguo$1;->this$0:Lcn/yeeguo/Yeeguo;

    .line 372
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 374
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->addShowTips(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
