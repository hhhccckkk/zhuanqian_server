.class Lcom/datouniao/AdPublisher/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/a;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/datouniao/AdPublisher/a;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/b;->a:Lcom/datouniao/AdPublisher/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/datouniao/AdPublisher/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/datouniao/AdPublisher/b;->c:F

    iput p4, p0, Lcom/datouniao/AdPublisher/b;->d:F

    iput-object p5, p0, Lcom/datouniao/AdPublisher/b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/datouniao/AdPublisher/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b;->a:Lcom/datouniao/AdPublisher/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a;->a(Lcom/datouniao/AdPublisher/a;)Lcom/datouniao/AdPublisher/ReceiveNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b;->a:Lcom/datouniao/AdPublisher/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a;->a(Lcom/datouniao/AdPublisher/a;)Lcom/datouniao/AdPublisher/ReceiveNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b;->b:Ljava/lang/String;

    iget v2, p0, Lcom/datouniao/AdPublisher/b;->c:F

    iget v3, p0, Lcom/datouniao/AdPublisher/b;->d:F

    iget-object v4, p0, Lcom/datouniao/AdPublisher/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/datouniao/AdPublisher/b;->f:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/datouniao/AdPublisher/ReceiveNotifier;->GetReceiveResponse(Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
