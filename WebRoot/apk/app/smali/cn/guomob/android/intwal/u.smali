.class Lcn/guomob/android/intwal/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/s;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/s;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/u;->a:Lcn/guomob/android/intwal/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
