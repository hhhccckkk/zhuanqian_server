.class public Lcom/datouniao/AdPublisher/AppConfig;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/datouniao/AdPublisher/ReceiveNotifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCtx()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConfig;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getReceiveNotifier()Lcom/datouniao/AdPublisher/ReceiveNotifier;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConfig;->e:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/AppConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public setClientUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/AppConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public setCtx(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/AppConfig;->a:Landroid/content/Context;

    return-void
.end method

.method public setReceiveNotifier(Lcom/datouniao/AdPublisher/ReceiveNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/AppConfig;->e:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/AppConfig;->c:Ljava/lang/String;

    return-void
.end method
