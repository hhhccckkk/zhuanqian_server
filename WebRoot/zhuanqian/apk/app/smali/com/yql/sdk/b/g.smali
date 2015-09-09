.class final Lcom/yql/sdk/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yql/sdk/b/e;

.field private final synthetic b:Lcom/yql/sdk/b/c;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yql/sdk/b/e;Lcom/yql/sdk/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/yql/sdk/b/g;->b:Lcom/yql/sdk/b/c;

    iput-object p3, p0, Lcom/yql/sdk/b/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yql/sdk/b/g;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/b/g;->b:Lcom/yql/sdk/b/c;

    iget-object v1, p0, Lcom/yql/sdk/b/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/yql/sdk/b/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yql/sdk/b/c;->a(Ljava/lang/String;)V

    return-void
.end method
