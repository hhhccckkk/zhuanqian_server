.class public Lcn/sharesdk/alipay/share/AlipayHandlerActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcn/sharesdk/alipay/share/AlipayHandlerActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/sharesdk/alipay/share/b;->a()Lcn/sharesdk/alipay/share/b;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/alipay/share/AlipayHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/sharesdk/alipay/share/AlipayHandlerActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcn/sharesdk/alipay/share/b;->a()Lcn/sharesdk/alipay/share/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/sharesdk/alipay/share/AlipayHandlerActivity;->finish()V

    return-void
.end method
