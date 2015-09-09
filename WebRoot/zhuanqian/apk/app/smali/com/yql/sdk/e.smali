.class public Lcom/yql/sdk/e;
.super Ljava/lang/Object;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yql/sdk/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "http://api.android.dianru.com/active/android_apk.do?"

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x41

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    const-string v0, "BHALALAPEFFAFABOAPBGFBBOBBBLANBABGBLFBBLBGBOBBANAKFBBMBABC"

    return-object v0
.end method


# virtual methods
.method public b(ZLjava/lang/String;Ljava/lang/String;)V
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
