.class public final Lcom/jy/func/w/m$a;
.super Ljava/lang/Object;
.source "CYZRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/w/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "file"
    .parameter "contentType"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/jy/func/w/m$a;->file:Ljava/io/File;

    .line 394
    iput-object p2, p0, Lcom/jy/func/w/m$a;->contentType:Ljava/lang/String;

    .line 395
    return-void
.end method
