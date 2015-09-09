.class Lcom/hck/zhuanqian/ui/MessageActivity$3;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MessageActivity;->showDialog(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

.field private final synthetic val$id:J

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MessageActivity;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$3;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    iput-wide p2, p0, Lcom/hck/zhuanqian/ui/MessageActivity$3;->val$id:J

    iput p4, p0, Lcom/hck/zhuanqian/ui/MessageActivity$3;->val$pos:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/MessageActivity$3;->this$0:Lcom/hck/zhuanqian/ui/MessageActivity;

    iget-wide v1, p0, Lcom/hck/zhuanqian/ui/MessageActivity$3;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/hck/zhuanqian/ui/MessageActivity$3;->val$pos:I

    #calls: Lcom/hck/zhuanqian/ui/MessageActivity;->deleteMsg(Ljava/lang/Long;I)V
    invoke-static {v0, v1, v2}, Lcom/hck/zhuanqian/ui/MessageActivity;->access$6(Lcom/hck/zhuanqian/ui/MessageActivity;Ljava/lang/Long;I)V

    .line 127
    return-void
.end method
