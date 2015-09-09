.class Lcn/sharesdk/tencent/qq/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/m;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/m;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    new-instance v0, Lcn/sharesdk/tencent/qq/o;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/o;-><init>(Lcn/sharesdk/tencent/qq/n;)V

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/o;->start()V

    return-void
.end method
