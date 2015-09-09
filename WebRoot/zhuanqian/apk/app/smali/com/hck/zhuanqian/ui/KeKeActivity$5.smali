.class Lcom/hck/zhuanqian/ui/KeKeActivity$5;
.super Ljava/lang/Object;
.source "KeKeActivity.java"

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/KeKeActivity;->huafei(I)V
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$5;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$5;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/KeKeActivity;->finish()V

    .line 126
    return-void
.end method

.method public onSucceed(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 121
    return-void
.end method

.method public bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/Point;

    invoke-virtual {p0, p1}, Lcom/hck/zhuanqian/ui/KeKeActivity$5;->onSucceed(Lcom/lostip/sdk/offerwalllibrary/entity/Point;)V

    return-void
.end method
