.class Lcn/guomob/android/intwal/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/w;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/w;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/x;->a:Lcn/guomob/android/intwal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/x;->a:Lcn/guomob/android/intwal/w;

    invoke-static {v0}, Lcn/guomob/android/intwal/w;->a(Lcn/guomob/android/intwal/w;)Lcn/guomob/android/intwal/IntWaWebLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->goback()V

    return-void
.end method
