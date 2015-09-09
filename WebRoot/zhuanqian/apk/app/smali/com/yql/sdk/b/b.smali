.class public Lcom/yql/sdk/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yql/sdk/b/b;->a:Ljava/lang/String;

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/yql/sdk/b/b;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yql/sdk/b/b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yql/sdk/b/b;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/yql/sdk/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yql/sdk/b/b;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/yql/sdk/b/b;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/yql/sdk/b/b;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yql/sdk/b/b;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/yql/sdk/b/b;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/yql/sdk/b/b;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yql/sdk/b/b;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/yql/sdk/b/b;->c:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/yql/sdk/b/b;-><init>(Ljava/lang/String;I)V

    iput-boolean p2, p0, Lcom/yql/sdk/b/b;->c:Z

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/yql/sdk/b/b;->b:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yql/sdk/b/b;->d:Ljava/util/List;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yql/sdk/b/b;->c:Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yql/sdk/b/b;->d:Ljava/util/List;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yql/sdk/b/b;->c:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yql/sdk/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/yql/sdk/b/b;->b:I

    return v0
.end method
