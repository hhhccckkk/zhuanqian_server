.class Lcom/yql/sdk/internal/DRPluginManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yql/sdk/internal/DRPluginManager$OnFetchProxyServiceClass;


# instance fields
.field final synthetic this$0:Lcom/yql/sdk/internal/DRPluginManager;

.field private final synthetic val$conn:Landroid/content/ServiceConnection;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yql/sdk/internal/DRPluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/internal/DRPluginManager$3;->this$0:Lcom/yql/sdk/internal/DRPluginManager;

    iput-object p2, p0, Lcom/yql/sdk/internal/DRPluginManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/yql/sdk/internal/DRPluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(ILjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yql/sdk/internal/DRPluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/yql/sdk/internal/DRPluginManager$3;->this$0:Lcom/yql/sdk/internal/DRPluginManager;

    #setter for: Lcom/yql/sdk/internal/DRPluginManager;->mResult:I
    invoke-static {v0, p1}, Lcom/yql/sdk/internal/DRPluginManager;->access$0(Lcom/yql/sdk/internal/DRPluginManager;I)V

    return-void
.end method
