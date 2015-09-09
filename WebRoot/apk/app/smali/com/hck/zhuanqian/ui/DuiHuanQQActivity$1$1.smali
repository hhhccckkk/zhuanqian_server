.class Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1$1;
.super Ljava/lang/Object;
.source "DuiHuanQQActivity.java"

# interfaces
.implements Lcom/hck/zhuanqian/view/AlertDialogs$OneBtOnclick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->onSuccess(ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1$1;->this$1:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(I)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1$1;->this$1:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;

    #getter for: Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;->access$0(Lcom/hck/zhuanqian/ui/DuiHuanQQActivity$1;)Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/ui/DuiHuanQQActivity;->finish()V

    .line 173
    return-void
.end method
