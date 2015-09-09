.class public Lcom/lostip/sdk/offerwalllibrary/entity/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "event_type"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "ad_token"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "message"
    .end annotation
.end field

.field public d:Ljava/lang/Long;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "event_time"
    .end annotation
.end field

.field private final e:J

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->t:Lcom/lostip/sdk/offerwalllibrary/other/r;

    iget v0, v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lostip/sdk/offerwalllibrary/entity/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->e:J

    iget-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->e:J

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->n()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->d:Ljava/lang/Long;

    return-void
.end method

.method private a(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->g:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->e:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->l:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->m:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/other/r;->o:Lcom/lostip/sdk/offerwalllibrary/other/r;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-wide v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->e:J

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->n()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->d:Ljava/lang/Long;

    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->g:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->f:Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->f:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/r;->a(I)Lcom/lostip/sdk/offerwalllibrary/other/r;

    move-result-object v1

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->g:Ljava/lang/Integer;

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->g:Ljava/lang/Integer;

    :cond_0
    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/entity/m;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->a(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->b(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->c(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->d(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/m;->e(Lcom/lostip/sdk/offerwalllibrary/other/r;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
