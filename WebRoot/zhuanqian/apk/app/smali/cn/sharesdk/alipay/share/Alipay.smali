.class public Lcn/sharesdk/alipay/share/Alipay;
.super Lcn/sharesdk/framework/Platform;


# static fields
.field public static final ACTION_SEND:I = 0x7fffffff

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/sharesdk/alipay/share/Alipay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/alipay/share/Alipay;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/Platform;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 1
    .parameter "action"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 2
    .parameter "permissions"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/alipay/share/Alipay;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .parameter "url"
    .parameter "method"
    .parameter "customerAction"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, filePathes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/16 v4, 0x9

    :try_start_0
    invoke-static {}, Lcn/sharesdk/alipay/share/b;->a()Lcn/sharesdk/alipay/share/b;

    move-result-object v1

    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/sharesdk/alipay/share/Alipay;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/sharesdk/alipay/share/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "The file of libapshare.jar is missing!"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/sharesdk/alipay/share/b;->c()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcn/sharesdk/alipay/share/AlipayClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/alipay/share/AlipayClientNotExistException;-><init>()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v3, 0x9

    invoke-interface {v2, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    new-instance v0, Lcn/sharesdk/alipay/share/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/alipay/share/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    iget-object v2, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/alipay/share/a;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    invoke-virtual {v1, v0}, Lcn/sharesdk/alipay/share/b;->a(Lcn/sharesdk/alipay/share/a;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v1}, Lcn/sharesdk/alipay/share/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcn/sharesdk/alipay/share/AlipayNotSupportedException;

    invoke-direct {v0}, Lcn/sharesdk/alipay/share/AlipayNotSupportedException;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/statistics/b/f$a;
    .locals 6
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/statistics/b/f$a;"
        }
    .end annotation

    .prologue
    .local p2, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/statistics/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/statistics/b/f$a;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, v0, Lcn/sharesdk/framework/statistics/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcn/sharesdk/framework/statistics/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/statistics/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcn/sharesdk/framework/statistics/b/f$a;->b:Ljava/lang/String;

    iput-object v3, v0, Lcn/sharesdk/framework/statistics/b/f$a;->g:Ljava/util/HashMap;

    return-object v0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v2, v0, Lcn/sharesdk/framework/statistics/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_0

    iget-object v2, v0, Lcn/sharesdk/framework/statistics/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "count"
    .parameter "cursor"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "count"
    .parameter "cursor"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "count"
    .parameter "page"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 2
    .parameter "count"
    .parameter "cursor"
    .parameter "account"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/sharesdk/alipay/share/Alipay;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/alipay/share/Alipay;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->a:Ljava/lang/String;

    return-void
.end method

.method public isClientValid()Z
    .locals 3

    invoke-static {}, Lcn/sharesdk/alipay/share/b;->a()Lcn/sharesdk/alipay/share/b;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/alipay/share/Alipay;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/sharesdk/alipay/share/Alipay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/alipay/share/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/sharesdk/alipay/share/b;->d()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 2

    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/alipay/share/Alipay;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->a:Ljava/lang/String;

    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 2
    .parameter "count"
    .parameter "page"
    .parameter "account"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/alipay/share/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method
