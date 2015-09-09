.class final Lcom/bb/dd/b/b;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/bb/dd/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/bb/dd/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bb/dd/b/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bb/dd/b/b;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/bb/dd/c/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bb/dd/a/a;->a()Lcom/bb/dd/a/a;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    invoke-static {v0}, Lcom/bb/dd/b/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bb/dd/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bb/dd/b/d;->a()Lcom/bb/dd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/d;->c()V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-static {}, Lcom/bb/dd/c/b;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bb/dd/b/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bb/dd/b/b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/bb/dd/b/b;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bb/dd/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/bb/dd/b/c;->a()Lcom/bb/dd/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb/dd/b/c;->c()V

    :cond_0
    return-void
.end method
