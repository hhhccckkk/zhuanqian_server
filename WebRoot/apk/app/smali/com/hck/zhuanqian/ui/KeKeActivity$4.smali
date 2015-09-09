.class Lcom/hck/zhuanqian/ui/KeKeActivity$4;
.super Ljava/lang/Object;
.source "KeKeActivity.java"

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/LostipOfferWallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/KeKeActivity;->startGetMoney(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
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
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KeKeActivity$4;->this$0:Lcom/hck/zhuanqian/ui/KeKeActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "errorMsg"

    .prologue
    .line 105
    return-void
.end method

.method public bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hck/zhuanqian/ui/KeKeActivity$4;->onSucceed(Ljava/lang/Void;)V

    return-void
.end method

.method public onSucceed(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 101
    return-void
.end method
