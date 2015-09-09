.class public Lcom/hck/zhuanqian/data/TuiGuangData;
.super Ljava/lang/Object;
.source "TuiGuangData.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private tuiGBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/TuiGBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "tgs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTuiGBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/TuiGBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hck/zhuanqian/data/TuiGuangData;->tuiGBeans:Ljava/util/List;

    return-object v0
.end method

.method public setTuiGBeans(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/TuiGBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, tuiGBeans:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/TuiGBean;>;"
    iput-object p1, p0, Lcom/hck/zhuanqian/data/TuiGuangData;->tuiGBeans:Ljava/util/List;

    .line 23
    return-void
.end method
