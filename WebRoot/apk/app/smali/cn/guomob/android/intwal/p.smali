.class Lcn/guomob/android/intwal/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/GuomobIntWaActivity;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/GuomobIntWaActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    iget v0, v0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    iget-object v0, v0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->c:Lcn/guomob/android/intwal/d;

    iget-object v1, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    iget v1, v1, Lcn/guomob/android/intwal/GuomobIntWaActivity;->b:I

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/d;->a(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    iget v1, v1, Lcn/guomob/android/intwal/GuomobIntWaActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/p;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->onDestroy()V

    return-void
.end method
