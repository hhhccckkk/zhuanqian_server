.class Lcom/dc/wall/b/b;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field final synthetic d:Lcom/dc/wall/b/a;


# direct methods
.method public constructor <init>(Lcom/dc/wall/b/a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/dc/wall/b/b;->d:Lcom/dc/wall/b/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/dc/wall/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dc/wall/b/b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/dc/wall/b/b;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/dc/wall/a/a;->a()Lcom/dc/wall/a/a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/dc/wall/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dc/wall/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dc/wall/b/d;->a()Lcom/dc/wall/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/dc/wall/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dc/wall/b/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-static {}, Lcom/dc/wall/c/d;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dc/wall/b/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dc/wall/b/b;->b:Ljava/lang/String;

    iget v4, p0, Lcom/dc/wall/b/b;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dc/wall/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/dc/wall/b/c;->a()Lcom/dc/wall/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dc/wall/b/c;->c()V

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dc/wall/b/b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dc/wall/b/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
