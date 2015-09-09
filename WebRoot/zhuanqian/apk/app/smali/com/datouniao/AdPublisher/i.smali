.class Lcom/datouniao/AdPublisher/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/i;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/i;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->finish()V

    return-void
.end method
