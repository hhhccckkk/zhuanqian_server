.class Lcn/guomob/android/intwal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/aa;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/aa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/ad;->a:Lcn/guomob/android/intwal/aa;

    iput-object p2, p0, Lcn/guomob/android/intwal/ad;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/ad;->a:Lcn/guomob/android/intwal/aa;

    iget-object v1, p0, Lcn/guomob/android/intwal/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/aa;->d(Ljava/lang/String;)V

    return-void
.end method
