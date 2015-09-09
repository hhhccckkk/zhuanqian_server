.class public Lcom/hck/zhuanqian/bean/MessageBean;
.super Ljava/lang/Object;
.source "MessageBean.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "content"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "time"
    .end annotation
.end field

.field private uid:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/MessageBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/MessageBean;->id:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/MessageBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/MessageBean;->uid:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/MessageBean;->content:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/MessageBean;->id:J

    .line 33
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/MessageBean;->time:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/MessageBean;->uid:J

    .line 41
    return-void
.end method
