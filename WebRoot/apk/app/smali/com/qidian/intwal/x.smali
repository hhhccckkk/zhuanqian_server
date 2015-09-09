.class public Lcom/qidian/intwal/x;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;

.field c:Lcom/qidian/intwal/ScoreManagerCallBack;

.field d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/qidian/intwal/ScoreManagerCallBack;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/x;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/qidian/intwal/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qidian/intwal/x;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/qidian/intwal/x;->c:Lcom/qidian/intwal/ScoreManagerCallBack;

    iput p4, p0, Lcom/qidian/intwal/x;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qidian/intwal/y;

    invoke-direct {v1, p0}, Lcom/qidian/intwal/y;-><init>(Lcom/qidian/intwal/x;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
