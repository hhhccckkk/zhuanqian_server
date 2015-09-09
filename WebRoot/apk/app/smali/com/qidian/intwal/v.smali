.class Lcom/qidian/intwal/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/QDIntWaActivity;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/QDIntWaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/v;->a:Lcom/qidian/intwal/QDIntWaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/v;->a:Lcom/qidian/intwal/QDIntWaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/QDIntWaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/qidian/intwal/v;->a:Lcom/qidian/intwal/QDIntWaActivity;

    invoke-virtual {v0}, Lcom/qidian/intwal/QDIntWaActivity;->onDestroy()V

    return-void
.end method
