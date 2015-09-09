.class Lcom/datouniao/AdPublisher/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/h;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/h;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->finish()V

    return-void
.end method
