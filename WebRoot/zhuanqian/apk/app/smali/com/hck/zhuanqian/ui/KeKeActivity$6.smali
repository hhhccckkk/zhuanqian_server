.class Lcom/hck/zhuanqian/ui/KeKeActivity$6;
.super Ljava/lang/Object;
.source "KeKeActivity.java"

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/KeKeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/KeKeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$6;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 145
    return-void
.end method

.method public onSucceed(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$6;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    iget-object v0, v0, Lcom/hck/zhuanqian/ui/KeKeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;->balance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    return-void
.end method

.method public bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {p0, p1}, Lcom/hck/zhuanqian/ui/KeKeActivity$6;->onSucceed(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V

    return-void
.end method
