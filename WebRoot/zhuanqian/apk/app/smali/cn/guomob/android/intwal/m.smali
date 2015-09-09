.class Lcn/guomob/android/intwal/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/GuomobAlertActivity;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/GuomobAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    iget v0, v0, Lcn/guomob/android/intwal/GuomobAlertActivity;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    iget-object v0, v0, Lcn/guomob/android/intwal/GuomobAlertActivity;->b:Lcn/guomob/android/intwal/d;

    iget-object v1, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    iget v1, v1, Lcn/guomob/android/intwal/GuomobAlertActivity;->a:I

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/d;->a(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/GuomobAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    iget v1, v1, Lcn/guomob/android/intwal/GuomobAlertActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/GuomobAlertActivity;->sendBrocastCancel()V

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/m;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/GuomobAlertActivity;->finish()V

    return-void
.end method
