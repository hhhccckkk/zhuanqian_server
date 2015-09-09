.class public Lcom/qidian/intwal/q;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QIDIAN"

    sput-object v0, Lcom/qidian/intwal/q;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qidian/intwal/q;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/qidian/intwal/q;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qidian/intwal/q;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
