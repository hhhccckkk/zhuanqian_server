.class Lcom/qidian/intwal/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/n;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/n;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/p;->a:Lcom/qidian/intwal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/qidian/intwal/p;->a:Lcom/qidian/intwal/n;

    invoke-virtual {v0}, Lcom/qidian/intwal/n;->e()V

    return-void
.end method
