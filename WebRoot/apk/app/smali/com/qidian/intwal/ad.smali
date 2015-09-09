.class Lcom/qidian/intwal/ad;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/ac;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/ad;->a:Lcom/qidian/intwal/ac;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/qidian/intwal/ac;->a(D)V

    const-string v1, "voltage"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/qidian/intwal/ac;->a(I)V

    const-string v1, "temperature"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/qidian/intwal/ac;->b(D)V

    invoke-static {}, Lcom/qidian/intwal/ac;->i()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/qidian/intwal/ac;->j()D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Lcom/qidian/intwal/ac;->k()D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-lez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/qidian/intwal/ad;->a:Lcom/qidian/intwal/ac;

    invoke-virtual {v1, v0}, Lcom/qidian/intwal/ac;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
