.class public Lorg/codehaus/jackson/map/ext/DOMSerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "DOMSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 22
    const-class v2, Lorg/w3c/dom/Node;

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 25
    :try_start_0
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    .local v1, registry:Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    const-string v2, "LS"

    invoke-virtual {v1, v2}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/ls/DOMImplementationLS;

    iput-object v2, p0, Lorg/codehaus/jackson/map/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 30
    return-void

    .line 26
    .end local v1           #registry:Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate DOMImplementationRegistry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter "provider"
    .parameter "typeHint"

    .prologue
    .line 45
    const-string v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ext/DOMSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ext/DOMSerializer;->serialize(Lorg/w3c/dom/Node;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/w3c/dom/Node;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lorg/codehaus/jackson/map/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find DOM LS"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;

    invoke-interface {v1}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v0

    .line 38
    .local v0, writer:Lorg/w3c/dom/ls/LSSerializer;
    invoke-interface {v0, p1}, Lorg/w3c/dom/ls/LSSerializer;->writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 39
    return-void
.end method
