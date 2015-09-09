.class Lcom/qidian/intwal/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/QDIntWaActivity;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/QDIntWaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    iget v0, v0, Lcom/qidian/intwal/QDIntWaActivity;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    iget-object v0, v0, Lcom/qidian/intwal/QDIntWaActivity;->c:Lcom/qidian/intwal/c;

    iget-object v1, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    iget v1, v1, Lcom/qidian/intwal/QDIntWaActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/c;->a(I)V

    iget-object v0, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/QDIntWaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    iget v1, v1, Lcom/qidian/intwal/QDIntWaActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/w;->a:Lcom/qidian/intwal/QDIntWaActivity;

    invoke-virtual {v0}, Lcom/qidian/intwal/QDIntWaActivity;->onDestroy()V

    return-void
.end method
