.class public Lcom/datouniao/AdPublisher/utils/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/datouniao/AdPublisher/utils/a;


# instance fields
.field protected a:Landroid/content/SharedPreferences;

.field protected b:Landroid/content/SharedPreferences$Editor;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->d:Landroid/content/Context;

    const-string v1, "datouniao_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/utils/a;->c:Lcom/datouniao/AdPublisher/utils/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datouniao/AdPublisher/utils/a;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/utils/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/datouniao/AdPublisher/utils/a;->c:Lcom/datouniao/AdPublisher/utils/a;

    :cond_0
    sget-object v0, Lcom/datouniao/AdPublisher/utils/a;->c:Lcom/datouniao/AdPublisher/utils/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
