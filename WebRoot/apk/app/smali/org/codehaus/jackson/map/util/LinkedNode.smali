.class public final Lorg/codehaus/jackson/map/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final _next:Lorg/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/util/LinkedNode;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lorg/codehaus/jackson/map/util/LinkedNode;,"Lorg/codehaus/jackson/map/util/LinkedNode<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    .local p2, next:Lorg/codehaus/jackson/map/util/LinkedNode;,"Lorg/codehaus/jackson/map/util/LinkedNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_value:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_next:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 19
    return-void
.end method

.method public static contains(Lorg/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TST;>;TST;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, node:Lorg/codehaus/jackson/map/util/LinkedNode;,"Lorg/codehaus/jackson/map/util/LinkedNode<TST;>;"
    .local p1, value:Ljava/lang/Object;,"TST;"
    :goto_0
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 43
    :goto_1
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/util/LinkedNode;->next()Lorg/codehaus/jackson/map/util/LinkedNode;

    move-result-object p0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public next()Lorg/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lorg/codehaus/jackson/map/util/LinkedNode;,"Lorg/codehaus/jackson/map/util/LinkedNode<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_next:Lorg/codehaus/jackson/map/util/LinkedNode;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lorg/codehaus/jackson/map/util/LinkedNode;,"Lorg/codehaus/jackson/map/util/LinkedNode<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_value:Ljava/lang/Object;

    return-object v0
.end method
