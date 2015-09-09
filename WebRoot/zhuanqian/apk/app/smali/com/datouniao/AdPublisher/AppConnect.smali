.class public Lcom/datouniao/AdPublisher/AppConnect;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/datouniao/AdPublisher/AppConnect;

.field private static c:Lcom/datouniao/AdPublisher/w;

.field private static w:Lcom/datouniao/AdPublisher/GetAmountNotifier;

.field private static x:Lcom/datouniao/AdPublisher/AddNotifier;

.field private static y:Lcom/datouniao/AdPublisher/SpendNotifier;

.field private static z:Lcom/datouniao/AdPublisher/ReceiveNotifier;


# instance fields
.field private A:Lcom/datouniao/AdPublisher/o;

.field private B:Lcom/datouniao/AdPublisher/l;

.field private C:Lcom/datouniao/AdPublisher/n;

.field private D:Lcom/datouniao/AdPublisher/m;

.field private E:Lcom/datouniao/AdPublisher/a;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "AppConnect"

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->a:Ljava/lang/String;

    sput-object v1, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    sput-object v1, Lcom/datouniao/AdPublisher/AppConnect;->c:Lcom/datouniao/AdPublisher/w;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->v:Ljava/lang/String;

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->A:Lcom/datouniao/AdPublisher/o;

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->B:Lcom/datouniao/AdPublisher/l;

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->C:Lcom/datouniao/AdPublisher/n;

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->D:Lcom/datouniao/AdPublisher/m;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    sput-object p5, Lcom/datouniao/AdPublisher/AppConnect;->z:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    invoke-direct {p0}, Lcom/datouniao/AdPublisher/AppConnect;->h()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_app_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_client_user_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_secret_key"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/utils/a;->a()Z

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "udid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "device_name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "device_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "os_version="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "country_code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "language_code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "app_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "screen_density="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "screen_width="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "screen_height="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "sdk_version=12&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "userID="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "netType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "place_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-string v1, "com.datouniao.AdPublisher.AdsService"

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-class v2, Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->z:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/datouniao/AdPublisher/a;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    sget-object v2, Lcom/datouniao/AdPublisher/AppConnect;->z:Lcom/datouniao/AdPublisher/ReceiveNotifier;

    invoke-direct {v0, v1, v2}, Lcom/datouniao/AdPublisher/a;-><init>(Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->E:Lcom/datouniao/AdPublisher/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.datouniao.AdPublish.ActivityAdsApp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->E:Lcom/datouniao/AdPublisher/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    new-instance v0, Lcom/datouniao/AdPublisher/l;

    invoke-direct {v0, p0, v3}, Lcom/datouniao/AdPublisher/l;-><init>(Lcom/datouniao/AdPublisher/AppConnect;Lcom/datouniao/AdPublisher/l;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->B:Lcom/datouniao/AdPublisher/l;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->B:Lcom/datouniao/AdPublisher/l;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method static synthetic a()Lcom/datouniao/AdPublisher/w;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->c:Lcom/datouniao/AdPublisher/w;

    return-object v0
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/datouniao/AdPublisher/y;->a()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/AppConnect;->m:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/datouniao/AdPublisher/z;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/datouniao/AdPublisher/GetAmountNotifier;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->w:Lcom/datouniao/AdPublisher/GetAmountNotifier;

    return-object v0
.end method

.method static synthetic b(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/AppConnect;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/datouniao/AdPublisher/z;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Amount"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/datouniao/AdPublisher/AppConnect;->w:Lcom/datouniao/AdPublisher/GetAmountNotifier;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/datouniao/AdPublisher/GetAmountNotifier;->GetAmountResponse(Ljava/lang/String;F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Lcom/datouniao/AdPublisher/SpendNotifier;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->y:Lcom/datouniao/AdPublisher/SpendNotifier;

    return-object v0
.end method

.method static synthetic c(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/AppConnect;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {p1}, Lcom/datouniao/AdPublisher/z;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Success"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Amount"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CurrencyName"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/datouniao/AdPublisher/AppConnect;->y:Lcom/datouniao/AdPublisher/SpendNotifier;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-interface {v3, v1, v2}, Lcom/datouniao/AdPublisher/SpendNotifier;->GetSpendResponse(Ljava/lang/String;F)V

    :goto_0
    return v0

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ErrorMsg"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datouniao/AdPublisher/AppConnect;->y:Lcom/datouniao/AdPublisher/SpendNotifier;

    invoke-interface {v2, v1}, Lcom/datouniao/AdPublisher/SpendNotifier;->GetSpendResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()Lcom/datouniao/AdPublisher/AddNotifier;
    .locals 1

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->x:Lcom/datouniao/AdPublisher/AddNotifier;

    return-object v0
.end method

.method static synthetic d(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/AppConnect;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {p1}, Lcom/datouniao/AdPublisher/z;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Success"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Amount"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CurrencyName"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/datouniao/AdPublisher/AppConnect;->x:Lcom/datouniao/AdPublisher/AddNotifier;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-interface {v3, v1, v2}, Lcom/datouniao/AdPublisher/AddNotifier;->GetAddResponse(Ljava/lang/String;F)V

    :goto_0
    return v0

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ErrorMsg"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/datouniao/AdPublisher/z;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datouniao/AdPublisher/AppConnect;->x:Lcom/datouniao/AdPublisher/AddNotifier;

    invoke-interface {v2, v1}, Lcom/datouniao/AdPublisher/AddNotifier;->GetAddResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/datouniao/AdPublisher/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/datouniao/AdPublisher/n;-><init>(Lcom/datouniao/AdPublisher/AppConnect;Lcom/datouniao/AdPublisher/n;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->C:Lcom/datouniao/AdPublisher/n;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->C:Lcom/datouniao/AdPublisher/n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/AppConnect;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/datouniao/AdPublisher/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/datouniao/AdPublisher/o;-><init>(Lcom/datouniao/AdPublisher/AppConnect;Lcom/datouniao/AdPublisher/o;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->A:Lcom/datouniao/AdPublisher/o;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->A:Lcom/datouniao/AdPublisher/o;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic g(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->t:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/datouniao/AdPublisher/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/datouniao/AdPublisher/m;-><init>(Lcom/datouniao/AdPublisher/AppConnect;Lcom/datouniao/AdPublisher/m;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->D:Lcom/datouniao/AdPublisher/m;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->D:Lcom/datouniao/AdPublisher/m;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/datouniao/AdPublisher/AppConnect;
    .locals 4

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;
    .locals 3

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, v0, v1, v2, p1}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/datouniao/AdPublisher/AppConnect;
    .locals 3

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1, p1, p2}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;
    .locals 6

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->c:Lcom/datouniao/AdPublisher/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datouniao/AdPublisher/w;

    invoke-direct {v0}, Lcom/datouniao/AdPublisher/w;-><init>()V

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->c:Lcom/datouniao/AdPublisher/w;

    :cond_0
    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    if-nez v0, :cond_1

    new-instance v0, Lcom/datouniao/AdPublisher/AppConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/datouniao/AdPublisher/AppConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    :cond_1
    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    return-object v0
.end method

.method public static getInstance(Lcom/datouniao/AdPublisher/AppConfig;)Lcom/datouniao/AdPublisher/AppConnect;
    .locals 5

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AppConfig;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AppConfig;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AppConfig;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AppConfig;->getClientUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/datouniao/AdPublisher/AppConfig;->getReceiveNotifier()Lcom/datouniao/AdPublisher/ReceiveNotifier;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)Lcom/datouniao/AdPublisher/AppConnect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->u:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "DTN_APP_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    :cond_0
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "DTN_SECRET_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "DTN_PLACE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->v:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-string v3, "datouniao_preference"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "android"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "EMULATOR"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "emulatorDeviceId"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    :try_start_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->p:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->q:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    return-void

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    const-string v4, "000000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v4, "1234567890abcdefghijklmnopqrstuvw"

    move v0, v1

    :goto_4
    const/16 v1, 0x20

    if-lt v0, v1, :cond_9

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emulatorDeviceId"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    double-to-int v1, v5

    rem-int/lit8 v1, v1, 0x1e

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :try_start_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->q:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public AddAmount(FLcom/datouniao/AdPublisher/AddNotifier;)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_app_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_client_user_id"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_secret_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/datouniao/AdPublisher/AppConnect;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/datouniao/AdPublisher/AppConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->u:Ljava/lang/String;

    sput-object p2, Lcom/datouniao/AdPublisher/AppConnect;->x:Lcom/datouniao/AdPublisher/AddNotifier;

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-direct {v0}, Lcom/datouniao/AdPublisher/AppConnect;->g()V

    goto :goto_0
.end method

.method public GetAdsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-class v2, Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientParams="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "secret_key"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetAmount(Lcom/datouniao/AdPublisher/GetAmountNotifier;)V
    .locals 6

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_app_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_client_user_id"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_secret_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/datouniao/AdPublisher/AppConnect;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/datouniao/AdPublisher/AppConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    :cond_0
    sput-object p1, Lcom/datouniao/AdPublisher/AppConnect;->w:Lcom/datouniao/AdPublisher/GetAmountNotifier;

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-direct {v0}, Lcom/datouniao/AdPublisher/AppConnect;->e()V

    :cond_1
    return-void
.end method

.method public ShowAdsOffers()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/AppConnect;->ShowAdsOffers(Ljava/lang/String;)V

    return-void
.end method

.method public ShowAdsOffers(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const-class v2, Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientParams="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "secret_key"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    iget-object v2, p0, Lcom/datouniao/AdPublisher/AppConnect;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SpendAmount(FLcom/datouniao/AdPublisher/SpendNotifier;)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_app_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_client_user_id"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_secret_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/datouniao/AdPublisher/AppConnect;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/datouniao/AdPublisher/AppConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datouniao/AdPublisher/ReceiveNotifier;)V

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->t:Ljava/lang/String;

    sput-object p2, Lcom/datouniao/AdPublisher/AppConnect;->y:Lcom/datouniao/AdPublisher/SpendNotifier;

    sget-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-direct {v0}, Lcom/datouniao/AdPublisher/AppConnect;->f()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->E:Lcom/datouniao/AdPublisher/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/AppConnect;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/AppConnect;->E:Lcom/datouniao/AdPublisher/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/datouniao/AdPublisher/AppConnect;->b:Lcom/datouniao/AdPublisher/AppConnect;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
