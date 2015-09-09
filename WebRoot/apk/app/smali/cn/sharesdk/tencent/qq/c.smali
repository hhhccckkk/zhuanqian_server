.class Lcn/sharesdk/tencent/qq/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/QQ;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/QQ;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/tencent/qq/QQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/tencent/qq/QQ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->a(Lcn/sharesdk/tencent/qq/QQ;Z)Z

    return-void
.end method
