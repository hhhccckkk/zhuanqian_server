.class public Lcom/qidian/intwal/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;

.field c:Lcom/qidian/intwal/ScoreManagerCallBack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/qidian/intwal/ScoreManagerCallBack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/a;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/qidian/intwal/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qidian/intwal/a;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/qidian/intwal/a;->c:Lcom/qidian/intwal/ScoreManagerCallBack;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qidian/intwal/b;

    invoke-direct {v1, p0}, Lcom/qidian/intwal/b;-><init>(Lcom/qidian/intwal/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
