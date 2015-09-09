.class public Lcn/guomob/android/intwal/Service01;
.super Landroid/app/Service;


# static fields
.field static a:Ljava/lang/String;

.field static b:I

.field protected static c:Ljava/lang/String;

.field static d:Ljava/util/Set;

.field protected static e:Landroid/os/Handler;

.field protected static f:Lcn/guomob/android/intwal/GMScoreCallBack;


# instance fields
.field public g:I

.field h:Landroid/app/ActivityManager;

.field i:Ljava/io/File;

.field j:Ljava/io/File;

.field k:Landroid/content/ComponentName;

.field l:Ljava/lang/String;

.field m:Landroid/content/Context;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:I

.field u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcn/guomob/android/intwal/Service01;->b:I

    const-string v0, ""

    sput-object v0, Lcn/guomob/android/intwal/Service01;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/guomob/android/intwal/Service01;->d:Ljava/util/Set;

    const/4 v0, 0x0

    sput-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcn/guomob/android/intwal/Service01;->g:I

    iput-object v1, p0, Lcn/guomob/android/intwal/Service01;->i:Ljava/io/File;

    iput-object v1, p0, Lcn/guomob/android/intwal/Service01;->j:Ljava/io/File;

    const-string v0, ""

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/guomob/android/intwal/Service01;->u:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mdParDevicedmsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tgGYN57645&%&^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mdParms1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/guomob/android/intwal/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "md1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "CHuin&*^%$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/guomob/android/intwal/Service01;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    sget-object v0, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    sput-object v0, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcn/guomob/android/intwal/Service01;->b:I

    iget v2, p0, Lcn/guomob/android/intwal/Service01;->g:I

    add-int/2addr v0, v2

    sput v0, Lcn/guomob/android/intwal/Service01;->b:I

    iget v0, p0, Lcn/guomob/android/intwal/Service01;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/guomob/android/intwal/Service01;->t:I

    :goto_0
    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->f:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->f:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->a:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->i:Ljava/io/File;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".listPackName.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->i:Ljava/io/File;

    :cond_3
    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->j:Ljava/io/File;

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".downName.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->j:Ljava/io/File;

    :cond_4
    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->i:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, ".listPackName.txt"

    const-string v3, "Serv01.250"

    invoke-static {v0, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_9

    :cond_5
    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->j:Ljava/io/File;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, ".downName.txt"

    const-string v3, "Serv.258"

    invoke-static {v0, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    :cond_6
    sget-object v0, Lcn/guomob/android/intwal/Service01;->d:Ljava/util/Set;

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v2, Lcn/guomob/android/intwal/GMUtils;->n:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "111="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "___222="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "__333="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/GMTestLog;->a(Ljava/lang/String;)V

    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    sget-object v0, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/Service01;->a(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/guomob/android/intwal/Service01;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/Service01;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packNameAndTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/guomob/android/intwal/Service01;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->l:Ljava/lang/String;

    sput-object v0, Lcn/guomob/android/intwal/Service01;->a:Ljava/lang/String;

    sput v1, Lcn/guomob/android/intwal/Service01;->b:I

    iput v1, p0, Lcn/guomob/android/intwal/Service01;->t:I

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lcn/guomob/android/intwal/GMUtils;->n:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcn/guomob/android/intwal/GMUtils;->b:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, "upTimeUrl"

    invoke-static {v1, v2}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/guomob/android/intwal/GMUtils;->b:Ljava/lang/String;

    :cond_0
    const-string v1, ""

    iget v1, p0, Lcn/guomob/android/intwal/Service01;->g:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string v1, "upTime"

    invoke-static {p0, v1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    iput v1, p0, Lcn/guomob/android/intwal/Service01;->g:I

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcn/guomob/android/intwal/Service01;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SendUp.msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    const-string v2, "sd2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/guomob/android/intwal/b;

    sget-object v2, Lcn/guomob/android/intwal/GMUtils;->b:Ljava/lang/String;

    new-instance v3, Lcn/guomob/android/intwal/ai;

    invoke-direct {v3, p0, p1}, Lcn/guomob/android/intwal/ai;-><init>(Lcn/guomob/android/intwal/Service01;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, v3}, Lcn/guomob/android/intwal/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcn/guomob/android/intwal/ah;)V

    invoke-virtual {v1}, Lcn/guomob/android/intwal/b;->a()V

    return-void

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/guomob/android/intwal/Service01;->g:I

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "gmbc1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gmbc1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gmbc1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "qing kong....."

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    const-string v1, ""

    iput-object v1, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, ".gmbc1.txt"

    const-string v3, ""

    const-string v4, "Serv01.422"

    invoke-static {v1, v2, v3, v4}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fu zhi....."

    invoke-static {v1}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v1, ".gmbc1.txt"

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    const-string v3, "Serv01.426"

    invoke-static {v0, v1, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "gmbc2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gmbc2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iput-object v1, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, ".gmbc2.txt"

    const-string v3, ""

    const-string v4, "Serv01.434"

    invoke-static {v1, v2, v3, v4}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v1, ".gmbc2.txt"

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    const-string v3, "Serv01.438"

    invoke-static {v0, v1, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "gmbc3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gmbc3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    iput-object v1, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, ".gmbc3.txt"

    const-string v3, ""

    const-string v4, "Serv01.446"

    invoke-static {v1, v2, v3, v4}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v1, ".gmbc3.txt"

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    const-string v3, "Serv01.450"

    invoke-static {v0, v1, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "gmbc4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "gmbc4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    iput-object v1, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v2, ".gmbc4.txt"

    const-string v3, ""

    const-string v4, "Serv01.458"

    invoke-static {v1, v2, v3, v4}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v1, ".gmbc4.txt"

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    const-string v3, "Serv01.462"

    invoke-static {v0, v1, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v2}, Lcn/guomob/android/intwal/GMUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v4, ".gmbc1.txt"

    const-string v5, "Ser.296"

    invoke-static {v3, v4, v5}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v4, ".gmbc2.txt"

    const-string v5, "Ser.300"

    invoke-static {v3, v4, v5}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v4, ".gmbc3.txt"

    const-string v5, "Ser.304"

    invoke-static {v3, v4, v5}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v4, ".gmbc4.txt"

    const-string v5, "Ser.308"

    invoke-static {v3, v4, v5}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/guomob/android/intwal/Service01;->n:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/guomob/android/intwal/Service01;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v0, v1}, Lcn/guomob/android/intwal/Service01;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->getCallBack(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v1, "GMscoreCall"

    invoke-static {v0, v1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/guomob/android/intwal/GMScoreCallBack;

    sput-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/guomob/android/intwal/Service01;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcn/guomob/android/intwal/aj;

    invoke-direct {v0, p0}, Lcn/guomob/android/intwal/aj;-><init>(Lcn/guomob/android/intwal/Service01;)V

    sput-object v0, Lcn/guomob/android/intwal/Service01;->e:Landroid/os/Handler;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c()V
    .locals 3

    sget-boolean v0, Lcn/guomob/android/intwal/GMUtils;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "go to sendBrocast1234"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/guomob/android/intwal/Service01;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "go to sendBrocast"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v2}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".guomob.action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    sget-object v1, Lcn/guomob/android/intwal/Service01;->e:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Lcn/guomob/android/intwal/ak;

    invoke-direct {v1, p0}, Lcn/guomob/android/intwal/ak;-><init>(Lcn/guomob/android/intwal/Service01;)V

    sput-object v1, Lcn/guomob/android/intwal/Service01;->e:Landroid/os/Handler;

    :cond_0
    sget-object v1, Lcn/guomob/android/intwal/Service01;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    iget v0, p0, Lcn/guomob/android/intwal/Service01;->u:I

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcn/guomob/android/intwal/Service01;->u:I

    :cond_0
    iget v0, p0, Lcn/guomob/android/intwal/Service01;->u:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->h:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->k:Landroid/content/ComponentName;

    iget-object v0, p0, Lcn/guomob/android/intwal/Service01;->k:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-class v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v1, "processState"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/Service01;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v4, v6, :cond_2

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v7

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v2

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "GMScoreMsg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v2}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".score.action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/Service01;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/Service01;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/guomob/android/intwal/Service01;->h:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcn/guomob/android/intwal/Service01;->b()V

    const-string v0, "create service01 is onCreate"

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0}, Lcn/guomob/android/intwal/Service01;->c()V

    sget-boolean v0, Lcn/guomob/android/intwal/GMUtils;->i:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/guomob/android/intwal/Service01;->a()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    sget-boolean v0, Lcn/guomob/android/intwal/GMUtils;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/guomob/android/intwal/Service01;->stopSelf()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
