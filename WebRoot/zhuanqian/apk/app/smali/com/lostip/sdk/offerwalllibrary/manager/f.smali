.class Lcom/lostip/sdk/offerwalllibrary/manager/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lostip/sdk/offerwalllibrary/other/as;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lostip/sdk/offerwalllibrary/entity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u6062\u590d\u3002"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a()Lcom/lostip/sdk/offerwalllibrary/other/ao;

    move-result-object v0

    iget-object v2, v1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    move-object v1, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 7

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a()Lcom/lostip/sdk/offerwalllibrary/other/ao;

    move-result-object v0

    iget-object v2, p2, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/lostip/sdk/offerwalllibrary/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a()Lcom/lostip/sdk/offerwalllibrary/manager/r;

    move-result-object v0

    invoke-static {p2}, Lcom/lostip/sdk/offerwalllibrary/manager/t;->c(Lcom/lostip/sdk/offerwalllibrary/entity/a;)Lcom/lostip/sdk/offerwalllibrary/entity/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/r;->a(Lcom/lostip/sdk/offerwalllibrary/entity/m;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u8fdb\u884c\u4e2d\u3002"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/manager/f;Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a()Lcom/lostip/sdk/offerwalllibrary/other/ao;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/lostip/sdk/offerwalllibrary/other/ao;->a(Ljava/lang/String;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]\u4e0b\u8f7d\u8fdb\u884c\u4e2d\uff0c\u53ef\u5230\u901a\u77e5\u680f\u67e5\u770b\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne v0, p3, :cond_1

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\uff0c\u4e0b\u8f7d\u4efb\u52a1\u6682\u505c\u3002"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p3}, Lcom/lostip/sdk/offerwalllibrary/other/q;->a(I)Lcom/lostip/sdk/offerwalllibrary/other/q;

    move-result-object v0

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/q;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020006

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a()Lcom/lostip/sdk/offerwalllibrary/manager/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FJJFJ)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->a()Lcom/lostip/sdk/offerwalllibrary/manager/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->b(Landroid/content/Context;Lcom/lostip/sdk/offerwalllibrary/entity/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\u5f00\u59cb\u4e0b\u8f7d\uff0c\u53ef\u5230\u901a\u77e5\u680f\u67e5\u770b\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-object p3, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
