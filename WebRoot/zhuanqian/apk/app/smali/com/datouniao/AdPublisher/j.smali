.class Lcom/datouniao/AdPublisher/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

.field private final synthetic b:Lcom/datouniao/AdPublisher/a/d;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;Lcom/datouniao/AdPublisher/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/j;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    iput-object p2, p0, Lcom/datouniao/AdPublisher/j;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/j;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/j;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/datouniao/AdPublisher/j;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v2}, Lcom/datouniao/AdPublisher/a/d;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/datouniao/AdPublisher/j;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v3}, Lcom/datouniao/AdPublisher/a/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Lcom/datouniao/AdPublisher/AdsOffersWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
