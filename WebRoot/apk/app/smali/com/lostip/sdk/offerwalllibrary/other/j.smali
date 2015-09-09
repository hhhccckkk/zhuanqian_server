.class Lcom/lostip/sdk/offerwalllibrary/other/j;
.super Lcom/lostip/sdk/offerwalllibrary/other/aj;


# static fields
.field private static a:Lcom/lostip/sdk/offerwalllibrary/other/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/j;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/j;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/other/j;->a:Lcom/lostip/sdk/offerwalllibrary/other/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;-><init>()V

    return-void
.end method

.method protected static a(Lcom/lostip/sdk/offerwalllibrary/other/a;Lcom/lostip/sdk/offerwalllibrary/other/f;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lostip/sdk/offerwalllibrary/other/a;",
            "Lcom/lostip/sdk/offerwalllibrary/other/f",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/k;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/a;Lcom/lostip/sdk/offerwalllibrary/other/f;Lcom/lostip/sdk/offerwalllibrary/other/k;)V

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/j;->a:Lcom/lostip/sdk/offerwalllibrary/other/j;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(Lcom/lostip/sdk/offerwalllibrary/other/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/other/k",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/s;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->c(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\uff1a\u8bf7\u6c42ClientId\u9519\u8bef\u6b21\u6570\u8d85\u9650\u5236~"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/d;->c()Lcom/lostip/sdk/offerwalllibrary/other/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://mydev.adcocoa.com/phone/index.php"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/l;->a(Ljava/net/URL;Lcom/lostip/sdk/offerwalllibrary/other/a;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->a:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->a()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a(Lcom/lostip/sdk/offerwalllibrary/entity/f;)V

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->c(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/a;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;I)V

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/j;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->x:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v1, v2, :cond_3

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;I)V

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->a()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/entity/f;

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b(Lcom/lostip/sdk/offerwalllibrary/entity/f;)V

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/j;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->y:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->z:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;I)V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a(Lcom/lostip/sdk/offerwalllibrary/other/b;)V

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/j;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->A:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b(Lcom/lostip/sdk/offerwalllibrary/other/b;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v1

    sget-object v2, Lcom/lostip/sdk/offerwalllibrary/other/e;->B:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->b(Lcom/lostip/sdk/offerwalllibrary/other/b;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->a()Lcom/lostip/sdk/offerwalllibrary/manager/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/manager/b;->c(Lcom/lostip/sdk/offerwalllibrary/other/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lostip/sdk/offerwalllibrary/other/k",
            "<TT;>;)",
            "Lcom/lostip/sdk/offerwalllibrary/other/k",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/f;

    move-result-object v0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->c(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Lcom/lostip/sdk/offerwalllibrary/other/a;)V

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://mydev.adcocoa.com/phone/index.php"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->c(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/l;->a(Ljava/net/URL;Lcom/lostip/sdk/offerwalllibrary/other/a;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;Lcom/lostip/sdk/offerwalllibrary/other/b;)V

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v0

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/e;->c:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/j;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->s:Lcom/lostip/sdk/offerwalllibrary/other/e;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->a(Lcom/lostip/sdk/offerwalllibrary/other/e;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;Lcom/lostip/sdk/offerwalllibrary/other/b;)V

    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/f;

    move-result-object v0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->f(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v0

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/e;->w:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/e;->u:Lcom/lostip/sdk/offerwalllibrary/other/e;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->a(Lcom/lostip/sdk/offerwalllibrary/other/e;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;Lcom/lostip/sdk/offerwalllibrary/other/b;)V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/f;

    move-result-object v1

    iget-object v1, v1, Lcom/lostip/sdk/offerwalllibrary/other/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/bc;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/k;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/k;

    invoke-virtual {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/other/j;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/other/k;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lostip/sdk/offerwalllibrary/other/k",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v0

    sget-object v1, Lcom/lostip/sdk/offerwalllibrary/other/e;->a:Lcom/lostip/sdk/offerwalllibrary/other/e;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/f;

    move-result-object v0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->f(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v2

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->g(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->b(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/f;

    move-result-object v0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->f(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v2

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/k;->e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostip/sdk/offerwalllibrary/other/b;->b()Lcom/lostip/sdk/offerwalllibrary/other/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/k;

    invoke-virtual {p0, v0, p2}, Lcom/lostip/sdk/offerwalllibrary/other/j;->a(Lcom/lostip/sdk/offerwalllibrary/other/k;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
