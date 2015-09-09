.class final Lcom/yql/sdk/b;
.super Ljava/lang/Object;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yql/sdk/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yql/sdk/a/b;

    iget-object v1, p0, Lcom/yql/sdk/e;->a:Ljava/lang/String;

    new-instance v2, Lcom/yql/sdk/c;

    iget-object v3, p0, Lcom/yql/sdk/e;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/yql/sdk/e;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p3, v4}, Lcom/yql/sdk/c;-><init>(Lcom/yql/sdk/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/yql/sdk/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yql/sdk/a/c;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
