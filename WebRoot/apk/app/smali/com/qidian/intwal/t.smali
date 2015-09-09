.class Lcom/qidian/intwal/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/QDAlertActivity;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/QDAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    iget v0, v0, Lcom/qidian/intwal/QDAlertActivity;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    iget-object v0, v0, Lcom/qidian/intwal/QDAlertActivity;->b:Lcom/qidian/intwal/c;

    iget-object v1, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    iget v1, v1, Lcom/qidian/intwal/QDAlertActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/c;->a(I)V

    iget-object v0, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/QDAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    iget v1, v1, Lcom/qidian/intwal/QDAlertActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    invoke-virtual {v0}, Lcom/qidian/intwal/QDAlertActivity;->sendBrocastCancel()V

    :cond_0
    iget-object v0, p0, Lcom/qidian/intwal/t;->a:Lcom/qidian/intwal/QDAlertActivity;

    invoke-virtual {v0}, Lcom/qidian/intwal/QDAlertActivity;->finish()V

    return-void
.end method
