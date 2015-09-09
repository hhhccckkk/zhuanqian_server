.class final Lcom/yql/sdk/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yql/sdk/b/e;

.field private final synthetic b:Lcom/yql/sdk/b/c;

.field private final synthetic c:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/yql/sdk/b/e;Lcom/yql/sdk/b/c;Ljava/io/IOException;)V
    .locals 0

    iput-object p2, p0, Lcom/yql/sdk/b/h;->b:Lcom/yql/sdk/b/c;

    iput-object p3, p0, Lcom/yql/sdk/b/h;->c:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yql/sdk/b/h;->b:Lcom/yql/sdk/b/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u539f\u56e0\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yql/sdk/b/h;->c:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
