.class Lcom/hck/zhuanqian/ui/DuoMengActivity$3;
.super Ljava/lang/Object;
.source "DuoMengActivity.java"

# interfaces
.implements Lcn/aow/android/DListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DuoMengActivity;->huafei(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

.field private final synthetic val$point:I


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    iput p2, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;->val$point:I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->size:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$3(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    iget v1, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;->val$point:I

    #calls: Lcom/hck/zhuanqian/ui/DuoMengActivity;->huafei(I)V
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$2(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 119
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/DuoMengActivity$3;->this$0:Lcom/hck/zhuanqian/ui/DuoMengActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->size:I
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$3(Lcom/hck/zhuanqian/ui/DuoMengActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/hck/zhuanqian/ui/DuoMengActivity;->size:I
    invoke-static {v0, v1}, Lcom/hck/zhuanqian/ui/DuoMengActivity;->access$4(Lcom/hck/zhuanqian/ui/DuoMengActivity;I)V

    .line 121
    :cond_0
    return-void
.end method

.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 113
    return-void
.end method
