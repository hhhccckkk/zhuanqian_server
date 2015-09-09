.class public Lcom/qidian/intwal/QDTestLog;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QIDIAN_Test"

    sput-object v0, Lcom/qidian/intwal/QDTestLog;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qidian/intwal/QDTestLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/qidian/intwal/QDTestLog;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qidian/intwal/QDTestLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static openTestLog()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qidian/intwal/QDTestLog;->b:Z

    return-void
.end method
