.class Lcn/sharesdk/sina/weibo/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/a;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0, v2}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;Z)Z

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0, v7}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;Z)Z

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, "refresh_token"

    const-string v5, "refresh_token"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, "nickname"

    const-string v5, "userName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, "remind_in"

    const-string v5, "remind_in"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sina sdk oauth info token ===>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sina sdk oauth info expires_in ===>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sina sdk oauth info remind_in ===>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remind_in"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sina sdk oauth info refresh_token ===>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v7, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error. Obtained the code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v7, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0, v2}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;Z)Z

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    return-void
.end method
