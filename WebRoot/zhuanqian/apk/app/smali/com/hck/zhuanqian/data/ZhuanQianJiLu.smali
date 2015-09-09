.class public Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
.super Ljava/lang/Object;
.source "ZhuanQianJiLu.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private orderBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/OrderBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "orders"
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
.method public getOrderBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/OrderBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->orderBeans:Ljava/util/List;

    return-object v0
.end method

.method public setOrderBeans(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hck/zhuanqian/bean/OrderBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, orderBeans:Ljava/util/List;,"Ljava/util/List<Lcom/hck/zhuanqian/bean/OrderBean;>;"
    iput-object p1, p0, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->orderBeans:Ljava/util/List;

    .line 23
    return-void
.end method
