.class Lcn/guomob/android/intwal/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/GuomobAlertActivity;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/GuomobAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/l;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/l;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/GuomobAlertActivity;->setResult(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/l;->a:Lcn/guomob/android/intwal/GuomobAlertActivity;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/GuomobAlertActivity;->finish()V

    return-void
.end method
