.class Lcn/guomob/android/intwal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/aa;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/aa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/ac;->a:Lcn/guomob/android/intwal/aa;

    iput-object p2, p0, Lcn/guomob/android/intwal/ac;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/guomob/android/intwal/ac;->a:Lcn/guomob/android/intwal/aa;

    iget-object v0, v0, Lcn/guomob/android/intwal/aa;->b:Landroid/app/Activity;

    const-string v1, ".loaderror.txt"

    iget-object v2, p0, Lcn/guomob/android/intwal/ac;->b:Ljava/lang/String;

    const-string v3, "Loading.127"

    invoke-static {v0, v1, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
