.class Lcom/datouniao/AdPublisher/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/f;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/f;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->b(Lcom/datouniao/AdPublisher/AdsOffersWebView;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/b/a;->setVisibility(I)V

    return-void
.end method
