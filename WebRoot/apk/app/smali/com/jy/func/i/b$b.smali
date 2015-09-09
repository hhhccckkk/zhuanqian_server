.class final Lcom/jy/func/i/b$b;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic aD:Lcom/jy/func/i/b;

.field public aE:Landroid/widget/ImageView;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jy/func/i/b;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "u"
    .parameter "i"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/jy/func/i/b$b;->url:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/jy/func/i/b$b;->aE:Landroid/widget/ImageView;

    .line 141
    return-void
.end method
