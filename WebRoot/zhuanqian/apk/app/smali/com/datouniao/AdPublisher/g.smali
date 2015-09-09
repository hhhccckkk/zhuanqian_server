.class Lcom/datouniao/AdPublisher/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/g;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/g;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->c(Lcom/datouniao/AdPublisher/AdsOffersWebView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Lcom/datouniao/AdPublisher/AdsOffersWebView;I)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/g;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->d(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V

    return-void
.end method
