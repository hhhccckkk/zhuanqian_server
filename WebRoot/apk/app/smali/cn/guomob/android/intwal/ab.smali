.class Lcn/guomob/android/intwal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/aa;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/aa;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/ab;->a:Lcn/guomob/android/intwal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/ab;->a:Lcn/guomob/android/intwal/aa;

    iget-object v1, p0, Lcn/guomob/android/intwal/ab;->a:Lcn/guomob/android/intwal/aa;

    invoke-virtual {v1}, Lcn/guomob/android/intwal/aa;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/guomob/android/intwal/aa;->a:Ljava/lang/String;

    return-void
.end method
