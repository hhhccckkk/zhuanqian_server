.class Lcom/hck/zhuanqian/ui/JiongYouActivity$3;
.super Ljava/lang/Object;
.source "JiongYouActivity.java"

# interfaces
.implements Lcom/jy/func/lner/CheckPointListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/JiongYouActivity;->huafei(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/JiongYouActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/JiongYouActivity$3;->this$0:Lcom/hck/zhuanqian/ui/JiongYouActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/jy/func/lner/ErrorInfo;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 108
    const-string v0, "hck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "huafei onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onResponse(Lcom/jy/func/lner/Point;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 114
    return-void
.end method
