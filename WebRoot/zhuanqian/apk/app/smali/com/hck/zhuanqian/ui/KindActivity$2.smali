.class Lcom/hck/zhuanqian/ui/KindActivity$2;
.super Ljava/lang/Object;
.source "KindActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/KindActivity;->setListener()V
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
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/KindActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/KindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/KindActivity$2;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    .line 78
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
    .line 84
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/KindActivity$2;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KindActivity;->kBean:Lcom/hck/zhuanqian/data/KindData;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/KindActivity;->access$4(Lcom/hck/zhuanqian/ui/KindActivity;)Lcom/hck/zhuanqian/data/KindData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/KindData;->getKindBeans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/KindBean;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/KindBean;->getAid()I

    move-result v2

    .line 85
    .local v2, type:I
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/KindActivity$2;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #getter for: Lcom/hck/zhuanqian/ui/KindActivity;->kBean:Lcom/hck/zhuanqian/data/KindData;
    invoke-static {v3}, Lcom/hck/zhuanqian/ui/KindActivity;->access$4(Lcom/hck/zhuanqian/ui/KindActivity;)Lcom/hck/zhuanqian/data/KindData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/KindData;->getKindBeans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hck/zhuanqian/bean/KindBean;

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/KindBean;->getNum()I

    move-result v1

    .line 86
    .local v1, maxSize:I
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/KindActivity$2;->this$0:Lcom/hck/zhuanqian/ui/KindActivity;

    #calls: Lcom/hck/zhuanqian/ui/KindActivity;->startActivity(II)V
    invoke-static {v3, v2, v1}, Lcom/hck/zhuanqian/ui/KindActivity;->access$5(Lcom/hck/zhuanqian/ui/KindActivity;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #maxSize:I
    .end local v2           #type:I
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "\u672a\u77e5\u9519\u8bef \u8bf7\u91cd\u8bd5"

    invoke-static {v3}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    goto :goto_0
.end method
