.class Lcom/hck/zhuanqian/ui/MessageActivity$2;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MessageActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MessageActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$2;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$2;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity$2;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    #getter for: Lcom/hck/zhuanqian/ui/MessageActivity;->msgData:Lcom/hck/zhuanqian/data/MessageData;
    invoke-static {v0}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$5(Lcom/hck/zhuanqian/ui/MessageActivity;)Lcom/hck/zhuanqian/data/MessageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/MessageData;->getMsgBeans()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hck/zhuanqian/bean/MessageBean;

    invoke-virtual {v0}, Lcom/hck/zhuanqian/bean/MessageBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p3}, Lcom/hck/zhuanqian/ui/MessageActivity;->showDialog(JI)V

    .line 106
    return-void
.end method
