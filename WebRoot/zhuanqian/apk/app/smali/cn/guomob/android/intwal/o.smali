.class Lcn/guomob/android/intwal/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/GuomobIntWaActivity;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/GuomobIntWaActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/o;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/o;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->setResult(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/o;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->onDestroy()V

    return-void
.end method
