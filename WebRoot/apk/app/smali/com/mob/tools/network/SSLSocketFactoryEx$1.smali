.class Lcom/mob/tools/network/SSLSocketFactoryEx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/network/SSLSocketFactoryEx;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/SSLSocketFactoryEx;)V
    .locals 0
    .parameter "this$0"

    .prologue
    iput-object p1, p0, Lcom/mob/tools/network/SSLSocketFactoryEx$1;->this$0:Lcom/mob/tools/network/SSLSocketFactoryEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
