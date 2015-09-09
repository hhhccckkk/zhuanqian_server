.class Lcom/datouniao/AdPublisher/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/p;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/datouniao/AdPublisher/t;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/p;Landroid/content/Context;Lcom/datouniao/AdPublisher/t;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/s;->a:Lcom/datouniao/AdPublisher/p;

    iput-object p2, p0, Lcom/datouniao/AdPublisher/s;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/datouniao/AdPublisher/s;->c:Lcom/datouniao/AdPublisher/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/datouniao/AdPublisher/s;->b:Landroid/content/Context;

    invoke-static {}, Lcom/datouniao/AdPublisher/p;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "prepare_to_download"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/s;->a:Lcom/datouniao/AdPublisher/p;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/p;->e(Lcom/datouniao/AdPublisher/p;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/datouniao/AdPublisher/s;->c:Lcom/datouniao/AdPublisher/t;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/t;->start()V

    return-void
.end method
