.class Lcom/hck/httpserver/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hck/httpserver/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inputStream"
    .parameter "fileName"
    .parameter "contentType"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/hck/httpserver/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    .line 311
    iput-object p2, p0, Lcom/hck/httpserver/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 312
    iput-object p3, p0, Lcom/hck/httpserver/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 313
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/hck/httpserver/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/hck/httpserver/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
