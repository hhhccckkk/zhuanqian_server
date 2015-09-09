.class Lcn/guomob/android/intwal/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/IntWaWebLayout;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->a(Lcn/guomob/android/intwal/IntWaWebLayout;)Lcn/guomob/android/intwal/af;

    move-result-object v0

    invoke-virtual {v0}, Lcn/guomob/android/intwal/af;->a()I

    move-result v0

    iget-object v1, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcn/guomob/android/intwal/IntWaWebLayout;->n:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x14

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->a(Lcn/guomob/android/intwal/IntWaWebLayout;)Lcn/guomob/android/intwal/af;

    move-result-object v0

    invoke-virtual {v0}, Lcn/guomob/android/intwal/af;->postInvalidate()V

    iget-object v0, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget v1, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/guomob/android/intwal/IntWaWebLayout;->a:I

    iget-object v0, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-static {v0}, Lcn/guomob/android/intwal/IntWaWebLayout;->b(Lcn/guomob/android/intwal/IntWaWebLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/v;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcn/guomob/android/intwal/IntWaWebLayout;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
